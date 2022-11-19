#include <regex>
#include <string>
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

const std::string fn_template_prefix = "fn_template_init_";
const std::string fn_build_prefix = "fn_template_build_";
const std::string fn_constraint_prefix = "fn_intrinsic_add_constraint";
const std::string input_signal_prefix = "read_input_inner.";
const std::string output_signal_prefix = "write_output_inner.";

bool isTemplateInitFunc(llvm::Function *F);
bool isBuildFunc(llvm::Function *F);
bool isInputSiganlDefinedInst(llvm::Value *v);
bool isOutputSiganlDefinedInst(llvm::Value *v);
bool isComponent(llvm::Instruction *inst);
bool isConstraint(llvm::Instruction *inst);
std::string canonicalizeTemplateName(llvm::Function *F);
std::string canonicalizeValueName(std::string s);

class Collector {
   private:
    void locateInputSignals();
    void locateOutputSignals();
    void locateConstraints();
    void locateComponents();

   public:
    llvm::Function *F;
    Signals input_signals;
    Signals output_signals;
    Constraints constraints;
    Components components;
    std::string template_name;
    Collector(llvm::Function *F);
    int indexOfInputSignal(std::string s);
    bool isInputSignal(std::string s);
    std::string getNameOfInputSignal(Signal *i);
    int indexOfOutputSignal(std::string s);
    bool isOutputSignal(std::string s);
    std::string getNameOfOutputSignal(Signal *o);
};
