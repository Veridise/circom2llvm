#include <iostream>
#include <unordered_set>
#include <string>

#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"

using namespace llvm;

bool compareFunction(llvm::Function* F1, llvm::Function* F2) {
    int i = F1->getName().str().compare(F2->getName().str());
    return i < 0;
}

namespace {
struct UnderConstraints : public ModulePass {
    static char ID;
    const char* fn_prefix = "fn_template_init_";
    UnderConstraints() : ModulePass(ID) {}

    bool isTemplateInitFunc(llvm::Function *F) {
        return F->getName().startswith_insensitive(fn_prefix);
    }

    std::vector<llvm::StoreInst *> locateOutputSignals(llvm::Function *F) {
        auto output_signals = std::vector<llvm::StoreInst *>();
        if (isTemplateInitFunc(F)) {
            for (auto &bb : F->getBasicBlockList()) {
                if (bb.getName().startswith_insensitive("exit")) {
                    for (auto &inst : bb.getInstList()) {
                        if (llvm::StoreInst *store_inst =
                                dyn_cast<llvm::StoreInst>(&inst)) {
                            output_signals.push_back(store_inst);
                        }
                    }
                }
            }
        }
        return output_signals;
    }

    std::vector<llvm::LoadInst *> locateInputSignals(llvm::Function *F) {
        auto input_signals = std::vector<llvm::LoadInst *>();
        if (isTemplateInitFunc(F)) {
            for (auto &bb : F->getBasicBlockList()) {
                if (bb.getName().startswith_insensitive("entry")) {
                    for (auto &inst : bb.getInstList()) {
                        if (llvm::LoadInst *load_inst =
                                dyn_cast<llvm::LoadInst>(&inst)) {
                            if (load_inst->getName().startswith_insensitive(
                                    "read_input_inner")) {
                                input_signals.push_back(load_inst);
                            }
                        }
                    }
                }
            }
        }
        return input_signals;
    }

    std::vector<llvm::CallInst *> locateConstraints(llvm::Function *F) {
        auto constraints = std::vector<llvm::CallInst *>();
        if (isTemplateInitFunc(F)) {
            for (auto &bb : F->getBasicBlockList()) {
                for (auto &inst : bb.getInstList()) {
                    if (llvm::CallInst *call_inst =
                            dyn_cast<llvm::CallInst>(&inst)) {
                        if (call_inst->getCalledFunction()
                                ->getName()
                                .startswith_insensitive(
                                    "fn_intrinsic_add_constraint")) {
                            constraints.push_back(call_inst);
                        }
                    }
                }
            }
        }
        return constraints;
    }

    bool runOnModule(Module &M) override {
        auto functions = std::vector<llvm::Function*>();
        for (auto &F: M.functions()) {
            llvm::Function* ptr = &F;
            functions.push_back(ptr);
        }
        llvm::sort(functions, compareFunction);
        for (auto F : functions) {
            if (!isTemplateInitFunc(F)) {
                continue;
            }
            auto output_signals = locateOutputSignals(F);
            auto input_signals = locateInputSignals(F);
            auto constraints = locateConstraints(F);

            std::cerr << "Detecting: ";
            std::string template_name = F->getName().str();
            template_name.replace(0, 17, "");
            std::cerr << template_name;
            std::cerr << "\n";

            auto input_signal_names = std::unordered_set<std::string>();
            for (auto &input_signal : input_signals) {
                input_signal_names.insert(input_signal->getName().str());
            };

            for (auto &output_signal : output_signals) {
                bool under_constraint_from_input = false;
                auto storeValue = output_signal->getValueOperand();
                if (isa<Constant>(storeValue)) {
                    continue;
                }
                for (auto &constraint : constraints) {
                    auto constraint_to = constraint->getArgOperand(0);
                    auto constraint_from = constraint->getArgOperand(1);
                    if (constraint_to->getName() == storeValue->getName()) {
                        for (auto use_iter = constraint_from->use_begin();
                             use_iter != constraint_from->use_end();
                             ++use_iter) {
                            if (llvm::Instruction *inst =
                                    dyn_cast<llvm::Instruction>(
                                        use_iter->get())) {
                                for (auto &opd : inst->operands()) {
                                    auto opd_name = opd->getName().str();
                                    if (input_signal_names.find(opd_name) !=
                                        input_signal_names.end()) {
                                        under_constraint_from_input = true;
                                    }
                                }
                            }
                        }
                    }
                }
                if (!under_constraint_from_input) {
                    std::cerr << "Invalid output signal: ";
                    std::cerr
                        << output_signal->getPointerOperand()->getName().str();
                    std::cerr << "\n";
                };
            }

            std::cerr << "\n";
        }
        return false;
    };
};
}  // namespace

char UnderConstraints::ID = 0;
static RegisterPass<UnderConstraints> X(
    "UnderConstraints",
    "Check whether all of output signals are under constraints.", false, false);