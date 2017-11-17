#ifndef PIKO_BACKEND_HPP
#define PIKO_BACKEND_HPP

#include "PikoSummary.hpp"
#include "PikocOptions.hpp"
#include "PikocParams.hpp"

#include <fstream>
#include <string>
#include <vector>

#include "llvm/IR/Module.h"

class PikoBackend {
public:
  explicit PikoBackend(
      const PikocOptions& pikocOptions
    , PipeSummary& psum
    , std::vector< std::vector<stageSummary*> >& kernelList)
    : pikocOptions(pikocOptions)
    , psum(psum)
    , kernelList(kernelList)
    , module(nullptr)
  {}

  virtual ~PikoBackend() {}

  virtual bool createLLVMModule();
  virtual bool optimizeLLVMModule(int optLevel);

  // TODO(wcui) what's the purpose of emits?
  virtual bool emitDefines(std::ostream& outfile) = 0;
  virtual bool emitRunFunc(std::ostream& outfile) = 0;
  virtual bool emitDeviceCode(std::string filename) = 0;

  virtual bool emitAllocateFunc(std::ostream& outfile) = 0;
  virtual bool emitPrepareFunc(std::ostream& outfile) = 0;
  virtual bool emitRunSingleFunc(std::ostream& outfile) = 0;
  virtual bool emitDestroyFunc(std::ostream& outfile) = 0;

protected:
  virtual std::string getTargetTriple() = 0;

  const PikocOptions& pikocOptions;
  PipeSummary& psum;
  std::vector< std::vector<stageSummary*> >& kernelList;
  llvm::Module* module;
  llvm::LLVMContext GlobalContext;
};

#endif // PIKO_BACKEND_HPP
