#include "Backend/PikoBackend.hpp"

#include <ios>
#include <iostream>
#include <fstream>
#include <cstdio>      /* printf */
#include <stdlib.h>     /* system, NULL, EXIT_FAILURE */

#include "clang/CodeGen/CodeGenAction.h"
#include "clang/Basic/DiagnosticOptions.h"
#include "clang/Driver/Compilation.h"
#include "clang/Driver/Driver.h"
#include "clang/Driver/Tool.h"
#include "clang/Frontend/CompilerInstance.h"
#include "clang/Frontend/CompilerInvocation.h"
#include "clang/Frontend/FrontendDiagnostic.h"
#include "clang/Frontend/TextDiagnosticPrinter.h"
#include "llvm/ADT/SmallString.h"

#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IRReader/IRReader.h"
// #include "llvm/Transforms/IPO/AlwaysInliner.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/Transforms/IPO.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/Host.h"
#include "llvm/Support/ManagedStatic.h"
#include "llvm/Support/MemoryBuffer.h"
#include "llvm/Support/Path.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/SourceMgr.h"

using namespace clang;
using namespace clang::driver;

llvm::Module *LoadModule(llvm::StringRef bitcode, llvm::LLVMContext &context) {
  // parse it
  llvm::SMDiagnostic error;
  std::unique_ptr<llvm::Module> module =
    llvm::parseIRFile(bitcode, error, context);

  if(!module) {
    std::string what;
    llvm::raw_string_ostream os(what);
    error.print("error after ParseIR()", os);
    std::cerr << what;
  }

  return module.release();
}

bool PikoBackend::createLLVMModuleBySystem() {
  std::string path = pikocOptions.clangDir + "/clang++";
  CommandBuilder cmd(path);
  cmd.Push("-D__PIKOC__");
  cmd.Push("-D__PIKOC_DEVICE__");
  cmd.Push("-c");
  cmd.Push("-emit-llvm");

  std::string include("-I");
  auto include_cwd = include + pikocOptions.workingDir;
  // llvm::errs() << pikocOptions.workingDir.c_str() << "\n";
  cmd.Push(include_cwd.c_str());
  auto include_piko = include + pikocOptions.pikoIncludeDir;
  // llvm::errs() << pikocOptions.pikoIncludeDir.c_str() << "\n";
  cmd.Push(include_piko.c_str());
  auto include_res = include + pikocOptions.clangResourceDir;
  // llvm::errs() << pikocOptions.clangResourceDir.c_str() << "\n";
  cmd.Push(include_res.c_str());
  for(int i = 0; i < pikocOptions.includeDirs.size(); ++i) {
    cmd.Push(include + pikocOptions.includeDirs[i]);
  }
  cmd.Push("-o");

  std::string bitcodeName = pikocOptions.inFileName + ".bc";
  cmd.Push(bitcodeName);
  cmd.Push(pikocOptions.inFileName);

  llvm::errs() << "Invoke: " << cmd.ToString() << "\n";
  cmd.Execute();

  // std::ifstream bitcode("dummy.bc", std::ios_base::binary);
  this->module = LoadModule(bitcodeName, GlobalContext);

  if (this->module == nullptr) {
    llvm::errs() << "parsing errors.\n";
    return false;
  }
  return true;
}

bool PikoBackend::createLLVMModule() {
  // void *MainAddr = (void*) (intptr_t) GetExecutablePath;
  // std::string Path = pikocOptions.workingDir;
  std::string Path = "/home/cwz/llvm-root/build-5.0.0/bin/clang++";
  llvm::errs() << "Path=" << Path << "\n";

  llvm::IntrusiveRefCntPtr<DiagnosticOptions> DiagOpts = new DiagnosticOptions();
  TextDiagnosticPrinter *DiagClient =
    new TextDiagnosticPrinter(llvm::errs(), &*DiagOpts);

  IntrusiveRefCntPtr<DiagnosticIDs> DiagID(new DiagnosticIDs());
  DiagnosticsEngine Diags(DiagID, &*DiagOpts, DiagClient);

  // Use ELF on windows for now.
  std::string TripleStr = this->getTargetTriple() + "-" + "cuda";
  llvm::Triple T(TripleStr);

  Driver TheDriver(Path, T.str(), Diags);
  TheDriver.setTitle("PikoPipe");
  TheDriver.setCheckInputsExist(false);

  llvm::SmallVector<const char *, 32> Args(pikocOptions.Argv,
    pikocOptions.Argv + pikocOptions.Argc);
  // llvm::SmallVector<const char *, 32> Args;
  Args.push_back("-D__PIKOC__");
  Args.push_back("-D__PIKOC_DEVICE__");
  Args.push_back("-c");
  Args.push_back("-emit-llvm");
  Args.push_back("-xc++");

  std::string include("-I");
  auto include_cwd = include + pikocOptions.workingDir;
  // llvm::errs() << pikocOptions.workingDir.c_str() << "\n";
  Args.push_back(include_cwd.c_str());
  auto include_piko = include + pikocOptions.pikoIncludeDir;
  // llvm::errs() << pikocOptions.pikoIncludeDir.c_str() << "\n";
  // Args.push_back(include_piko.c_str());
  // args.push_back("-I");
  auto include_res = include + pikocOptions.clangResourceDir;
  // llvm::errs() << pikocOptions.clangResourceDir.c_str() << "\n";
  Args.push_back(include_res.c_str());
  for(int i = 0; i < pikocOptions.includeDirs.size(); ++i) {
    Args.push_back("-I");
    Args.push_back(pikocOptions.includeDirs[i].c_str());
  }
  // Args.push_back(pikocOptions.inFileName.c_str());

  std::unique_ptr<Compilation> C(TheDriver.BuildCompilation(Args));
  if (!C) {
    llvm::errs() << "Compilation has problem building it\n";
    return false;
  }

  const driver::JobList &Jobs = C->getJobs();
  if (Jobs.size() != 1 || !isa<driver::Command>(*Jobs.begin())) {
    SmallString<256> Msg;
    llvm::raw_svector_ostream OS(Msg);
    Jobs.Print(OS, "; ", true);
    Diags.Report(diag::err_fe_expected_compiler_job) << OS.str();
    return false;
  }

  const driver::Command &Cmd = cast<driver::Command>(*Jobs.begin());
  if (llvm::StringRef(Cmd.getCreator().getName()) != "clang") {
    Diags.Report(diag::err_fe_expected_clang_command);
    return false;
  }

  // Initialize a compiler invocation object from the clang (-cc1) arguments.
  const driver::ArgStringList &CCArgs = Cmd.getArguments();
  Cmd.Print(llvm::errs(), "\n", false);
  llvm::errs() << "nArgs=" << CCArgs.size() << "\n";
  llvm::errs() << "firstArg=" <<
    const_cast<const char **>(CCArgs.data())[0] << "\n";
  llvm::errs() << "lastArg=" <<
    const_cast<const char **>(CCArgs.data())[CCArgs.size() - 1] << "\n";
  std::unique_ptr<CompilerInvocation> CI(new CompilerInvocation);
  CompilerInvocation::CreateFromArgs(*CI,
                                     const_cast<const char **>(CCArgs.data()),
                                     const_cast<const char **>(CCArgs.data()) +
                                       CCArgs.size(),
                                     Diags);

  // Show the invocation, with -v.
  if (CI->getHeaderSearchOpts().Verbose) {
    llvm::errs() << "clang invocation:\n";
    Jobs.Print(llvm::errs(), "\n", true);
    llvm::errs() << "\n";
  }

  // FIXME: This is copied from cc1_main.cpp; simplify and eliminate.

  // Create a compiler instance to handle the actual work.
  CompilerInstance Clang;
  // Clang.setInvocation(std::move(CI));
  Clang.setInvocation(CI.get());
  Clang.getHeaderSearchOpts().ResourceDir = pikocOptions.clangResourceDir;

  // Create the compilers actual diagnostics engine.
  Clang.createDiagnostics();
  if (!Clang.hasDiagnostics())
    return false;

  llvm::LLVMContext& ctx = GlobalContext;

  // Create and execute the frontend to generate an LLVM bitcode module.
  llvm::errs() << "Codegen...\n";
  std::unique_ptr<CodeGenAction> Act(new EmitLLVMOnlyAction());
  if (!Clang.ExecuteAction(*Act)) {
    llvm::errs() << "Parsing erros...\n";
    return false;
  }

  if(Clang.getDiagnostics().hasErrorOccurred()) {
    llvm::errs() << "Parsing erros in diagnostics...\n";
    return false;
  }

  llvm::errs() << "Parsing seems fine...\n";
  this->module = Act->takeModule().get();

  return true;
}

bool PikoBackend::optimizeLLVMModule(int optLevel) {
  llvm::PassManagerBuilder   passBuilder;
  llvm::legacy::PassManager  modPassMgr;
  llvm::legacy::FunctionPassManager  fnPassMgr(module);

  passBuilder.OptLevel = optLevel;

  if(pikocOptions.inlineDevice) {
    // passBuilder.Inliner = llvm::createAlwaysInlinerLegacyPass();
    passBuilder.Inliner = llvm::createAlwaysInlinerPass();
  }

  passBuilder.populateFunctionPassManager(fnPassMgr);
  passBuilder.populateModulePassManager(modPassMgr);

  fnPassMgr.doInitialization();
  for(llvm::Module::iterator ii = module->begin(), ie = module->end();
      ii != ie; ++ii) {
    fnPassMgr.run(*ii);
  }

  fnPassMgr.doFinalization();

  modPassMgr.run(*module);

  return true;
}
