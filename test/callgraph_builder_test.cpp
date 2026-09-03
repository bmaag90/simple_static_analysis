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
