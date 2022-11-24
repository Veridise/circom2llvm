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

using SignalLoader = llvm::LoadInst;
using SignalLoaders = std::vector<SignalLoader *>;

using SignalGEP = llvm::GetElementPtrInst;
using SignalGEPs = std::vector<SignalGEP *>;

using Constraint = llvm::CallInst;
using Constraints = std::vector<Constraint *>;

using ComponentInstance = llvm::CallInst;
using Components = std::vector<ComponentInstance *>;

using NameSet = std::unordered_set<std::string>;

const std::string fn_template_prefix = "fn_template_init_";
const std::string fn_build_prefix = "fn_template_build_";
const std::string fn_constraint_prefix = "fn_intrinsic_utils_constraint";
const std::string argument_mark = "arg_inner";
const std::string input_signal_mark = "input_inner";
const std::string inter_signal_mark = "inter_inner";
const std::string output_signal_mark = "output_inner";

bool isTemplateInitFunc(llvm::Function *F);
bool isBuildFunc(llvm::Function *F);
bool isArgumentDefinedInst(llvm::Instruction *inst);
bool isInputSiganlDefinedInst(llvm::Instruction *inst);
bool isInterSiganlDefinedInst(llvm::Instruction *inst);
bool isOutputSiganlDefinedInst(llvm::Instruction *inst);
bool isComponentDefinedInst(llvm::Instruction *inst);
bool isConstraintDefinedInst(llvm::Instruction *inst);
std::string canonicalizeTemplateName(llvm::Function *F);
std::vector<std::string> stringSplit(std::string s, std::string splitor, int times);
bool compareFunction(llvm::Function *F1, llvm::Function *F2);
std::vector<llvm::Function *> getOrderedFunctions(llvm::Module *M);

class Collector {
   private:
    void locateArguments();
    void locateInputSignals();
    void locateInterSignals();
    void locateOutputSignals();
    void locateConstraints();
    void locateComponents();

    std::string canonicalizeSignal(llvm::Value *v, std::string prefix,
                                   NameSet& nset);

   public:
    llvm::Function *F;
    std::string template_name;
    Constraints constraints;

    SignalLoaders arguments;
    SignalLoaders input_signals;
    SignalGEPs inter_signals;
    SignalGEPs output_signals;
    Components components;

    NameSet argument_names;
    NameSet input_signal_names;
    NameSet inter_signal_names;
    NameSet output_signal_names;
    NameSet component_names;

    Collector(llvm::Function *F);
    std::string getNameOfSignal(llvm::Value *v);
    std::string getNameOfTemplate(ComponentInstance *c);
    std::string canonicalizeArgument(llvm::Value *v);
    std::string canonicalizeInputSignal(llvm::Value *v);
    std::string canonicalizeInterSignal(llvm::Value *v);
    std::string canonicalizeOutputSignal(llvm::Value *v);
    std::pair<std::string, std::string> canonicalizeSignalOfComponent(
        llvm::Value *v);
    bool isArgument(llvm::Value *v);
    bool isInputSignal(llvm::Value *v);
    bool isInterSignal(llvm::Value *v);
    bool isOutputSignal(llvm::Value *v);
    bool isSignalOfComponent(llvm::Value *v);
    void print();
};
