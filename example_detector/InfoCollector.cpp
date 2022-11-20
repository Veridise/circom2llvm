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

bool isComponentDefinedInst(llvm::Instruction *inst) {
    if (isa<ComponentInstance>(inst)) {
        ComponentInstance *called_inst = dyn_cast<ComponentInstance>(inst);
        return called_inst->getCalledFunction()
            ->getName()
            .startswith_insensitive(fn_build_prefix);
    } else {
        return false;
    }
}

bool isConstraintDefinedInst(llvm::Instruction *inst) {
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

std::vector<std::string> stringSplit(std::string s, std::string splitor) {
    auto res = std::vector<std::string>();
    size_t pos = 0;
    while ((pos = s.find(splitor)) != std::string::npos) {
        res.push_back(s.substr(0, pos));
        s.erase(0, pos + splitor.length());
    }
    res.push_back(s);
    return res;
}

Collector::Collector(llvm::Function *F) {
    if (isTemplateInitFunc(F)) {
        this->F = F;
    } else {
        std::cerr << "Error: This function isn't template function!";
    }
    this->template_name = canonicalizeTemplateName(F);
    this->input_signals = Signals();
    this->output_signals = Signals();
    this->constraints = Constraints();
    this->components = Components();
    this->input_signal_names = NameSet();
    this->output_signal_names = NameSet();
    this->component_names = NameSet();

    this->locateInputSignals();
    this->locateOutputSignals();
    this->locateConstraints();
    this->locateComponents();
}

void Collector::locateInputSignals() {
    for (auto &bb : F->getBasicBlockList()) {
        for (auto &inst : bb.getInstList()) {
            if (isInputSiganlDefinedInst(&inst)) {
                Signal *signal = dyn_cast<Signal>(&inst);
                this->input_signals.push_back(signal);
                this->input_signal_names.insert(
                    this->getNameOfInputSignal(signal));
            }
        }
    }
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
    for (auto &bb : F->getBasicBlockList()) {
        for (auto &inst : bb.getInstList()) {
            if (isOutputSiganlDefinedInst(&inst)) {
                Signal *signal = dyn_cast<Signal>(&inst);
                this->output_signals.push_back(signal);
                this->output_signal_names.insert(
                    this->getNameOfOutputSignal(signal));
            }
        }
    }
}

std::string Collector::getNameOfOutputSignal(Signal *o) {
    // %out1 = load i128, i128* %out, align 4
    return o->getOperand(0)->getName().str();
}

void Collector::locateConstraints() {
    for (auto &bb : F->getBasicBlockList()) {
        for (auto &inst : bb.getInstList()) {
            if (isConstraintDefinedInst(&inst)) {
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
            if (isComponentDefinedInst(&inst)) {
                ComponentInstance *component = dyn_cast<Constraint>(&inst);
                this->components.push_back(component);
                this->component_names.insert(
                    this->getNameOfTemplate(component));
            }
        }
    }
}

std::string Collector::getNameOfTemplate(ComponentInstance *c) {
    // %call = call %struct_template_circuit_num2bits*
    // @fn_template_build_num2bits(i128 %add)
    auto origin_name = c->getCalledFunction()->getName().str();
    auto res = stringSplit(origin_name, "_")[3];
    return res;
}

std::string Collector::canonicalizeInput(llvm::Value *v) {
    for (auto i : this->input_signal_names) {
        if (v->getName().startswith_insensitive(i)) {
            return i;
        }
    }
    return "";
}

std::string Collector::canonicalizeOutput(llvm::Value *v) {
    for (auto i : this->output_signal_names) {
        if (v->getName().startswith_insensitive(i)) {
            return i;
        }
    }
    return "";
}

std::pair<std::string, std::string> Collector::canonicalizeSignalOfComponent(
    llvm::Value *v) {
    auto v_name_sec = stringSplit(v->getName().str(), ".");
    if (v_name_sec.size() != 3) {
        return {"", ""};
    }
    for (auto i : this->component_names) {
        if (v_name_sec[1] == i) {
            return {v_name_sec[1], v_name_sec[2]};
        }
    }
    return {"", ""};
}

bool Collector::isInputSignal(llvm::Value *v) {
    return this->canonicalizeInput(v) != "";
}

bool Collector::isOutputSignal(llvm::Value *v) {
    return this->canonicalizeOutput(v) != "";
}

bool Collector::isSignalOfComponent(llvm::Value *v) {
    return this->canonicalizeSignalOfComponent(v).first != "";
}

void Collector::print() {
    std::cerr << "Template: " << this->template_name << "\n";
    std::cerr << "Inputs: \n";
    for (auto &i: this->input_signal_names) {
        std::cerr << i << "\n";
    }
    std::cerr << "Outputs: \n";
    for (auto &i: this->output_signal_names) {
        std::cerr << i << "\n";
    }
    std::cerr << "Components: \n";
    for (auto &i: this->component_names) {
        std::cerr << i << "\n";
    }
}
