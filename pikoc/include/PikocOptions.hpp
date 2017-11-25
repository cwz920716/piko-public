#ifndef PIKOC_OPTIONS_HPP
#define PIKOC_OPTIONS_HPP

#include "Backend/PikoTargets.hpp"

#include <string>
#include <vector>
#include <stdlib.h>     /* system, NULL, EXIT_FAILURE */

class PikocOptions {
public:
  int Argc;
  char **Argv;

  pikoc::Targets target;
  bool optimize;
  bool enableTimers;
  bool dumpIR;
  bool edit;
  bool inlineDevice;
  bool displayGrid;

  std::string osString;

  std::string workingDir;
  std::string clangDir;
  std::string clangResourceDir;
  std::string cudaDir;
  std::string cudaIncludeDir;
  std::string pikocDir;
  std::string pikoIncludeDir;
  std::string inFileName;

  int numRuns;
  int computeArch;

  std::vector<std::string> includeDirs;

  PikocOptions() {
    target = pikoc::PTX;
    optimize = false;
    enableTimers = false;
    dumpIR = false;
    edit = false;
    inlineDevice = false;
    displayGrid = false;

    numRuns = 1;
    computeArch = 35;
  }

  static void printOptions();
  static PikocOptions parseOptions(int argc, char *argv[]);
};

class CommandBuilder {
 public:
  CommandBuilder() {}
  CommandBuilder(std::string exec): line_(exec) {}

  CommandBuilder &Push(std::string arg) {
    line_ += " " + arg;
    return *this;
  }

  void Execute() {
    system(line_.c_str());
  }

  std::string ToString() const { return line_; }

 private:
  std::string line_;
};

#endif // PIKOC_OPTIONS_HPP
