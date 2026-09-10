#include <gtest/gtest.h>
#include "ssa/callgraph_builder.hpp"
#include "ssa/callgraph.hpp"
#include "ssa/llvm_ir.hpp"
#include <filesystem>

namespace fs = std::filesystem; 

class CallGraphBuilderTest : public ::testing::Test {
protected:
     
    fs::path fixture_dir;
    
    void SetUp() override {
		
		fs::path test_source_dir = fs::path(__FILE__).parent_path();
        fixture_dir = test_source_dir / "fixtures";
		
    }
    
    fs::path get_fixture_dir(){
		return fixture_dir;
	}
};

// Test: Single function with no calls
TEST_F(CallGraphBuilderTest, SingleFunction) {
	
	LLVMIRHandler handler;
    Callgraph graph;   
    
	fs::path path_ir_file = get_fixture_dir() / "single_function.ll";
	
	handler.load_module_from_ir_file(path_ir_file.string());
    CallGraphBuilder builder(handler, graph);
    builder.build();
    
    EXPECT_EQ(graph.getNodesById().size(), 2);
    EXPECT_EQ(graph.getEdges().size(), 1);
}

// Test: Recursive calls (fibonacci)
TEST_F(CallGraphBuilderTest, RecursiveCalls) {
	
	LLVMIRHandler handler;
    Callgraph graph;   
    
	fs::path path_ir_file = get_fixture_dir() / "recursive_calls.ll";
	
	handler.load_module_from_ir_file(path_ir_file.string());
    CallGraphBuilder builder(handler, graph);
    builder.build();
    
    EXPECT_EQ(graph.getNodesById().size(), 2);
    // two general edges main -> fib, fib -> fib
    EXPECT_EQ(graph.getEdges().size(), 2);
    unsigned int cnt_unique_edges = 0;
    for (auto& edge : graph.getEdges()){
		
		cnt_unique_edges += edge.second.size();
		
	}
	// three unique edges / callsites: 
	// main -> fib, fib -> fib (call 1), fib -> fib (call 2)
	EXPECT_EQ(cnt_unique_edges, 3);
}

// Test: Nested calls: PID Controller
TEST_F(CallGraphBuilderTest, NestedCalls) {
	
	LLVMIRHandler handler;
    Callgraph graph;   
    
	fs::path path_ir_file = get_fixture_dir() / "pid.ll";
	
	handler.load_module_from_ir_file(path_ir_file.string());
    CallGraphBuilder builder(handler, graph);
    builder.build();
    
    EXPECT_EQ(graph.getNodesById().size(), 10);
    
    auto node_id_main = graph.getNodesByName().at("main")->getId();
    auto& edges_main =  graph.getEdges().at(node_id_main);
    // main calls PIDController ctor, update and plant (2x)
    EXPECT_EQ(edges_main.size(), 4);
    
}
