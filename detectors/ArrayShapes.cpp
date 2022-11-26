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
    if (!isa<Assignment>(inst)) {
        return false;
    }
    auto store_inst = dyn_cast<Assignment>(inst);
    auto source = store_inst->getOperand(0);
    return isArrayPtrTy(source->getType()) && dyn_cast<llvm::CallInst>(source);
}

bool isArrayElementAssignmentDefinedInst(llvm::Instruction* inst) {
    // clang-format off
    // %var1 = load [256 x i128]*, [256 x i128]** %var, align 8
    // %var_ptr = getelementptr inbounds [256 x i128], [256 x i128]* %var1, i128 0, i128 %i
    // %var_ele = load i128, i128* %var_ptr, align 4
    // %var_b1 = load [256 x i128]*, [256 x i128]** %var_b, align 8
    // %var_b_ptr = getelementptr inbounds [256 x i128], [256 x i128]* %var_b1, i128 0, i128 %i
    // store i128 %var_ele, i128* %var_b_ptr, align 4
    // clang-format on
    if (!isa<Assignment>(inst)) {
        return false;
    }
    auto store_inst = dyn_cast<Assignment>(inst);
    auto value = store_inst->getOperand(0);
    if (!isa<llvm::LoadInst>(value)) {
        return false;
    }
    auto source = dyn_cast<llvm::LoadInst>(value)->getOperand(0);
    auto dest = store_inst->getOperand(1);
    return trackArrayVariable(source) != nullptr &&
           trackArrayVariable(dest) != nullptr;
}

bool isAssertInst(llvm::Instruction* inst) {
    if (!isa<AssertDefinition>(inst)) {
        return false;
    }
    auto called_inst = dyn_cast<AssertDefinition>(inst);
    return called_inst->getCalledFunction()->getName().contains_insensitive(
        assert_mark);
}

llvm::Value* trackArrayVariable(llvm::Value* v) {
    if (!isa<GetElementPtrInst>(v)) {
        return nullptr;
    }
    auto ptr_inst = dyn_cast<GetElementPtrInst>(v);
    if (!ptr_inst->getSourceElementType()->isArrayTy()) {
        return nullptr;
    }
    auto value_source = ptr_inst->getOperand(0);
    if (!isa<llvm::LoadInst>(value_source)) {
        return nullptr;
    }
    auto load_inst = dyn_cast<llvm::LoadInst>(value_source);
    return load_inst->getOperand(0);
}

ArrayShapeCollector::ArrayShapeCollector(
    llvm::Function* F,
    std::unordered_map<std::string, ArrayShapeCollector*>* all_collectors) {
    this->func_name = F->getName().str();
    this->all_collectors = all_collectors;
    this->array_shapes = std::unordered_map<llvm::Value*, ArrayShape>();
    this->assert_values = std::vector<llvm::Value*>();
    this->array_equalities = std::vector<ArrayEquality>();

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
                auto store_inst = dyn_cast<Assignment>(&inst);
                ArrayEquality p = {store_inst->getOperand(0),
                                   store_inst->getOperand(1)};
                this->array_equalities.push_back(p);
            }
            if (isArrayElementAssignmentDefinedInst(&inst)) {
                auto store_inst = dyn_cast<Assignment>(&inst);
                auto value = store_inst->getOperand(0);
                auto source = dyn_cast<llvm::LoadInst>(value)->getOperand(0);
                auto dest = store_inst->getOperand(1);
                auto a = trackArrayVariable(source);
                auto b = trackArrayVariable(dest);
                ArrayEquality p = {a, b};
                this->array_equalities.push_back(p);
            }
            if (isAssertInst(&inst)) {
                auto assert_inst = dyn_cast<Assignment>(&inst);
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
    ArrayShape shorterShape;
    if (shapeA.size() > shapeB.size()) {
        shorterShape = shapeA;
    } else {
        shorterShape = shapeB;
    }
    bool same = true;
    for (size_t i = 0; i < shorterShape.size(); i++) {
        same = same && (shapeA[i] == shapeB[i]);
    }
    return same;
}

void ArrayShapeCollector::printShape(ArrayShape shape) {
    for (auto& dim : shape) {
        dim->print(errs());
        std::cerr << "; ";
    }
}

void ArrayShapeCollector::detect() {
    std::cerr << "Detecting: " << this->func_name << "\n";
    for (auto eql : this->array_equalities) {
        auto valA = eql.first;
        auto valB = eql.second;
        auto shapeA = this->getArrayShape(valA);
        auto shapeB = this->getArrayShape(valB);
        if (!this->compareShape(shapeA, shapeB)) {
            std::cerr << "    Array shape difference: \n";
            std::cerr << "    ValueA: " << valA->getName().str() << "\n";
            std::cerr << "    ShapeA: ";
            this->printShape(shapeA);
            std::cerr << "\n";

            std::cerr << "    ValueB: " << valB->getName().str() << "\n";
            std::cerr << "    ShapeB: ";
            this->printShape(shapeB);
            std::cerr << "\n";
        }
    }
    std::cerr << "\n";
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