#include <unordered_set>
#include <iostream>

#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"

using namespace llvm;

namespace {
struct UnderConstraints : public ModulePass {
    static char ID;
    UnderConstraints() : ModulePass(ID) {}

    bool isTemplateInitFunc(llvm::Function &F) {
        return F.getName().startswith_insensitive("t_fn_init_");
    }

    std::vector<llvm::Value *> locateOutputSignals(llvm::Function &F) {
        std::vector<llvm::Value *> output_signals =
            std::vector<llvm::Value *>();
        if (isTemplateInitFunc(F)) {
            for (auto &bb : F.getBasicBlockList()) {
                if (bb.getName().startswith_insensitive("exit")) {
                    for (auto &inst : bb.getInstList()) {
                        if (isa<StoreInst>(inst)) {
                            output_signals.push_back(inst.getOperand(0));
                        }
                    }
                }
            }
        }
        return output_signals;
    }

    std::vector<llvm::LoadInst *> locateInputSignals(llvm::Function &F) {
        std::vector<llvm::LoadInst *> input_signals =
            std::vector<llvm::LoadInst *>();
        if (isTemplateInitFunc(F)) {
            for (auto &bb : F.getBasicBlockList()) {
                if (bb.getName().startswith_insensitive("entry")) {
                    for (auto &inst : bb.getInstList()) {
                        if (llvm::LoadInst *load_inst =
                                dyn_cast<llvm::LoadInst>(&inst)) {
                            input_signals.push_back(load_inst);
                        }
                    }
                }
            }
        }
        return input_signals;
    }

    std::vector<llvm::CallInst *> locateConstraints(llvm::Function &F) {
        std::vector<llvm::CallInst *> constraints =
            std::vector<llvm::CallInst *>();
        if (isTemplateInitFunc(F)) {
            for (auto &bb : F.getBasicBlockList()) {
                for (auto &inst : bb.getInstList()) {
                    if (llvm::CallInst *call_inst =
                            dyn_cast<llvm::CallInst>(&inst)) {
                        if (call_inst->getCalledFunction()
                                ->getName()
                                .startswith_insensitive(
                                    "intrinsic_add_constraint")) {
                            constraints.push_back(call_inst);
                        }
                    }
                }
            }
        }
        return constraints;
    }

    bool runOnModule(Module &M) override {
        auto output_signals = std::vector<llvm::Value *>();
        auto input_signals = std::vector<llvm::Value *>();
        auto constraints = std::vector<llvm::CallInst *>();
        for (auto &F : M.getFunctionList()) {
            auto temp_osigs = locateOutputSignals(F);
            output_signals.insert(std::end(output_signals),
                                  std::begin(temp_osigs),
                                  std::begin(temp_osigs));
            auto temp_isigs = locateInputSignals(F);
            input_signals.insert(std::end(input_signals),
                                 std::begin(temp_isigs),
                                 std::begin(temp_isigs));
            auto temp_cstrs = locateConstraints(F);
            constraints.insert(std::end(constraints), std::begin(temp_cstrs),
                               std::begin(temp_cstrs));
        }
        auto input_signal_names = std::unordered_set<std::string>();
        for (auto &input_signal : input_signals) {
            input_signal_names.insert(input_signal->getName().str());
        };
        for (auto &output_signal : output_signals) {
            bool under_constraint_from_input = false;
            for (auto &constraint : constraints) {
                auto constraint_to =
                    constraint->getCalledFunction()->getOperand(0);
                auto constraint_from =
                    constraint->getCalledFunction()->getOperand(1);
                if (constraint_to->getName() == output_signal->getName()) {
                    for (auto use = constraint_from->use_begin();
                         use != constraint_from->use_end(); ++use) {
                        if (Value *value = dyn_cast<Value>(*use)) {
                            if (input_signal_names.find(
                                    value->getName().str()) !=
                                input_signal_names.end()) {
                                under_constraint_from_input = true;
                            }
                        }
                    }
                }
            }
            if (!under_constraint_from_input) {
                std::cerr << "Imvalid output signal: ";
                std::cerr << output_signal->getName().str();
                std::cerr << "\n";
            };
        }
    };
};
}  // namespace

char UnderConstraints::ID = 0;
static RegisterPass<UnderConstraints> X(
    "UnderConstraints",
    "Check whether all of output signals are under constraints.", false, false);