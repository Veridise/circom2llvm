#include "InfoCollector.hpp"

#include <iostream>
#include <memory>

std::regex number_suffix("(\\d+$)");

bool isTemplateInitFunc(llvm::Function *F) {
    return F->getName().startswith_insensitive(fn_template_prefix);
}

bool isBuildFunc(llvm::Function *F) {
    return F->getName().startswith_insensitive(fn_build_prefix);
}

bool isInputSiganlDefinedInst(llvm::Value *v) {
    if (isa<Signal>(v)) {
        auto inst = dyn_cast<llvm::Instruction>(v);
        return inst->getName().startswith_insensitive(input_signal_prefix) &&
               inst->getParent()->getName().startswith_insensitive("entry");
    } else {
        return false;
    }
}

bool isOutputSiganlDefinedInst(llvm::Value *v) {
    if (isa<Signal>(v)) {
        auto inst = dyn_cast<llvm::Instruction>(v);
        return inst->getParent()->getName().startswith_insensitive("exit");
    } else {
        return false;
    }
}

bool isComponent(llvm::Instruction *inst) {
    if (isa<ComponentInstance>(inst)) {
        ComponentInstance *called_inst = dyn_cast<ComponentInstance>(inst);
        return called_inst->getCalledFunction()
            ->getName()
            .startswith_insensitive(fn_build_prefix);
    } else {
        return false;
    }
}

bool isConstraint(llvm::Instruction *inst) {
    if (isa<Constraint>(inst)) {
        Constraint *called_inst = dyn_cast<Constraint>(inst);
        return called_inst->getCalledFunction()
            ->getName()
            .startswith_insensitive(fn_constraint_prefix);
    } else {
        return false;
    }
}

std::string canonicalizeTemplateName(llvm::Function *F) {
    std::string template_name = F->getName().str();
    if (template_name.rfind(fn_template_prefix, 0) == 0) {
        template_name.replace(0, fn_template_prefix.length(), "");
    }
    if (template_name.rfind(fn_build_prefix, 0) == 0) {
        template_name.replace(0, fn_build_prefix.length(), "");
    }
    return template_name;
}

std::string canonicalizeValueName(std::string s) {
    // Remove number suffix
    // E.g. out13 -> out
    return std::regex_replace(s, number_suffix, "");
}

Collector::Collector(llvm::Function *F) {
    if (isTemplateInitFunc(F)) {
        this->F = F;
    } else {
        std::cerr << "Error: This function isn't template function!";
    }
    this->template_name = canonicalizeTemplateName(F);
    this->locateInputSignals();
    this->locateOutputSignals();
    this->locateConstraints();
    this->locateComponents();
}

void Collector::locateInputSignals() {
    this->input_signals = Signals();
    for (auto &bb : F->getBasicBlockList()) {
        for (auto &inst : bb.getInstList()) {
            if (isInputSiganlDefinedInst(&inst)) {
                Signal *signal = dyn_cast<Signal>(&inst);
                this->input_signals.push_back(signal);
            }
        }
    }
}

int Collector::indexOfInputSignal(std::string s) {
    if (s == "") {
        return -1;
    }
    int res = -1;
    int index = 0;
    s = canonicalizeValueName(s);
    for (auto i : this->input_signals) {
        if (i->getName().endswith_insensitive(s)) {
            res = index;
            break;
        }
        index += 1;
    }
    return res;
}

bool Collector::isInputSignal(std::string s) {
    return this->indexOfInputSignal(s) >= 0;
}

std::string Collector::getNameOfInputSignal(Signal *i) {
    auto res = i->getName().str();
    // read_input_inner.temp.in -> temp.in
    res.replace(0, input_signal_prefix.length(), "");
    // temp.in -> in
    res.replace(0, template_name.length() + 1, "");
    return res;
}

void Collector::locateOutputSignals() {
    this->output_signals = Signals();
    for (auto &bb : F->getBasicBlockList()) {
        for (auto &inst : bb.getInstList()) {
            if (isOutputSiganlDefinedInst(&inst)) {
                Signal *signal = dyn_cast<Signal>(&inst);
                this->output_signals.push_back(signal);
            }
        }
    }
}

int Collector::indexOfOutputSignal(std::string s) {
    if (s == "") {
        return -1;
    }
    int res = -1;
    int index = 0;
    s = canonicalizeValueName(s);
    for (auto i : output_signals) {
        if (i->getOperand(0)->getName().endswith_insensitive(s)) {
            res = index;
            break;
        }
        index += 1;
    }
    return res;
}

bool Collector::isOutputSignal(std::string s) {
    return indexOfInputSignal(s) >= 0;
}

std::string Collector::getNameOfOutputSignal(Signal *o) {
    return o->getOperand(0)->getName().str();
}

void Collector::locateConstraints() {
    this->constraints = Constraints();
    for (auto &bb : F->getBasicBlockList()) {
        for (auto &inst : bb.getInstList()) {
            if (isConstraint(&inst)) {
                Constraint *constraint = dyn_cast<Constraint>(&inst);
                this->constraints.push_back(constraint);
            }
        }
    }
}

void Collector::locateComponents() {
    this->components = Components();
    for (auto &bb : F->getBasicBlockList()) {
        for (auto &inst : bb.getInstList()) {
            if (isComponent(&inst)) {
                ComponentInstance *component = dyn_cast<Constraint>(&inst);
                this->components.push_back(component);
            }
        }
    }
}
