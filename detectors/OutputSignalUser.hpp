#include <iostream>
#include <regex>
#include <string>
#include <unordered_set>
#include <vector>
#include <unordered_map>

#include "InfoCollector.hpp"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"

// Definition

using namespace llvm;

const std::string output_signal_reader_mark = "read_output_outter";
