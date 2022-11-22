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
            collectors.insert({collector->template_name, collector});
        }

        for (auto F : ordered_functions) {
            if (!isTemplateInitFunc(F)) {
                continue;
            }
            auto templ_name = canonicalizeTemplateName(F);
            std::cerr << "Detecting: " << templ_name << "\n";
            auto collector = collectors[templ_name];
            auto satisfied_component_output_signals = NameSet();
            for (auto &bb : F->getBasicBlockList()) {
                for (auto &inst : bb.getInstList()) {
                    if (inst.getName().contains(output_signal_reader_mark)) {
                        auto pair =
                            collector->canonicalizeSignalOfComponent(&inst);
                        auto key = pair.first + pair.second;
                        satisfied_component_output_signals.insert(key);
                    }
                }
            }
            for (auto c : collector->component_names) {
                std::cerr << "Component: " << c << "\n";
                auto c_collector = collectors[c];
                for (auto o : c_collector->output_signal_names) {
                    auto key = c + o;
                    if (satisfied_component_output_signals.count(key)) {
                        std::cerr << "    Used output signal: " << o << "\n";
                    } else {
                        std::cerr << "    Unused output signal: " << o << "\n";
                    }
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
