#include "OutputSignalUser.hpp"

namespace {
struct OutputSignalUser : public ModulePass {
    static char ID;

    // Status
    std::vector<llvm::Function *> ordered_functions;

    std::unordered_map<std::string, Collector *> collectors;

    OutputSignalUser() : ModulePass(ID) {}

    bool runOnModule(Module &M) override {
        std::cerr << M.getSourceFileName() << "\n";
        auto ordered_functions = getOrderedFunctions(&M);
        for (auto F : ordered_functions) {
            if (!isTemplateInitFunc(F)) {
                continue;
            }
            auto collector = new Collector(F);
            collectors.insert({collector->getName(), collector});
        }

        auto global_ignore_set = NameSet();
        global_ignore_set.insert("signedcheckcarrymodtozero");
        global_ignore_set.insert("multiand");
        global_ignore_set.insert("num2bits");
        global_ignore_set.insert("signedfp2carrymodp");
        global_ignore_set.insert("bigsub");
        global_ignore_set.insert("signedfp12carrymodp");
        global_ignore_set.insert("bigmod");
        global_ignore_set.insert("signedfpcarrymodp");
        global_ignore_set.insert("bigmod2");
        global_ignore_set.insert("millerloopfp2");

        for (auto F : ordered_functions) {
            if (!isTemplateInitFunc(F)) {
                continue;
            }
            auto templ_name = extractTemplateName(F);
            std::cerr << "Detecting: " << templ_name << "\n";
            auto collector = collectors[templ_name];
            auto satisfied_component_output_signals = NameSet();
            for (auto &bb : F->getBasicBlockList()) {
                for (auto &inst : bb.getInstList()) {
                    if (isReadOutterSignal(&inst)) {
                        auto var_op_t = extractVariable(&inst);
                        auto ty_enum = std::get<2>(var_op_t);
                        if (ty_enum == VariableTypeEnum::OutputSignal) {
                            auto p = extractSignalOfComponent(&inst);
                            auto key = p.first + "_" + p.second;
                            satisfied_component_output_signals.insert(key);
                        }
                    }
                }
            }
            for (auto c : collector->component_names) {
                if (global_ignore_set.count(c)) {
                    continue;
                }
                std::cerr << "Component: " << c << "\n";
                auto c_collector = collectors[c];
                if (c_collector->output_signal_names.size() == 0) {
                    continue;
                }
                bool at_least_one_used = false;
                for (auto o : c_collector->output_signal_names) {
                    auto key = c + o;
                    if (satisfied_component_output_signals.count(key)) {
                        std::cerr << "    Used output signal: " << o << "\n";
                        at_least_one_used = true;
                    } else {
                        std::cerr << "    Unused output signal: " << o << "\n";
                    }
                }
                if (!at_least_one_used) {
                    std::cerr << "    None output signal used. "
                              << "\n";
                }
            }
            std::cerr << "\n";
        }
        return false;
    };
};
}  // namespace

char OutputSignalUser::ID = 0;
static RegisterPass<OutputSignalUser> X(
    "OutputSignalUser",
    "Detect whether all of output signals in a component are used or not.",
    false, false);
