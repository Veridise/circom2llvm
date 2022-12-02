#include <regex>
#include <string>
#include <unordered_set>
#include <unordered_map>
#include <utility>
#include <vector>

#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"

using namespace llvm;

// AllocaInst or CallInst
using VariableInit = llvm::Instruction;
using Variables = std::vector<VariableInit *>;

using ConstraintInstance = llvm::CallInst;
using Constraints = std::vector<ConstraintInstance *>;

using ComponentInstance = llvm::CallInst;
using Components = std::vector<ComponentInstance *>;

using NameSet = std::unordered_set<std::string>;
using NameSetMap = std::unordered_map<std::string, NameSet>;

const std::string fn_template_prefix = "fn_template_init_";
const std::string fn_build_prefix = "fn_template_build_";
const std::string fn_constraint_prefix = "fn_intrinsic_utils_constraint";

enum class VariableTypeEnum {
    Argument,
    InputSignal,
    IntermediateSignal,
    OutputSignal,
    Component,
    Variable,
};

static const VariableTypeEnum VariableTypeAll[] = {
    VariableTypeEnum::Argument,           VariableTypeEnum::InputSignal,
    VariableTypeEnum::IntermediateSignal, VariableTypeEnum::OutputSignal,
    VariableTypeEnum::Component,          VariableTypeEnum::Variable,
};

VariableTypeEnum abbrToTypeEnum(std::string s);
std::string typeEnumToAbbr(VariableTypeEnum ve);

// template_name, is_read, is_inner
using VariableOperator = std::tuple<std::string, bool, bool>;

// operator_str, variable_name, type_enum
using VariableOpTuple = std::tuple<std::string, std::string, VariableTypeEnum>;

bool isTemplateInitFunc(llvm::Function *F);
bool isBuildFunc(llvm::Function *F);

bool locatesAtEntry(llvm::Instruction *inst);
bool locatesAtExit(llvm::Instruction *inst);

bool isArgumentDefinedInst(llvm::Instruction *inst);
bool isInputSiganlDefinedInst(llvm::Instruction *inst);
bool isInterSiganlDefinedInst(llvm::Instruction *inst);
bool isOutputSiganlDefinedInst(llvm::Instruction *inst);
bool isVariableDefinedInst(llvm::Instruction *inst);
bool isComponentDefinedInst(llvm::Instruction *inst);
bool isConstraintDefinedInst(llvm::Instruction *inst);

std::vector<std::string> stringSplit(std::string s, std::string splitor,
                                     int times);

bool isInitial(llvm::Instruction *inst);
bool isReadInnerSignal(llvm::Instruction *inst);
bool isReadOutterSignal(llvm::Instruction *inst);
bool isWriteInnerSignal(llvm::Instruction *inst);
bool isWriteOutterSignal(llvm::Instruction *inst);
bool isSignal(llvm::Instruction *inst);

VariableOpTuple extractVariable(llvm::Value *v);
bool isVarOp(std::string s);
VariableOperator resolveVarOp(std::string s);

std::string extractTemplateName(llvm::Function *F);
std::string extractTemplateName(ComponentInstance *c);
std::string extractTemplateName(llvm::Value *v);
std::string extractVariableName(llvm::Value *v);
std::pair<std::string, std::string> extractSignalOfComponent(llvm::Value *v);

bool compareFunction(llvm::Function *F1, llvm::Function *F2);
std::vector<llvm::Function *> getOrderedFunctions(llvm::Module *M);

class Collector {
   private:
    llvm::Function *F;
    std::string template_name;

   public:
    Constraints constraints;

    Variables arguments;
    Variables input_signals;
    Variables inter_signals;
    Variables output_signals;
    Variables variables;
    
    Components components;

    NameSet argument_names;
    NameSet input_signal_names;
    NameSet inter_signal_names;
    NameSet output_signal_names;
    NameSet variable_names;
    NameSet component_names;

    Collector(llvm::Function *F);
    std::string getName();
    void print();
};

std::vector<Collector *> getOrderedCollectors(
    std::vector<llvm::Function *> funcs);
