#include "InfoCollector.hpp"

#include <iostream>
#include <memory>

std::regex number_suffix("^\\d*$");

bool isTemplateInitFunc(llvm::Function *F) {
    return F->getName().startswith_insensitive(fn_template_prefix);
}

bool isBuildFunc(llvm::Function *F) {
    return F->getName().startswith_insensitive(fn_build_prefix);
}

bool isArgumentDefinedInst(llvm::Instruction *inst) {
    if (isa<SignalLoader>(inst)) {
        return inst->getName().contains_insensitive(argument_mark) &&
               inst->getParent()->getName().startswith_insensitive("entry");
    } else {
        return false;
    }
}

bool isInputSiganlDefinedInst(llvm::Instruction *inst) {
    if (isa<SignalLoader>(inst)) {
        return inst->getName().contains_insensitive(input_signal_mark) &&
               inst->getParent()->getName().startswith_insensitive("entry");
    } else {
        return false;
    }
}

bool isInterSiganlDefinedInst(llvm::Instruction *inst) {
    if (isa<SignalGEP>(inst)) {
        return inst->getName().contains_insensitive(inter_signal_mark) &&
               inst->getParent()->getName().startswith_insensitive("exit");
    } else {
        return false;
    }
}

bool isOutputSiganlDefinedInst(llvm::Instruction *inst) {
    if (isa<SignalGEP>(inst)) {
        return inst->getName().contains_insensitive(output_signal_mark) &&
               inst->getParent()->getName().startswith_insensitive("exit");
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
    this->constraints = Constraints();

    this->arguments = SignalLoaders();
    this->input_signals = SignalLoaders();
    this->inter_signals = SignalGEPs();
    this->output_signals = SignalGEPs();
    this->components = Components();

    this->argument_names = NameSet();
    this->input_signal_names = NameSet();
    this->inter_signal_names = NameSet();
    this->output_signal_names = NameSet();
    this->component_names = NameSet();

    this->locateArguments();
    this->locateInputSignals();
    this->locateInterSignals();
    this->locateOutputSignals();
    this->locateConstraints();
    this->locateComponents();
}

std::string Collector::getNameOfSignal(llvm::Value *v) {
    // %temp.in.read_input_inner = xxx
    auto origin_name = v->getName().str();
    auto res = stringSplit(origin_name, ".")[1];
    return res;
}

void Collector::locateArguments() {
    for (auto &bb : F->getBasicBlockList()) {
        for (auto &inst : bb.getInstList()) {
            if (isArgumentDefinedInst(&inst)) {
                SignalLoader *signal = dyn_cast<SignalLoader>(&inst);
                this->arguments.push_back(signal);
                this->argument_names.insert(this->getNameOfSignal(signal));
            }
        }
    }
}

void Collector::locateInputSignals() {
    for (auto &bb : F->getBasicBlockList()) {
        for (auto &inst : bb.getInstList()) {
            if (isInputSiganlDefinedInst(&inst)) {
                SignalLoader *signal = dyn_cast<SignalLoader>(&inst);
                this->input_signals.push_back(signal);
                this->input_signal_names.insert(this->getNameOfSignal(signal));
            }
        }
    }
}

void Collector::locateInterSignals() {
    for (auto &bb : F->getBasicBlockList()) {
        for (auto &inst : bb.getInstList()) {
            if (isInterSiganlDefinedInst(&inst)) {
                SignalGEP *signal = dyn_cast<SignalGEP>(&inst);
                this->inter_signals.push_back(signal);
                this->inter_signal_names.insert(this->getNameOfSignal(signal));
            }
        }
    }
}

void Collector::locateOutputSignals() {
    for (auto &bb : F->getBasicBlockList()) {
        for (auto &inst : bb.getInstList()) {
            if (isOutputSiganlDefinedInst(&inst)) {
                SignalGEP *signal = dyn_cast<SignalGEP>(&inst);
                this->output_signals.push_back(signal);
                this->output_signal_names.insert(this->getNameOfSignal(signal));
            }
        }
    }
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
    // %call = call %struct_template_circuit_temp* @fn_template_build_temp(i128 %0)
    auto origin_name = c->getCalledFunction()->getName().str();
    auto res = stringSplit(origin_name, "_")[3];
    return res;
}

std::string Collector::canonicalizeSignal(llvm::Value *v, std::string prefix,
                                          NameSet &nset) {
    llvm::StringRef canonicalizeName;
    // %temp.in.read_input_inner = xxx
    if (v->getName().contains(prefix)) {
        auto pair = v->getName().split(".");
        canonicalizeName = pair.second.split(".").first;
    } else {
        canonicalizeName = v->getName();
    }
    for (auto i : nset) {
        if (canonicalizeName.startswith_insensitive(i)) {
            auto left_str = canonicalizeName.ltrim(i).str();
            if (std::regex_match(left_str, number_suffix)) {
                return i;
            } else {
                return "";
            }
        }
    }
    return "";
}

std::string Collector::canonicalizeArgument(llvm::Value *v) {
    return this->canonicalizeSignal(v, argument_mark, this->argument_names);
}

std::string Collector::canonicalizeInputSignal(llvm::Value *v) {
    return this->canonicalizeSignal(v, input_signal_mark,
                                    this->input_signal_names);
}

std::string Collector::canonicalizeInterSignal(llvm::Value *v) {
    return this->canonicalizeSignal(v, inter_signal_mark,
                                    this->inter_signal_names);
}

std::string Collector::canonicalizeOutputSignal(llvm::Value *v) {
    return this->canonicalizeSignal(v, output_signal_mark,
                                    this->output_signal_names);
}

std::pair<std::string, std::string> Collector::canonicalizeSignalOfComponent(
    llvm::Value *v) {
    // %temp.in.read_output_outter = xxx
    auto v_name_sec = stringSplit(v->getName().str(), ".");
    if (v_name_sec.size() != 3) {
        return {"", ""};
    }
    for (auto i : this->component_names) {
        if (v_name_sec[0] == i) {
            return {v_name_sec[0], v_name_sec[1]};
        }
    }
    return {"", ""};
}

bool Collector::isArgument(llvm::Value *v) {
    return this->canonicalizeArgument(v) != "";
}

bool Collector::isInputSignal(llvm::Value *v) {
    return this->canonicalizeInputSignal(v) != "";
}

bool Collector::isInterSignal(llvm::Value *v) {
    return this->canonicalizeInterSignal(v) != "";
}

bool Collector::isOutputSignal(llvm::Value *v) {
    return this->canonicalizeOutputSignal(v) != "";
}

bool Collector::isSignalOfComponent(llvm::Value *v) {
    return this->canonicalizeSignalOfComponent(v).first != "";
}

void Collector::print() {
    std::cerr << "Template: " << this->template_name << "\n";
    std::cerr << "Arguments: \n";
    for (auto &i : this->argument_names) {
        std::cerr << i << "\n";
    }
    std::cerr << "Input Signals: \n";
    for (auto &i : this->input_signal_names) {
        std::cerr << i << "\n";
    }
    std::cerr << "Inter Signals: \n";
    for (auto &i : this->inter_signal_names) {
        std::cerr << i << "\n";
    }
    std::cerr << "Output Signals: \n";
    for (auto &i : this->output_signal_names) {
        std::cerr << i << "\n";
    }
    std::cerr << "Components: \n";
    for (auto &i : this->component_names) {
        std::cerr << i << "\n";
    }
    std::cerr << "\n";
}
