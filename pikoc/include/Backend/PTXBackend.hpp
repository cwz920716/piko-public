#ifndef PTX_BACKEND_HPP
#define PTX_BACKEND_HPP

#include "Backend/PikoBackend.hpp"
#include "PikoSummary.hpp"
#include "PikocOptions.hpp"

#include <fstream>
#include <string>
#include <vector>

#include <nvvm.h>

#include "llvm/IR/Module.h"


#define PIKOPIPE_BC "__pikoCompiledPipe.bc"

class PTXBackend : public PikoBackend {
public:
  explicit PTXBackend(
      const PikocOptions& pikocOptions
    , PipeSummary& psum
    , std::vector< std::vector<stageSummary*> >& kernelList)
    : PikoBackend(pikocOptions, psum, kernelList)
  {}

  virtual bool optimizeLLVMModule(int optLevel) override;

  virtual bool emitDefines(std::ostream& outfile) override;
  virtual bool emitRunFunc(std::ostream& outfile) override;
  virtual bool emitDeviceCode(std::string filename) override;

  virtual bool emitAllocateFunc(std::ostream& outfile) override;
  virtual bool emitPrepareFunc(std::ostream& outfile) override;
  virtual bool emitRunSingleFunc(std::ostream& outfile) override;
  virtual bool emitDestroyFunc(std::ostream& outfile) override;

protected:
  virtual std::string getTargetTriple() override { return "nvptx64-nvidia-cuda"; }

private:
  bool emitBitcode(std::string filename);
  void writeKernelFunctionFetch(int kernelID, bool bAllocate, std::ostream& outfile);
  void writeKernelCalls(std::string tabs, std::ostream& outfile);
  void writeKernelRunner(int kernelID, std::string params, std::string tabs,
    std::ostream& outfile);
  bool printWarningsAndErrorsNVVM(nvvmProgram& program);
};

#endif // PTX_BACKEND_HPP
