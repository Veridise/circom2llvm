#include <regex>
#include <string>
#include <unordered_set>
#include <utility>
#include <vector>

#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"

using namespace llvm;

using Signal = llvm::LoadInst;
using Signals = std::vector<Signal *>;

using Constraint = llvm::CallInst;
using Constraints = std::vector<Constraint *>;

using ComponentInstance = llvm::CallInst;
using Components = std::vector<ComponentInstance *>;

using NameSet = std::unordered_set<std::string>;

const std::string fn_template_prefix = "fn_template_init_";
const std::string fn_build_prefix = "fn_template_build_";
const std::string fn_constraint_prefix = "fn_intrinsic_add_constraint";
const std::string input_signal_prefix = "read_input_inner.";
const std::string output_signal_prefix = "write_output_inner.";

bool isTemplateInitFunc(llvm::Function *F);
bool isBuildFunc(llvm::Function *F);
bool isInputSiganlDefinedInst(llvm::Value *v);
bool isOutputSiganlDefinedInst(llvm::Value *v);
bool isComponentDefinedInst(llvm::Instruction *inst);
bool isConstraintDefinedInst(llvm::Instruction *inst);
std::string canonicalizeTemplateName(llvm::Function *F);
std::vector<std::string> stringSplit(std::string s, std::string splitor);

class Collector {
   private:
    void locateInputSignals();
    void locateOutputSignals();
    void locateConstraints();
    void locateComponents();

    std::string getNameOfInputSignal(Signal *i);
    std::string getNameOfOutputSignal(Signal *o);
    std::string getNameOfTemplate(ComponentInstance *c);

   public:
    llvm::Function *F;
    Signals input_signals;
    Signals output_signals;
    Constraints constraints;
    Components components;

    NameSet input_signal_names;
    NameSet output_signal_names;
    NameSet component_names;

    std::string template_name;
    Collector(llvm::Function *F);
    std::string canonicalizeInput(llvm::Value *v);
    std::string canonicalizeOutput(llvm::Value *v);
    std::pair<std::string, std::string> canonicalizeSignalOfComponent(
        llvm::Value *v);
    bool isInputSignal(llvm::Value *v);
    bool isOutputSignal(llvm::Value *v);
    bool isSignalOfComponent(llvm::Value *v);
    void print();
};
