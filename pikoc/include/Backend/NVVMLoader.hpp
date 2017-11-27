#ifndef NVVM_LOADER_HPP
#define NVVM_LOADER_HPP

#include <fstream>
#include <string>
#include <vector>

#include <stdio.h>
#include <string.h>
#include <sys/stat.h>

#include <nvvm.h>
#include "llvm/IR/Module.h"

typedef struct stat Stat;

enum PTXGENStatus {
  PTXGEN_SUCCESS                    = 0x0000,
  PTXGEN_FILE_IO_ERROR              = 0x0001,
  PTXGEN_BAD_ALLOC_ERROR            = 0x0002,
  PTXGEN_LIBNVVM_COMPILATION_ERROR  = 0x0004,
  PTXGEN_LIBNVVM_ERROR              = 0x0008,
  PTXGEN_INVALID_USAGE              = 0x0010,
  PTXGEN_LIBNVVM_HOME_UNDEFINED     = 0x0020,
  PTXGEN_LIBNVVM_VERIFICATION_ERROR = 0x0040
};

class NVVMLoader {
 public:
  NVVMLoader(std::string nvvm_home, int compute_arch = 35):
    nvvm_home_(nvvm_home), compute_arch_(compute_arch), ptx_(nullptr) {}

  PTXGENStatus Init() {
    /* Create the compiliation unit. */
    InitLibDeviceName();
    if (nvvmCreateProgram(&prog_) != NVVM_SUCCESS) {
      fprintf(stderr, "Failed to create the compilation unit\n");
      return PTXGEN_LIBNVVM_ERROR;
    }

    PTXGENStatus status = AddFile(libdevice_name_.c_str());
    if (status != PTXGEN_SUCCESS) {
      Destroy();
      return status;
    }

    return status;
  }

  void Destroy() {
    if (ptx_ != nullptr) {
      free(ptx_);
      ptx_ = nullptr;
    }

    /* Print warnings and errors. */
    PrintLog();
    /* Release the resources. */
    nvvmDestroyProgram(&prog_);
  }

  char *PTXString() const { return ptx_; }

  PTXGENStatus AddFile(const char *filename);
  PTXGENStatus GeneratePTX(int numOptions, const char **options,
                           bool dump = false);

 private:
  void InitLibDeviceName();
  PTXGENStatus PrintLog();

  std::string nvvm_home_;
  int compute_arch_;
  char *ptx_;
  std::string libdevice_name_;
  nvvmProgram prog_;
};

#endif  // NVVM_LOADER_HPP
