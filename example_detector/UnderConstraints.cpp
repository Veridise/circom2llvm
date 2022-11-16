#include <format>
#include <iostream>
#include <regex>
#include <string>
#include <unordered_set>
#include <vector>

#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"

using namespace llvm;

typedef llvm::LoadInst Signal;
typedef std::vector<Signal *> Signals;

typedef llvm::CallInst Constraint;
typedef std::vector<Constraint *> Constraints;

std::regex number_suffix("(\\d+$)");

bool compareFunction(llvm::Function *F1, llvm::Function *F2) {
    int i = F1->getName().str().compare(F2->getName().str());
    return i < 0;
}

namespace {
struct UnderConstraints : public ModulePass {
    static char ID;
    const std::string fn_template_prefix = "fn_template_init_";
    const std::string fn_constraint_prefix = "fn_intrinsic_add_constraint";
    const std::string input_signal_prefix = "read_input_inner.";
    const std::string output_signal_prefix = "write_output_inner.";
    std::string template_name;
    Signals input_signals;
    Signals output_signals;
    Constraints constraints;

    UnderConstraints() : ModulePass(ID) {}

    bool isTemplateInitFunc(llvm::Function *F) {
        return F->getName().startswith_insensitive(fn_template_prefix);
    }

    Signals locateOutputSignals(llvm::Function *F) {
        auto _output_signals = Signals();
        if (isTemplateInitFunc(F)) {
            for (auto &bb : F->getBasicBlockList()) {
                if (bb.getName().startswith_insensitive("exit")) {
                    for (auto &inst : bb.getInstList()) {
                        if (isa<Signal>(&inst)) {
                            Signal *signal = dyn_cast<Signal>(&inst);
                            _output_signals.push_back(signal);
                        }
                    }
                }
            }
        }
        return _output_signals;
    }

    Signals locateInputSignals(llvm::Function *F) {
        auto _input_signals = Signals();
        if (isTemplateInitFunc(F)) {
            for (auto &bb : F->getBasicBlockList()) {
                if (bb.getName().startswith_insensitive("entry")) {
                    for (auto &inst : bb.getInstList()) {
                        if (isa<Signal>(&inst)) {
                            Signal *potential_signal = dyn_cast<Signal>(&inst);
                            if (potential_signal->getName()
                                    .startswith_insensitive(
                                        input_signal_prefix)) {
                                _input_signals.push_back(potential_signal);
                            }
                        }
                    }
                }
            }
        }
        return _input_signals;
    }

    Constraints locateConstraints(llvm::Function *F) {
        auto _constraints = Constraints();
        if (isTemplateInitFunc(F)) {
            for (auto &bb : F->getBasicBlockList()) {
                for (auto &inst : bb.getInstList()) {
                    if (isa<Constraint>(&inst)) {
                        Constraint *potential_constraint =
                            dyn_cast<Constraint>(&inst);
                        if (potential_constraint->getCalledFunction()
                                ->getName()
                                .startswith_insensitive(fn_constraint_prefix)) {
                            _constraints.push_back(potential_constraint);
                        }
                    }
                }
            }
        }
        return _constraints;
    }

    int indexOfInputSignal(std::string s) {
        if (s == "") {
            return -1;
        }
        int res = -1;
        int index = 0;
        s = canonicalize_name(s);
        for (auto i : input_signals) {
            if (i->getName().endswith_insensitive(s)) {
                res = index;
                break;
            }
            index += 1;
        }
        return res;
    }

    bool isInputSignal(std::string s) { return indexOfInputSignal(s) >= 0; }

    std::string getNameInputSignal(size_t index) {
        auto res = input_signals[index]->getName().str();
        // read_input_inner.temp.in -> temp.in
        res.replace(0, input_signal_prefix.length(), "");
        // temp.in -> in
        res.replace(0, template_name.length(), "");

        return res;
    }

    int indexOfOutputSignal(std::string s) {
        if (s == "") {
            return -1;
        }
        int res = -1;
        int index = 0;
        s = canonicalize_name(s);
        for (auto i : output_signals) {
            if (i->getOperand(0)->getName().endswith_insensitive(s)) {
                res = index;
                break;
            }
            index += 1;
        }
        return res;
    }

    std::string getNameOutputSignal(size_t index) {
        return output_signals[index]->getOperand(0)->getName().str();
    }

    bool isOutputSignal(std::string s) { return indexOfInputSignal(s) >= 0; }

    std::string canonicalize_name(std::string s) {
        // Remove number suffix
        // E.g. out13 -> out
        return std::regex_replace(s, number_suffix, "");
    }

    std::vector<llvm::Instruction *> track_value_as_expression(llvm::Value *v) {
        auto res = std::vector<llvm::Instruction *>();
        if (isa<llvm::Instruction>(v)) {
            llvm::Instruction *inst = dyn_cast<llvm::Instruction>(v);
            res.push_back(inst);
            if (isa<llvm::BinaryOperator>(inst)) {
                for (auto &opd : inst->operands()) {
                    auto temp = track_value_as_expression(opd);
                    res.insert(std::end(res), std::begin(temp), std::end(temp));
                }
            }
        }
        return res;
    }

    bool runOnModule(Module &M) override {
        std::cerr << M.getSourceFileName();
        std::cerr << "\n";
        auto functions = std::vector<llvm::Function *>();
        for (auto &F : M.functions()) {
            llvm::Function *ptr = &F;
            functions.push_back(ptr);
        }
        llvm::sort(functions, compareFunction);
        for (auto F : functions) {
            if (!isTemplateInitFunc(F)) {
                continue;
            }
            input_signals = locateInputSignals(F);
            output_signals = locateOutputSignals(F);
            constraints = locateConstraints(F);

            std::string template_name = F->getName().str();

            template_name.replace(0, fn_template_prefix.length(), "");
            std::cerr << "Detecting: ";
            std::cerr << template_name;
            std::cerr << "\n";

            auto constrainted_output_names = std::unordered_set<std::string>();

            for (auto &constraint : constraints) {
                auto constraint_to = constraint->getArgOperand(0);
                auto constraint_from = constraint->getArgOperand(1);

                auto used_operands = track_value_as_expression(constraint_from);

                auto to_name = constraint_to->getName().str();
                to_name = canonicalize_name(to_name);

                // Output signal is under a constraint from input signal
                // Constraint_to: output signal
                // Constraint_from: An expression using input signal
                auto index = indexOfOutputSignal(to_name);
                if (index >= 0) {
                    auto o_name = getNameOutputSignal(index);
                    for (auto &opd : used_operands) {
                        auto opd_name = opd->getName().str();
                        if (isInputSignal(opd_name)) {
                            constrainted_output_names.insert(o_name);
                            break;
                        }
                    }
                }

                // Output signal is used to constrain the input signal
                // Constraint_to: input signal
                // Constraint_from: An expression using output signal
                if (isInputSignal(to_name)) {
                    for (auto &opd : used_operands) {
                        auto opd_name = opd->getName().str();
                        auto index = indexOfOutputSignal(opd_name);
                        if (index >= 0) {
                            auto o_name = getNameOutputSignal(index);
                            constrainted_output_names.insert(o_name);
                        }
                    }
                }
            };
            for (size_t i = 0; i < output_signals.size(); i++) {
                auto output_signal_name = getNameOutputSignal(i);
                if (!constrainted_output_names.count(output_signal_name)) {
                    std::cerr << "Unconstrainted output signal: ";
                    std::cerr << output_signal_name;
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