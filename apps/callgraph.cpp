#include "ssa/callgraph_builder.hpp"

#include <iostream>
#include <stdexcept>

#include "spdlog/spdlog.h"

int main(int argc, char **argv) {
	
	spdlog::set_level(spdlog::level::debug);	
	
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0] << " input.ll\n";
        return 1;
    }

    try {
        LLVMIRHandler handler;
        handler.load_module_from_ir_file(argv[1]);
        const llvm::Module *module = handler.getModule();
        CallGraphBuilder builder(*module);
        Callgraph graph = builder.build();

        std::cout << "Nodes:\n";
        for (const auto &entry : graph.getNodes()) {
            const CallgraphNode &node = entry.second;
            std::cout << "- " << node.getId() << ": " << node.getFunctionName() << "\n";
        }

        std::cout << "\nEdges:\n";
        for (const auto &entry : graph.getEdges()) {
            for (const CallgraphEdge &edge : entry.second) {
                std::cout << edge.getSource().getId() << " -> " << edge.getTarget().getId() << "\n";
            }
        }
    } catch (const std::exception &ex) {
        std::cerr << ex.what() << "\n";
        return 1;
    }

    return 0;
}
