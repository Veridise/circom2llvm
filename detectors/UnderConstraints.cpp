#include "UnderConstraints.hpp"

// Quick and dirty logging system
#define DEBUG 1
#define INFO 2
#define WARN 3
#define ERROR 4
#define NOLOG 5

// Set this to the desired log level
#define LOG_LEVEL DEBUG

#define d(msg) if (LOG_LEVEL <= DEBUG) std::cerr << "UnderConstraints.cpp:DEBUG: " << msg << std::endl
#define i(msg) if (LOG_LEVEL <= INFO) std::cerr  << "UnderConstraints.cpp:INFO:  " << msg << std::endl
#define w(msg) if (LOG_LEVEL <= WARN) std::cerr  << "UnderConstraints.cpp:WARN:  " << msg << std::endl
#define e(msg) if (LOG_LEVEL <= ERROR) std::cerr << "UnderConstraints.cpp:ERROR: " << msg << std::endl

// For logging inside the graph object
#define dg(msg) if (LOG_LEVEL <= DEBUG) std::cerr << "UnderConstraints.cpp:DEBUG:" << this->graph_name << ": " << msg << std::endl
#define ig(msg) if (LOG_LEVEL <= INFO) std::cerr  << "UnderConstraints.cpp:INFO:" << this->graph_name << ":  " << msg << std::endl
#define wg(msg) if (LOG_LEVEL <= WARN) std::cerr  << "UnderConstraints.cpp:WARN:" << this->graph_name << ":  " << msg << std::endl
#define eg(msg) if (LOG_LEVEL <= ERROR) std::cerr << "UnderConstraints.cpp:ERROR:" << this->graph_name << ": " << msg << std::endl


ConstraintNode::ConstraintNode(NodeType type, std::string name) {
    this->type = type;
    this->name = name;
    this->limits = std::vector<ConstraintEdge *>();
    this->depends = std::vector<ConstraintEdge *>();
}

void ConstraintNode::addEdge(ConstraintEdge *edge) {
    if (this == edge->from) {
        this->limits.push_back(edge);
    } else {
        this->depends.push_back(edge);
    }
}

bool ConstraintNode::operator==(ConstraintNode *b) {
    return this->name == b->name && this->type == b->type;
}

ConstraintEdge::ConstraintEdge(ConstraintNode *from, ConstraintNode *to) {
    this->from = from;
    this->to = to;
}

ConstraintGraph::ConstraintGraph(NameSet *satisfied_components, Function *F) {
    this->satisfied_components = satisfied_components;
    this->satisfied_outputs = NameSet();
    this->satisfied_nodes = NameSet();
    this->collector = new Collector(F);
    this->nodes = std::vector<ConstraintNode *>();
    this->edges = std::vector<ConstraintEdge *>();
    this->status_confirmed = false;
    this->graph_name = this->collector->template_name;
    this->visited_instructions = std::unordered_set<llvm::Value *>();

    for (auto &i : this->collector->input_signal_names) {
        this->createNode(NodeType::InputSignalNode, i);
    }

    for (auto &i : this->collector->inter_signal_names) {
        this->createNode(NodeType::InterSignalNode, i);
    }

    for (auto &o : this->collector->output_signal_names) {
        this->createNode(NodeType::OutputSignalNode, o);
    }

    for (auto &c : this->collector->component_names) {
        this->createNode(NodeType::ComponentNode, c);
    }

    // Build graph
    for (auto &constraint : this->collector->constraints) {
        this->visited_instructions.insert(constraint);
        this->tracked_phis = NameSet();
        auto constraint_to = constraint->getArgOperand(0);
        auto sources = this->determineValueDepends(constraint_to);

        this->tracked_phis = NameSet();
        auto constraint_from = constraint->getArgOperand(1);
        auto depends = this->determineValueDepends(constraint_from);
        for (auto s : sources) {
            for (auto d : depends) {
                this->createEdge(d, s);
            }
        }
    };
}

#ifdef GRAPH_DEBUG_MODE
ConstraintNode *ConstraintGraph::createNodeIfNotExists(NodeType type, std::string name) {
    for (auto &n : this->nodes) {
        if (n->type == type && n->name == name) {
            return n;
        }
    }
    auto node = new ConstraintNode(type, name);
    this->nodes.push_back(node);
    return node;
}
#endif

ConstraintNode *ConstraintGraph::createNode(NodeType type, std::string name) {
    auto node = new ConstraintNode(type, name);
    this->nodes.push_back(node);
    return node;
}

ConstraintEdge *ConstraintGraph::createEdge(ConstraintNode *from,
                                            ConstraintNode *to) {
    for (auto e : edges) {
        if (e->from == from && e->to == to) {
            return e;
        }
    }
    auto edge = new ConstraintEdge(from, to);
    from->addEdge(edge);
    to->addEdge(edge);
    this->edges.push_back(edge);
    return edge;
}

ConstraintNode *ConstraintGraph::getNode(NodeType type, std::string name) {
    for (auto &n : this->nodes) {
        if (n->type == type && n->name == name) {
            return n;
        }
    }
    std::cerr << "Couldn't find the node, type: " << type << ", name: " << name
              << "\n";

}

bool instUsesValue(llvm::Instruction *inst, llvm::Value *v) {
    unsigned nOps = inst->getNumOperands();
    for (unsigned i = 0; i < nOps; i++) {
        if (inst->getOperand(i) == v) {
            return true;
        }
    }
    return false;
}

std::vector<llvm::Value *> ConstraintGraph::forwardAnalysis(llvm::Value *v) {
    auto res = std::vector<llvm::Value *>();
    // There has to be a better way of doing this...
    if (!isa<llvm::Instruction>(v)) {
        return res;
    }
    auto vAsInst = dyn_cast<llvm::Instruction>(v);
    for (auto &bb : collector->F->getBasicBlockList()) {
        for (auto &inst : bb.getInstList()) {
            if (/*!inst.comesBefore(vAsInst) &&*/ &inst != vAsInst && instUsesValue(&inst, v)) {
                dg("(forwardAnalysis) " << inst.getName().str() << ":" << inst.getOpcodeName() << " uses " << vAsInst->getName().str() << "!");
                res.push_back(&inst);
            }
        }
    }
    return res;
}

std::vector<ConstraintNode *> ConstraintGraph::determineValueDepends(
    llvm::Value *v) {
    auto res = std::vector<ConstraintNode *>();
    if (!isa<llvm::Instruction>(v)) {
        return res;
    }
    if (this->visited_instructions.count(v)) {
        dg("(determineValueDepends) We already checked this value (" << v->getName().str() << "). Ignoring...");
        return res;
    }
    this->visited_instructions.insert(v);
    auto inst = dyn_cast<llvm::Instruction>(v);
    dg("(determineValueDepends) Checking dependencies of " << inst->getName().str() << ":" << inst->getOpcodeName());

    if (this->collector->isInputSignal(inst)) {
        auto name = this->collector->canonicalizeInputSignal(inst);
        dg("(determineValueDepends) Its an input signal!: " << name);
        auto node = this->getNode(NodeType::InputSignalNode, name);
        res.push_back(node);
    } else if (this->collector->isInterSignal(inst)) {
        auto name = this->collector->canonicalizeInterSignal(inst);
        dg("(determineValueDepends) Its an internal signal!: " << name);
        auto node = this->getNode(NodeType::InterSignalNode, name);
        res.push_back(node);
    } else if (this->collector->isOutputSignal(inst)) {
        auto name = this->collector->canonicalizeOutputSignal(inst);
        dg("(determineValueDepends) Its an output signal!: " << name);
        auto node = this->getNode(NodeType::OutputSignalNode, name);
        res.push_back(node);
    } else if (this->collector->isSignalOfComponent(inst)) {
        auto p = this->collector->canonicalizeSignalOfComponent(inst);
        auto templ_name = p.first;
        auto signal_name = p.second;
        dg("(determineValueDepends) Its the signal of a component!: " << templ_name);
        auto node = this->getNode(NodeType::ComponentNode, templ_name);
        res.push_back(node);
    } else if (isa<LoadInst>(inst) || isa<GetElementPtrInst>(inst)) {
        dg("(determineValueDepends) Its a load instruction!");
#ifdef GRAPH_DEBUG_MODE
        dg("Creating node " << inst->getName().str());
        ConstraintNode *llvmNode = createNodeIfNotExists(NodeType::LLVMNode, inst->getName().str());
//        for (auto &opd : inst->operands()) {
//            auto temp = this->determineValueDepends(opd);
//            //res.insert(res.end(), temp.begin(), temp.end());
//            for (auto &n : temp) {
//                createEdge(n, llvmNode);
//            }
//        }
//        res.push_back(llvmNode);
//#else
//        for (auto &opd : inst->operands()) {
//            auto temp = this->determineValueDepends(opd);
//            res.insert(res.end(), temp.begin(), temp.end());
//        }
//#endif
        auto temp = this->determineValueDepends(inst->getOperand(0));
        for (auto &n : temp) {
            createEdge(n, llvmNode);
        } 
        res.push_back(llvmNode);
//        res.insert(res.end(), temp.begin(), temp.end());
#else
        auto temp = this->determineValueDepends(inst->getOperand(0));
        res.insert(res.end(), temp.begin(), temp.end());
#endif
    } else if (isa<BinaryOperator>(inst)) {
        dg("(determineValueDepends) Its a binary operation!");
#ifdef GRAPH_DEBUG_MODE
        dg("Creating node " << inst->getName().str());
        ConstraintNode *llvmNode = createNodeIfNotExists(NodeType::LLVMNode, inst->getName().str());
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd);
            //res.insert(res.end(), temp.begin(), temp.end());
            for (auto &n : temp) {
                createEdge(n, llvmNode);
            }
        }
        res.push_back(llvmNode);
#else
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd);
            res.insert(res.end(), temp.begin(), temp.end());
        }
#endif
    } else if (isa<PHINode>(inst) &&
               !this->tracked_phis.count(inst->getName().str())) {
        dg("(determineValueDepends) Its a phi node!");
        this->tracked_phis.insert(inst->getName().str());
#ifdef GRAPH_DEBUG_MODE
        dg("Creating node " << inst->getName().str());
        ConstraintNode *llvmNode = createNodeIfNotExists(NodeType::LLVMNode, inst->getName().str());
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd);
            //res.insert(res.end(), temp.begin(), temp.end());
            for (auto &n : temp) {
                createEdge(n, llvmNode);
            }
        }
        res.push_back(llvmNode);
#else
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd);
            res.insert(res.end(), temp.begin(), temp.end());
        }
#endif
    } else if (isa<AllocaInst>(inst)) {
        dg("(determineValueDepends) Its an alloca instruction!");
#ifdef GRAPH_DEBUG_MODE
        dg("Creating node " << inst->getName().str());
        ConstraintNode *llvmNode = createNodeIfNotExists(NodeType::LLVMNode, inst->getName().str());
        for (auto dep : this->forwardAnalysis(inst)) {
            auto temp = this->determineValueDepends(dep);
//            res.insert(res.end(), temp.begin(), temp.end());
            for (auto &n : temp) {
                createEdge(n, llvmNode);
            }
        }
        res.push_back(llvmNode);
#else
        for (auto dep : this->forwardAnalysis(inst)) {
            auto temp = this->determineValueDepends(dep);
            res.insert(res.end(), temp.begin(), temp.end());
        }
#endif
    } else if (isa<StoreInst>(inst)) {
        dg("(determineValueDepends) Its a store instruction!");
#ifdef GRAPH_DEBUG_MODE
        dg("Creating node " << inst->getName().str());
        ConstraintNode *llvmNode = createNodeIfNotExists(NodeType::LLVMNode, inst->getName().str());
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd);
            //res.insert(res.end(), temp.begin(), temp.end());
            for (auto &n : temp) {
                createEdge(n, llvmNode);
            }
        }
        res.push_back(llvmNode);
#else
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd);
            res.insert(res.end(), temp.begin(), temp.end());
        }
#endif
    } else if (isa<CallInst>(inst)) {
        dg("(determineValueDepends) Its a call instruction!");
#ifdef GRAPH_DEBUG_MODE
        dg("Creating node " << inst->getName().str());
        ConstraintNode *llvmNode = createNodeIfNotExists(NodeType::LLVMNode, inst->getName().str());
        auto callInst = dyn_cast<llvm::CallInst>(v);
        for (unsigned i = 0; i < callInst->arg_size(); i++) {
            auto temp = this->determineValueDepends(callInst->getArgOperand(i));
//            res.insert(res.end(), temp.begin(), temp.end());
            for (auto &n : temp) {
                createEdge(n, llvmNode);
            }
        }
        res.push_back(llvmNode);
#else
        auto callInst = dyn_cast<llvm::CallInst>(v);
        for (unsigned i = 0; i < callInst->arg_size(); i++) {
            auto temp = this->determineValueDepends(callInst->getArgOperand(i));
            res.insert(res.end(), temp.begin(), temp.end());
        }
#endif
    } else if (isa<CmpInst>(inst)) {
        dg("(determineValueDepends) Its a cmp instruction!");
#ifdef GRAPH_DEBUG_MODE
        dg("Creating node " << inst->getName().str());
        ConstraintNode *llvmNode = createNodeIfNotExists(NodeType::LLVMNode, inst->getName().str());
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd);
            //res.insert(res.end(), temp.begin(), temp.end());
            for (auto &n : temp) {
                createEdge(n, llvmNode);
            }
        }
        res.push_back(llvmNode);
#else
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd);
            res.insert(res.end(), temp.begin(), temp.end());
     }
#endif
    } else if (isa<BranchInst>(inst)) {
        dg("(determineValueDepends) Its a branch instruction!");
#ifdef GRAPH_DEBUG_MODE
        dg("Creating node " << inst->getName().str());
        ConstraintNode *llvmNode = createNodeIfNotExists(NodeType::LLVMNode, inst->getName().str());
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd);
            //res.insert(res.end(), temp.begin(), temp.end());
            for (auto &n : temp) {
                createEdge(n, llvmNode);
            }
        }
        res.push_back(llvmNode);
#else
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd);
            res.insert(res.end(), temp.begin(), temp.end());
        }
#endif
    } else {
        dg("(determineValueDepends) I dont know what is this! name=" << inst->getName().str() << ", operand=" << inst->getOpcodeName());
    }
    if(res.empty()) {
        dg("(determineValueDepends) We got nothing. Trying going forward!");
#ifdef GRAPH_DEBUG_MODE
        dg("Creating node " << inst->getName().str());
        ConstraintNode *llvmNode = createNodeIfNotExists(NodeType::LLVMNode, inst->getName().str());
        for (auto dep : this->forwardAnalysis(inst)) {
            auto temp = this->determineValueDepends(dep);
            //            res.insert(res.end(), temp.begin(), temp.end());
            for (auto &n : temp) {
                createEdge(n, llvmNode);
            }
        }
        res.push_back(llvmNode);
#else
        for (auto dep : this->forwardAnalysis(inst)) {
            auto temp = this->determineValueDepends(dep);
            res.insert(res.end(), temp.begin(), temp.end());
        }
#endif
    }
    return res;
}

bool ConstraintGraph::connectedToInput(ConstraintNode *n) {
    if (this->visited_nodes.count(n->name)) {
        return this->satisfied_nodes.count(n->name);
    }
    this->visited_nodes.insert(n->name);
    bool res = false;
    if (n->type == NodeType::InputSignalNode) {
        res = true;
    } else if (n->type == NodeType::ComponentNode) {
        if (this->satisfied_components->count(n->name)) {
            for (auto e : n->limits) {
                res = res || this->connectedToInput(e->to);
            }
            for (auto e : n->depends) {
                res = res || this->connectedToInput(e->from);
            }
        } else {
            res = false;
        }
    } else {
        for (auto e : n->limits) {
            res = res || this->connectedToInput(e->to);
        }
        for (auto e : n->depends) {
            res = res || this->connectedToInput(e->from);
        }
    }
    if (res) {
        this->satisfied_nodes.insert(n->name);
    }
    return res;
}

bool ConstraintGraph::calculate(std::vector<ConstraintGraph *> graphs) {
    this->satisfied_outputs = NameSet();
    for (auto n : this->nodes) {
        this->satisfied_nodes = NameSet();
        this->visited_nodes = NameSet();
        bool res = this->connectedToInput(n);
        if (res && n->type == NodeType::OutputSignalNode) {
            this->satisfied_outputs.insert(n->name);
        }
    }
    // status_confirmed
    this->status_confirmed = true;
    for (auto c : this->collector->component_names) {
        for (auto g : graphs) {
            if (c == g->graph_name) {
                if (!g->status_confirmed) {
                    this->status_confirmed = false;
                }
            }
        }
    }
    return this->satisfied_outputs == this->collector->output_signal_names;
}

void ConstraintGraph::print() {
    this->collector->print();
#ifdef GRAPH_DEBUG_MODE
    std::cerr << "digraph " << this->graph_name << " {\n";
    for (auto n : this->nodes) {
        std::cerr << "  " << n->name << "[\n";
        switch (n->type) {
            case NodeType::LLVMNode:
                std::cerr << "    color=\"#88000022\"\n";
                break;
            case NodeType::ComponentNode:
                std::cerr << "    color=\"#ff880022\"\n";
                break;
            case NodeType::InputSignalNode:
                std::cerr << "    color=\"#0044ff22\"\n";
                break;
            case NodeType::OutputSignalNode:
                std::cerr << "    color=\"#88ff0022\"\n";
                break;
            case NodeType::InterSignalNode:
                std::cerr << "    color=\"#00888822\"\n";
                break;
        }
        std::cerr << "]\n";
    }
    std::cerr << "\n";
    for (auto e : this->edges) {
        std::cerr << "  " << e->from->name << " -> " << e->to->name << "\n";
    };
    std::cerr << "}\n";
#else
    if (this->edges.empty()) {
        std::cerr << "Graph empty!" << "\n";
    }
    for (auto e : this->edges) {
        std::cerr << e->from->name << " --> " << e->to->name << "\n";
    };
    std::cerr << "\n";
#endif
}

namespace {
struct UnderConstraints : public ModulePass {
    static char ID;

    // Status
    NameSet satisfied_components;
    std::vector<ConstraintGraph *> graphs;
    bool isFixed;

    UnderConstraints() : ModulePass(ID) {}

    bool runOnModule(Module &M) override {
        std::cerr << M.getSourceFileName() << "\n";

        this->graphs = std::vector<ConstraintGraph *>();
        this->satisfied_components = NameSet();
        this->isFixed = false;
        auto *ptr = &this->satisfied_components;

        auto ordered_functions = getOrderedFunctions(&M);

        auto hacking_satisfied_components = NameSet();

        for (auto F : ordered_functions) {
            if (!isTemplateInitFunc(F)) {
                continue;
            }
            auto g = new ConstraintGraph(ptr, F);
            this->satisfied_components.insert(g->graph_name);
            this->graphs.push_back(g);
        }

        while (!isFixed) {
            isFixed = true;
            for (auto &g : this->graphs) {
                if (!g->status_confirmed) {
                    if (!g->calculate(this->graphs) &&
                        !hacking_satisfied_components.count(g->graph_name)) {
                        this->satisfied_components.erase(g->graph_name);
                    }
                    isFixed = false;
                }
            }
        }

        for (auto g : graphs) {
            if (hacking_satisfied_components.count(g->graph_name)) {
                continue;
            }
            std::cerr << "Detecting: " << g->graph_name << "\n";
            for (auto o : g->collector->output_signal_names) {
                if (!g->satisfied_outputs.count(o)) {
                    std::cerr << "Unconstrainted output signal: " << o << "\n";
                }
            }
            g->print();
            std::cerr << "\n";
        }

        return false;
    };
};
}  // namespace

char UnderConstraints::ID = 0;
static RegisterPass<UnderConstraints> X(
    "UnderConstraints",
    "Detect whether every output signal is under the constraint matters at least one input signal.", false, false);