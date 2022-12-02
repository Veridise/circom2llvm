#include "InfoCollector.hpp"

#include <iostream>
#include <memory>

std::regex number_suffix("\\d*$");

std::string typeEnumToAbbr(VariableTypeEnum ve) {
    switch (ve) {
        case VariableTypeEnum::Argument:
            return "arg";
        case VariableTypeEnum::InputSignal:
            return "input";
        case VariableTypeEnum::IntermediateSignal:
            return "inter";
        case VariableTypeEnum::OutputSignal:
            return "output";
        case VariableTypeEnum::Component:
            return "comp";
        case VariableTypeEnum::Variable:
            return "var";
    }
}

VariableTypeEnum abbrToTypeEnum(std::string s) {
    for (auto ve : VariableTypeAll) {
        if (typeEnumToAbbr(ve) == s) {
            return ve;
        }
    }
    std::cerr << "Invalid type enum string! " << s << "\n";
}

bool isTemplateInitFunc(llvm::Function *F) {
    return F->getName().startswith_insensitive(fn_template_prefix);
}

bool isBuildFunc(llvm::Function *F) {
    return F->getName().startswith_insensitive(fn_build_prefix);
}

bool locatesAtEntry(llvm::Instruction *inst) {
    return inst->getParent()->getName().startswith("entry");
}

bool locatesAtExit(llvm::Instruction *inst) {
    return inst->getParent()->getName().startswith("exit");
}

bool isArgumentDefinedInst(llvm::Instruction *inst) {
    if (isa<VariableInit>(inst)) {
        return inst->getName().contains(".arg") && locatesAtEntry(inst);
    }
    return false;
}

bool isInputSiganlDefinedInst(llvm::Instruction *inst) {
    if (isa<VariableInit>(inst)) {
        return inst->getName().contains(".input") &&
               (isReadInnerSignal(inst) || isInitial(inst)) &&
               locatesAtEntry(inst);
    }
    return false;
}

bool isInterSiganlDefinedInst(llvm::Instruction *inst) {
    if (isa<VariableInit>(inst)) {
        return inst->getName().contains(".inter") && locatesAtEntry(inst);
    }
    return false;
}

bool isOutputSiganlDefinedInst(llvm::Instruction *inst) {
    if (isa<VariableInit>(inst)) {
        return inst->getName().contains(".output") && isInitial(inst) &&
               locatesAtEntry(inst);
    }
    return false;
}

bool isVariableDefinedInst(llvm::Instruction *inst) {
    if (isa<VariableInit>(inst)) {
        return inst->getName().contains(".var") && locatesAtEntry(inst);
    }
    return false;
}

bool isComponentDefinedInst(llvm::Instruction *inst) {
    if (isa<ComponentInstance>(inst)) {
        ComponentInstance *called_inst = dyn_cast<ComponentInstance>(inst);
        llvm::Function *F = called_inst->getCalledFunction();
        return F->getName().startswith(fn_build_prefix);
    } else {
        return false;
    }
}

bool isConstraintDefinedInst(llvm::Instruction *inst) {
    if (isa<ConstraintInstance>(inst)) {
        ConstraintInstance *called_inst = dyn_cast<ConstraintInstance>(inst);
        llvm::Function *F = called_inst->getCalledFunction();
        return F->getName().startswith(fn_constraint_prefix);
    } else {
        return false;
    }
}

std::vector<std::string> stringSplit(std::string s, std::string splitor,
                                     int times = INT_MAX) {
    auto res = std::vector<std::string>();
    size_t pos = 0;
    while (((pos = s.find(splitor)) != std::string::npos) && (times > 0)) {
        res.push_back(s.substr(0, pos));
        s.erase(0, pos + splitor.length());
        times -= 1;
    }
    res.push_back(s);
    return res;
}

bool isInitial(llvm::Instruction *inst) {
    return inst->getName().contains("initial.");
};

bool isReadInnerSignal(llvm::Instruction *inst) {
    return inst->getName().contains("read_inner.");
}
bool isReadOutterSignal(llvm::Instruction *inst) {
    return inst->getName().contains("read_outter.");
}
bool isWriteInnerSignal(llvm::Instruction *inst) {
    return inst->getName().contains("write_inner.");
}
bool isWriteOutterSignal(llvm::Instruction *inst) {
    return inst->getName().contains("write_outter.");
}

bool isSignal(llvm::Instruction *inst) {
    return isReadInnerSignal(inst) || isReadOutterSignal(inst) ||
           isWriteInnerSignal(inst) || isWriteOutterSignal(inst);
}

VariableOpTuple extractVariable(llvm::Value *v) {
    // clang-format off
    // %temp_read_inner.in.input = xxx
    // %initial.out.output = xxx
    // clang-format on
    auto name = v->getName().str();
    auto res = stringSplit(name, ".", 2);
    if (res.size() != 3) {
        std::cerr << "Invalid Variable Operator" << name;
    }
    auto op = res[0];
    auto variable_name = res[1];
    auto ty_enum_str = res[2];
    ty_enum_str = std::regex_replace(ty_enum_str, number_suffix, "");
    auto ty_enum = abbrToTypeEnum(ty_enum_str);
    VariableOpTuple res_t(op, variable_name, ty_enum);
    return res_t;
}

bool isVarOp(std::string s) {
    auto res = stringSplit(s, "_", 2);
    return res.size() == 3;
}

VariableOperator resolveVarOp(std::string s) {
    // clang-format off
    // temp_read_inner
    // clang-format on
    if (isVarOp(s)) {
        auto res = stringSplit(s, "_", 2);
        auto templ_name = res[0];
        auto is_read = res[1] == "read";
        auto is_inner = res[2] == "inner";
        VariableOperator var_op_t(templ_name, is_read, is_inner);
        return var_op_t;
    };
    std::cerr << "Invalid variable operator string! " << s << "\n";
}

std::string extractTemplateName(llvm::Function *F) {
    // clang-format off
  // @fn_template_init_num2bitsneg
    // clang-format on
    std::string template_name = F->getName().str();
    if (template_name.rfind(fn_template_prefix, 0) == 0) {
        template_name.replace(0, fn_template_prefix.length(), "");
    }
    if (template_name.rfind(fn_build_prefix, 0) == 0) {
        template_name.replace(0, fn_build_prefix.length(), "");
    }
    return template_name;
}

std::string extractTemplateName(ComponentInstance *c) {
    // clang-format off
    // %call = call %struct_template_circuit_temp* @fn_template_build_temp(i128 %0)
    // clang-format on
    auto origin_name = c->getCalledFunction()->getName().str();
    auto res = stringSplit(origin_name, "_", 3)[3];
    return res;
}

std::string extractTemplateName(std::string s) {
    return std::get<0>(resolveVarOp(s));
}

std::string extractVariableName(llvm::Value *v) {
    return std::get<1>(extractVariable(v));
}

std::pair<std::string, std::string> extractSignalOfComponent(llvm::Value *v) {
    auto res = extractVariable(v);
    auto templ_name = extractTemplateName(std::get<0>(res));
    std::pair<std::string, std::string> p = {templ_name, std::get<1>(res)};
    return p;
}

bool compareFunction(llvm::Function *F1, llvm::Function *F2) {
    int i = F1->getName().str().compare(F2->getName().str());
    return i < 0;
}

std::vector<llvm::Function *> getOrderedFunctions(llvm::Module *M) {
    auto ordered_functions = std::vector<llvm::Function *>();
    for (auto &F : M->functions()) {
        llvm::Function *ptr = &F;
        ordered_functions.push_back(ptr);
    }
    llvm::sort(ordered_functions, compareFunction);
    return ordered_functions;
}

Collector::Collector(llvm::Function *F) {
    if (isTemplateInitFunc(F)) {
        this->F = F;
    } else {
        std::cerr << "Error: This function isn't template function!";
    }
    this->template_name = extractTemplateName(F);
    this->constraints = Constraints();

    this->arguments = Variables();
    this->input_signals = Variables();
    this->inter_signals = Variables();
    this->output_signals = Variables();
    this->variables = Variables();
    this->components = Components();

    this->argument_names = NameSet();
    this->input_signal_names = NameSet();
    this->inter_signal_names = NameSet();
    this->output_signal_names = NameSet();
    this->variable_names = NameSet();
    this->component_names = NameSet();

    for (auto &bb : F->getBasicBlockList()) {
        for (auto &inst : bb.getInstList()) {
            if (isArgumentDefinedInst(&inst)) {
                VariableInit *signal = dyn_cast<VariableInit>(&inst);
                this->arguments.push_back(signal);
                this->argument_names.insert(extractVariableName(signal));
            }
            if (isInputSiganlDefinedInst(&inst)) {
                VariableInit *signal = dyn_cast<VariableInit>(&inst);
                this->input_signals.push_back(signal);
                this->input_signal_names.insert(extractVariableName(signal));
            }
            if (isInterSiganlDefinedInst(&inst)) {
                VariableInit *signal = dyn_cast<VariableInit>(&inst);
                this->inter_signals.push_back(signal);
                this->inter_signal_names.insert(extractVariableName(signal));
            }
            if (isOutputSiganlDefinedInst(&inst)) {
                VariableInit *signal = dyn_cast<VariableInit>(&inst);
                this->output_signals.push_back(signal);
                this->output_signal_names.insert(extractVariableName(signal));
            }
            if (isVariableDefinedInst(&inst)) {
                VariableInit *variable = dyn_cast<VariableInit>(&inst);
                this->variables.push_back(variable);
                this->variable_names.insert(extractVariableName(variable));
            }
            if (isConstraintDefinedInst(&inst)) {
                ConstraintInstance *constraint =
                    dyn_cast<ConstraintInstance>(&inst);
                this->constraints.push_back(constraint);
            }
            if (isComponentDefinedInst(&inst)) {
                ComponentInstance *component =
                    dyn_cast<ComponentInstance>(&inst);
                this->components.push_back(component);
                this->component_names.insert(extractTemplateName(component));
            }
        }
    }
}

std::string Collector::getName() { return this->template_name; }

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
    std::cerr << "Variables: \n";
    for (auto &i : this->variable_names) {
        std::cerr << i << "\n";
    }
    std::cerr << "Components: \n";
    for (auto &i : this->component_names) {
        std::cerr << i << "\n";
    }
    std::cerr << "\n";
}

std::vector<Collector *> getOrderedCollectors(
    std::vector<llvm::Function *> funcs) {
    auto collectors = std::vector<Collector *>();
    for (auto &F : funcs) {
        if (!isTemplateInitFunc(F)) {
            continue;
        }
        collectors.push_back(new Collector(F));
    }
    auto resolved_names = std::unordered_set<std::string>();
    auto ordered_collectors = std::vector<Collector *>();
    auto size = collectors.size();
    while (ordered_collectors.size() < size) {
        auto last = collectors.back();
        collectors.pop_back();
        bool sat = true;
        for (auto c : last->component_names) {
            sat = sat && (resolved_names.count(c) || last->getName() == c);
        }
        if (sat) {
            resolved_names.insert(last->getName());
            ordered_collectors.push_back(last);
        } else {
            collectors.insert(collectors.begin(), last);
        }
    }
    return ordered_collectors;
}
