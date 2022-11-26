#include "ArrayShapes.hpp"

bool isArrayPtrTy(llvm::Type* ty) {
    if (!isa<PointerType>(ty)) {
        return false;
    }
    auto ptr_ty = dyn_cast<PointerType>(ty);
    return ptr_ty->getElementType()->isArrayTy();
}

bool isArrayReturnFunction(llvm::Function* F) {
    auto ret_ty = F->getReturnType();
    return isArrayPtrTy(ret_ty);
}

bool isArrayShapeDefinedInst(llvm::Instruction* inst) {
    if (!isa<ArrayShapeDefinition>(inst)) {
        return false;
    }
    auto called_inst = dyn_cast<ArrayShapeDefinition>(inst);
    return called_inst->getCalledFunction()->getName().contains_insensitive(
               array_shape_mark) &&
           called_inst->getParent()->getName().startswith_insensitive(
               "arraydim");
}

bool isArrayAssignmentDefinedInst(llvm::Instruction* inst) {
    if (!isa<ArrayAssignment>(inst)) {
        return false;
    }
    auto store_inst = dyn_cast<ArrayAssignment>(inst);
    auto source = store_inst->getOperand(0);
    return isArrayPtrTy(source->getType()) && dyn_cast<llvm::CallInst>(source);
}

bool isAssertInst(llvm::Instruction* inst) {
    if (!isa<AssertDefinition>(inst)) {
        return false;
    }
    auto called_inst = dyn_cast<AssertDefinition>(inst);
    return called_inst->getCalledFunction()->getName().contains_insensitive(
        assert_mark);
}

ArrayShapeCollector::ArrayShapeCollector(
    llvm::Function* F,
    std::unordered_map<std::string, ArrayShapeCollector*>* all_collectors) {
    this->func_name = F->getName().str();
    this->all_collectors = all_collectors;
    this->array_shapes = std::unordered_map<llvm::Value*, ArrayShape>();
    this->assert_values = std::vector<llvm::Value*>();
    this->array_assignments = std::vector<ArrayAssignment*>();

    for (auto& bb : F->getBasicBlockList()) {
        for (auto& inst : bb.getInstList()) {
            if (isArrayShapeDefinedInst(&inst)) {
                auto called_inst = dyn_cast<ArrayShapeDefinition>(&inst);
                auto ptr = called_inst->getArgOperand(0);
                auto ptr_cast_inst = dyn_cast<llvm::Instruction>(ptr);
                auto array_val = ptr_cast_inst->getOperand(0);
                auto shape = ArrayShape();
                for (uint i = 0; i < called_inst->getNumArgOperands(); i++) {
                    if (i == 0) {
                        continue;
                    }
                    auto val = called_inst->getArgOperand(i);
                    shape.push_back(val);
                }
                this->array_shapes.insert({array_val, shape});
            }
            if (isArrayAssignmentDefinedInst(&inst)) {
                auto store_inst = dyn_cast<ArrayAssignment>(&inst);
                this->array_assignments.push_back(store_inst);
            }
            if (isAssertInst(&inst)) {
                auto assert_inst = dyn_cast<ArrayAssignment>(&inst);
                this->assert_values.push_back(assert_inst);
            }
        }
    }
}

ArrayShape ArrayShapeCollector::getFunctionArrayShape(llvm::Function* F) {
    ArrayShapeCollector* collector;
    if (this->all_collectors->count(F->getName().str())) {
        collector = this->all_collectors->at(F->getName().str());
    } else {
        collector = new ArrayShapeCollector(F, this->all_collectors);
        this->all_collectors->insert({collector->func_name, collector});
    }
    auto& last_bb = F->getBasicBlockList().back();
    auto& ret_val = last_bb.getInstList().back();
    return collector->getArrayShape(&ret_val);
}

ArrayShape ArrayShapeCollector::getArrayShape(llvm::Value* v) {
    if (this->array_shapes.count(v)) {
        return this->array_shapes.at(v);
    } else if (isa<llvm::LoadInst>(v) || isa<llvm::ReturnInst>(v)) {
        auto inst = dyn_cast<llvm::Instruction>(v);
        return this->getArrayShape(inst->getOperand(0));
    } else if (isa<llvm::CallInst>(v)) {
        auto called_inst = dyn_cast<llvm::CallInst>(v);
        return this->getFunctionArrayShape(called_inst->getCalledFunction());
    }
    return ArrayShape();
}

bool ArrayShapeCollector::compareShape(ArrayShape shapeA, ArrayShape shapeB) {
    if (shapeA.size() == 0 || shapeB.size() == 0) {
        return true;
    };
    if (shapeA.size() != shapeB.size()) {
        return false;
    }
    bool same = true;
    for (size_t i; i < shapeA.size(); i++) {
        same = same && (shapeA[i] == shapeB[i]);
    }
    return same;
}

void ArrayShapeCollector::printShape(ArrayShape shape) {
    for (auto& dim : shape) {
        std::cerr << dim->getName().str() << "; ";
    }
}

void ArrayShapeCollector::detect() {
    std::cerr << "Detecting: " << this->func_name << "\n";
    for (auto assign : this->array_assignments) {
        auto shapeA = this->getArrayShape(assign->getOperand(0));
        auto shapeB = this->getArrayShape(assign->getOperand(1));
        if (!this->compareShape(shapeA, shapeB)) {
            std::cerr << "    Array shape difference: \n";
            std::cerr << "    Assignment: " << assign->getName().str() << "\n";
            std::cerr << "    ShapeA: ";
            this->printShape(shapeA);
            std::cerr << "\n";
            std::cerr << "    ShapeB: ";
            this->printShape(shapeB);
            std::cerr << "\n";
        }
    }
}

namespace {
struct ArrayShapes : public ModulePass {
    static char ID;

    // Status
    std::vector<llvm::Function*> ordered_functions;

    std::unordered_map<std::string, Collector*> collectors;

    ArrayShapes() : ModulePass(ID) {}

    bool runOnModule(Module& M) override {
        std::cerr << M.getSourceFileName() << "\n";
        auto ordered_functions = getOrderedFunctions(&M);
        auto all_collectors =
            std::unordered_map<std::string, ArrayShapeCollector*>();
        for (auto F : ordered_functions) {
            if (all_collectors.count(F->getName().str())) {
                continue;
            }
            auto collector = new ArrayShapeCollector(F, &all_collectors);
            all_collectors.insert({collector->func_name, collector});
            collector->detect();
        }
        return false;
    };
};
}  // namespace

char ArrayShapes::ID = 0;
static RegisterPass<ArrayShapes> X(
    "ArrayShapes",
    "Detect whether all of output signals in a component are used or not.",
    false, false);