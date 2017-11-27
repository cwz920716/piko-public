#include "Backend/NVVMLoader.hpp"

#define LIBDEVICE_MAJOR_VERSION 1
#define LIBDEVICE_MINOR_VERSION 0

/* Two levels of indirection to stringify LIBDEVICE_MAJOR_VERSION and
 * LIBDEVICE_MINOR_VERSION correctly. */
#define getLibDeviceNameForArch(ARCH)                 \
  _getLibDeviceNameForArch(ARCH,                      \
                           LIBDEVICE_MAJOR_VERSION,   \
                           LIBDEVICE_MINOR_VERSION)
#define _getLibDeviceNameForArch(ARCH, MAJOR, MINOR)  \
  __getLibDeviceNameForArch(ARCH, MAJOR, MINOR)
#define __getLibDeviceNameForArch(ARCH, MAJOR, MINOR) \
  ("/libdevice/libdevice.compute_" #ARCH "." #MAJOR #MINOR ".bc")

void NVVMLoader::InitLibDeviceName() {
  std::string libnvvmPath = nvvm_home_;
  const char *libdevice   = NULL;

  /* Use libdevice for compute_20, if the target is not compute_20, compute_30,
   * or compute_35. */
  switch (compute_arch_) {
  default:
    libdevice = getLibDeviceNameForArch(20);
    break;
  case 30:
    libdevice = getLibDeviceNameForArch(30);
    break;
  case 35:
    libdevice = getLibDeviceNameForArch(35);
    break;
  }

  libdevice_name_ = libnvvmPath + libdevice;

  return;
}

PTXGENStatus NVVMLoader::AddFile(const char *filename) {
  char        *buffer;
  size_t       size;
  Stat         fileStat;

  /* Open the input file. */
  FILE *f = fopen(filename, "rb");
  if (f == NULL) {
    fprintf(stderr, "Failed to open %s\n", filename);
    return PTXGEN_FILE_IO_ERROR;
  }

  /* Allocate buffer for the input. */
  fstat(fileno(f), &fileStat);
  buffer = (char *) malloc(fileStat.st_size);
  if (buffer == NULL) {
    fprintf(stderr, "Failed to allocate memory\n");
    return PTXGEN_BAD_ALLOC_ERROR;
  }
  size = fread(buffer, 1, fileStat.st_size, f);
  if (ferror(f)) {
    fprintf(stderr, "Failed to read %s\n", filename);
    fclose(f);
    free(buffer);
    return PTXGEN_FILE_IO_ERROR;
  }
  fclose(f);

  if (nvvmAddModuleToProgram(prog_, buffer, size, filename) != NVVM_SUCCESS) {
    fprintf(stderr,
            "Failed to add the module %s to the compilation unit\n",
            filename);
    free(buffer);
    return PTXGEN_LIBNVVM_ERROR;
  }

  free(buffer);
  return PTXGEN_SUCCESS;
}

PTXGENStatus NVVMLoader::PrintLog() {
  PTXGENStatus status = PTXGEN_SUCCESS;

  size_t logSize;
  char  *log;
  if (nvvmGetProgramLogSize(prog_, &logSize) != NVVM_SUCCESS) {
    fprintf(stderr, "Failed to get the compilation log size\n");
    status = PTXGEN_LIBNVVM_ERROR;
  } else {
    log = (char *) malloc(logSize);
    if (log == nullptr) {
      fprintf(stderr, "Failed to allocate memory\n");
      status = PTXGEN_BAD_ALLOC_ERROR;
    } else if (nvvmGetProgramLog(prog_, log) != NVVM_SUCCESS) {
      fprintf(stderr, "Failed to get the compilation log\n");
      status = PTXGEN_LIBNVVM_ERROR;
    } else {
      fprintf(stderr, "%s\n", log);
    }
    free(log);
  }

  return status;
}

PTXGENStatus NVVMLoader::GeneratePTX(int numOptions, const char **options,
                                     bool dump) {
  PTXGENStatus status = PTXGEN_SUCCESS;

  /* Verify the compilation unit. */
  if (nvvmVerifyProgram(prog_, numOptions, options) != NVVM_SUCCESS) {
    fprintf(stderr, "Failed to verify the compilation unit\n");
    status = PTXGEN_LIBNVVM_VERIFICATION_ERROR;
    Destroy();
    return status;
  }
  
  /* Compile the compilation unit. */
  if (nvvmCompileProgram(prog_, numOptions, options) != NVVM_SUCCESS) {
    fprintf(stderr, "Failed to generate PTX from the compilation unit\n");
    status = PTXGEN_LIBNVVM_COMPILATION_ERROR;
  } else {
    size_t ptxSize = 0;
    if (nvvmGetCompiledResultSize(prog_, &ptxSize) != NVVM_SUCCESS) {
      fprintf(stderr, "Failed to get the PTX output size\n");
      status = PTXGEN_LIBNVVM_ERROR;
    } else {
      ptx_ = (char *) malloc(ptxSize);
      if (ptx_ == nullptr) {
        fprintf(stderr, "Failed to allocate memory\n");
        status = PTXGEN_BAD_ALLOC_ERROR;
      } else if (nvvmGetCompiledResult(prog_, ptx_) != NVVM_SUCCESS) {
        fprintf(stderr, "Failed to get the PTX output\n");
        status = PTXGEN_LIBNVVM_ERROR;
      } else if (dump) {
        fprintf(stdout, "%s\n", ptx_);
      }
    }
  }

  if (status != PTXGEN_SUCCESS) {
    Destroy();
    return status;
  }

  return PTXGEN_SUCCESS;
}

