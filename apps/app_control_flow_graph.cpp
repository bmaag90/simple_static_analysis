#include "ssa/control_flow_graph_builder.hpp"

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
        ControlFlowGraph graph;
        ControlFlowGraphBuilder builder(*module, graph);
        builder.build();
        
        printf("===\n");
        graph.print_dot_graph();
        printf("\n===\n");
        
        
   } catch (const std::exception &ex) {
        std::cerr << ex.what() << "\n";
        return 1;
    }

    return 0;
}
