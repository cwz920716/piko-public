#ifndef CPU_BACKEND_HPP
#define CPU_BACKEND_HPP

#include "Backend/PikoBackend.hpp"
#include "PikoSummary.hpp"
#include "PikocOptions.hpp"

#include <fstream>
#include <string>
#include <vector>

#include "llvm/IR/Module.h"

class CPUBackend : public PikoBackend {
public:
  explicit CPUBackend(
      const PikocOptions& pikocOptions
    , PipeSummary& psum
    , std::vector< std::vector<stageSummary*> >& kernelList)
    : PikoBackend(pikocOptions, psum, kernelList)
  {}

  virtual bool createLLVMModule() override { return true; }
  virtual bool optimizeLLVMModule(int optLevel) override;

  virtual bool emitDefines(std::ostream& outfile) override;
  virtual bool emitRunFunc(std::ostream& outfile) override;
  virtual bool emitDeviceCode(std::string filename) override;

  virtual bool emitAllocateFunc(std::ostream& outfile) override;
  virtual bool emitPrepareFunc(std::ostream& outfile) override;
  virtual bool emitRunSingleFunc(std::ostream& outfile) override;
  virtual bool emitDestroyFunc(std::ostream& outfile) override;

protected:
  virtual std::string getTargetTriple() override { return "x86_64-pc"; }

private:
  void writeKernelCalls(std::string tabs, std::ostream& outfile);
  void writeKernelRunner(int kernelID, std::string params, std::string tabs,
    std::ostream& outfile, bool parallel);
};

#endif // CPU_BACKEND_HPP
