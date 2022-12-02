#include "UnderConstraints.hpp"

std::string nodeTypeEnumToAbbr(NodeType ne) {
    switch (ne) {
        case NodeType::Argument:
            return "arg";
        case NodeType::ComponentInput:
            return "comp_input";
        case NodeType::ComponentOutput:
            return "comp_output";
        case NodeType::Constant:
            return "const";
        case NodeType::InputSignal:
            return "input";
        case NodeType::IntermediateSignal:
            return "inter";
        case NodeType::OutputSignal:
            return "output";
        case NodeType::Variable:
            return "var";
    }
}

std::string edgeTypeEnumToAbbr(EdgeType ee) {
    switch (ee) {
        case EdgeType::Assignment:
            return "assign";
        case EdgeType::ComponentInternal:
            return "comp_internal";
        case EdgeType::Constraint:
            return "constraint";
    }
}

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

std::vector<ConstraintNode *> ConstraintNode::getConstraintNeighborhoods() {
    auto res = std::vector<ConstraintNode *>();
    for (auto e : this->limits) {
        res.push_back(e->to);
    }
    for (auto e : this->depends) {
        res.push_back(e->from);
    }
    return res;
}

bool ConstraintNode::operator==(const ConstraintNode &b) {
    return this->name == b.name && this->type == b.type;
}

bool ConstraintNode::operator!=(const ConstraintNode &b) {
    return !(this->name == b.name && this->type == b.type);
}

void ConstraintNode::print() {
    std::cerr << "Node: " << nodeTypeEnumToAbbr(this->type)
              << " Name: " << this->name << "\n";
}

ConstraintEdge::ConstraintEdge(EdgeType type, ConstraintNode *from,
                               ConstraintNode *to) {
    this->type = type;
    this->from = from;
    this->to = to;
}

void ConstraintEdge::print() {
    std::string m;
    switch (this->type) {
        case EdgeType::Assignment:
            m = " --> ";
            break;
        case EdgeType::ComponentInternal:
            m = " -*- ";
            break;
        case EdgeType::Constraint:
            m = " === ";
            break;
    }
    std::cerr << this->from->name << m << this->to->name << "\n";
}

bool ConstraintEdge::operator==(const ConstraintEdge &b) {
    return *this->from == *b.from && *this->to == *b.to && this->type == b.type;
}

bool ConstraintEdge::operator!=(const ConstraintEdge &b) {
    return !(*this->from == *b.from && *this->to == *b.to &&
             this->type == b.type);
}

ConstraintGraph::ConstraintGraph(GraphMap global_graphs, Collector *collector,
                                 bool is_hack_sat) {
    this->visited_nodes = NameSet();
    this->visited_phis = NameSet();
    this->is_sat = false;
    this->is_hack_sat = is_hack_sat;
    this->global_graphs = global_graphs;
    this->collector = collector;
    this->connected_inputs = NameSetMap();
    this->nodes = std::vector<ConstraintNode *>();
    this->edges = std::vector<ConstraintEdge *>();

    for (auto &i : this->collector->argument_names) {
        this->createNode(NodeType::Argument, i);
    }

    for (auto &i : this->collector->input_signal_names) {
        this->createNode(NodeType::InputSignal, i);
    }

    for (auto &i : this->collector->inter_signal_names) {
        this->createNode(NodeType::IntermediateSignal, i);
    }

    for (auto &o : this->collector->output_signal_names) {
        this->createNode(NodeType::OutputSignal, o);
    }

    for (auto &v : this->collector->variable_names) {
        this->createNode(NodeType::Variable, v);
    }

    for (auto &g_name : this->collector->component_names) {
        if (g_name == this->getName()) {
            continue;
        }
        auto sub_g = this->global_graphs[g_name];
        for (auto &i : sub_g->collector->input_signal_names) {
            auto i_name = g_name + "_" + i;
            this->createNode(NodeType::ComponentInput, i_name);
        }
        for (auto &o : sub_g->collector->output_signal_names) {
            auto o_name = g_name + "_" + o;
            auto o_node = this->createNode(NodeType::ComponentOutput, o_name);
            auto inputs = sub_g->connected_inputs[o];
            for (auto &i : inputs) {
                auto i_name = g_name + "_" + i;
                auto i_node = this->getNode(NodeType::ComponentInput, i_name);
                this->createEdge(EdgeType::ComponentInternal, i_node, o_node);
            }
        }
    }

    // Build graph
    for (auto &constraint : this->collector->constraints) {
        this->visited_phis = NameSet();
        auto constraint_to = constraint->getArgOperand(0);
        auto sources = this->determineValueDepends(constraint_to);

        this->visited_phis = NameSet();
        auto constraint_from = constraint->getArgOperand(1);
        auto depends = this->determineValueDepends(constraint_from);
        for (auto s : sources) {
            for (auto d : depends) {
                this->createEdge(EdgeType::Constraint, d, s);
            }
        }
    };

    this->print();
}

ConstraintNode *ConstraintGraph::createNode(NodeType type, std::string name) {
    auto node = new ConstraintNode(type, name);
    this->nodes.push_back(node);
    return node;
}

ConstraintEdge *ConstraintGraph::createEdge(EdgeType type, ConstraintNode *from,
                                            ConstraintNode *to) {
    auto edge = new ConstraintEdge(type, from, to);
    for (auto e : edges) {
        if (*e == *edge) {
            delete edge;
            return e;
        }
    }
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
    std::cerr << "Couldn't find the node, type: " << nodeTypeEnumToAbbr(type)
              << ", name: " << name << "\n";
}

bool ConstraintGraph::getSat() { return this->is_hack_sat || this->is_sat; }

std::vector<ConstraintNode *> ConstraintGraph::determineValueDepends(
    llvm::Value *v) {
    auto res = std::vector<ConstraintNode *>();
    if (!isa<llvm::Instruction>(v)) {
        return res;
    }
    auto inst = dyn_cast<llvm::Instruction>(v);
    if (isArgumentDefinedInst(inst)) {
        auto name = extractVariableName(inst);
        auto node = this->getNode(NodeType::Argument, name);
        res.push_back(node);
    } else if (isInputSiganlDefinedInst(inst)) {
        auto name = extractVariableName(inst);
        auto node = this->getNode(NodeType::InputSignal, name);
        res.push_back(node);
    } else if (isInterSiganlDefinedInst(inst)) {
        auto name = extractVariableName(inst);
        auto node = this->getNode(NodeType::IntermediateSignal, name);
        res.push_back(node);
    } else if (isOutputSiganlDefinedInst(inst)) {
        auto name = extractVariableName(inst);
        auto node = this->getNode(NodeType::OutputSignal, name);
        res.push_back(node);
    } else if (isReadOutterSignal(inst) || isWriteOutterSignal(inst)) {
        auto p = extractSignalOfComponent(inst);
        auto key = p.first + "_" + p.second;
        VariableTypeEnum ty = std::get<2>(extractVariable(inst));
        auto node_ty = (ty == VariableTypeEnum::InputSignal)
                           ? NodeType::ComponentInput
                           : NodeType::ComponentOutput;
        auto node = this->getNode(node_ty, key);
        res.push_back(node);
    } else if (isVariableDefinedInst(inst)) {
        auto name = extractVariableName(inst);
        auto node = this->getNode(NodeType::Variable, name);
        res.push_back(node);
    } else if (isa<LoadInst>(inst) || isa<GetElementPtrInst>(inst)) {
        auto temp = this->determineValueDepends(inst->getOperand(0));
        res.insert(res.end(), temp.begin(), temp.end());
    } else if (isa<BinaryOperator>(inst)) {
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd);
            res.insert(res.end(), temp.begin(), temp.end());
        }
    } else if (isa<PHINode>(inst) &&
               !this->visited_phis.count(inst->getName().str())) {
        this->visited_phis.insert(inst->getName().str());
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd);
            res.insert(res.end(), temp.begin(), temp.end());
        }
    }
    return res;
}

NodeSet ConstraintGraph::connectedNodes(ConstraintNode *n) {
    auto res = NodeSet();
    auto waitNodes = NodeSet();
    auto visitedNodeName = NameSet();
    waitNodes.insert(n);
    while (waitNodes.size() > 0) {
        auto node = *waitNodes.begin();
        waitNodes.erase(waitNodes.begin());
        if (visitedNodeName.count(node->name)) {
            continue;
        }
        visitedNodeName.insert(node->name);
        res.insert(node);
        if ((node->type == NodeType::ComponentInput) ||
            (node->type == NodeType::ComponentOutput)) {
            auto p = stringSplit(node->name, "_", 1);
            auto templ_name = p[0];
            auto sub_g = this->global_graphs[templ_name];
            if (sub_g->getSat()) {
                for (auto sub_n : node->getConstraintNeighborhoods()) {
                    waitNodes.insert(sub_n);
                }
            }
        } else {
            for (auto sub_n : node->getConstraintNeighborhoods()) {
                waitNodes.insert(sub_n);
            }
        }
    }
    return res;
}

void ConstraintGraph::calculate() {
    if (this->is_calculated) {
        return;
    }
    for (auto n : this->nodes) {
        if (this->visited_nodes.count(n->name)) {
            continue;
        }
        NodeSet connected_nodes = this->connectedNodes(n);
        NameSet input_node_names = NameSet();
        for (auto n : connected_nodes) {
            if (n->type == NodeType::InputSignal) {
                input_node_names.insert(n->name);
            }
        }
        for (auto n : connected_nodes) {
            this->visited_nodes.insert(n->name);
            this->connected_inputs[n->name] = input_node_names;
        }
    }
    this->is_sat = true;
    for (auto n : this->nodes) {
        if (n->type != NodeType::OutputSignal) {
            continue;
        }
        if (this->connected_inputs[n->name].size() == 0) {
            this->is_sat = false;
            std::cerr << "Unconstrainted output signal: " << n->name << "\n";
        }
    }
    this->is_calculated = true;
    std::cerr << "\n";
}

std::string ConstraintGraph::getName() { return this->collector->getName(); }

void ConstraintGraph::print() {
    this->collector->print();
    for (auto n : this->nodes) {
        n->print();
    }
    std::cerr << "\n";
    for (auto e : this->edges) {
        e->print();
    };
    std::cerr << "\n";
}

namespace {
struct UnderConstraints : public ModulePass {
    static char ID;

    UnderConstraints() : ModulePass(ID) {}

    bool runOnModule(Module &M) override {
        std::cerr << M.getSourceFileName() << "\n";
        auto global_graphs = GraphMap();
        auto hacking_sat_comps = NameSet();

        auto ordered_functions = getOrderedFunctions(&M);
        auto collectors = getOrderedCollectors(ordered_functions);

        for (auto c : collectors) {
            bool is_hack = hacking_sat_comps.count(c->getName());
            std::cerr << "Detecting: " << c->getName() << "\n";
            auto g = new ConstraintGraph(global_graphs, c, is_hack);
            global_graphs.insert({c->getName(), g});
            if (not is_hack) {
                g->calculate();
            }
        }

        return false;
    };
};
}  // namespace

char UnderConstraints::ID = 0;
static RegisterPass<UnderConstraints> X(
    "UnderConstraints",
    "Detect whether every output signal is under the constraint matters at "
    "least one input signal.",
    false, false);