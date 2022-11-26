#include <iostream>
#include <regex>
#include <string>
#include <unordered_map>
#include <vector>

#include "InfoCollector.hpp"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"

using ArrayShapeDefinition = llvm::CallInst;
using ArrayAssignment = llvm::StoreInst;
using ArrayShape = std::vector<llvm::Value*>;

using AssertDefinition = llvm::CallInst;

bool isArrayPtrTy(llvm::Type* ty);
bool isArrayReturnFunction(llvm::Function* F);

bool isArrayShapeDefinedInst(llvm::Instruction* inst);
bool isArrayAssignmentDefinedInst(llvm::Instruction* inst);
bool isAssertInst(llvm::Instruction* inst);

const std::string array_shape_mark = "fn_intrinsic_utils_arraydim";
const std::string assert_mark = "fn_intrinsic_utils_assert";

class ArrayShapeCollector {
   private:
   public:
    ArrayShapeCollector(
        llvm::Function* F,
        std::unordered_map<std::string, ArrayShapeCollector*>* collectors);
    std::unordered_map<std::string, ArrayShapeCollector*>* all_collectors;
    std::string func_name;
    std::unordered_map<llvm::Value*, ArrayShape> array_shapes;
    std::vector<llvm::Value*> assert_values;
    std::vector<ArrayAssignment*> array_assignments;

    ArrayShape getFunctionArrayShape(llvm::Function* F);
    ArrayShape getArrayShape(llvm::Value* v);
    bool compareShape(ArrayShape shapeA, ArrayShape shapeB);
    void printShape(ArrayShape shape);
    void detect();
};
