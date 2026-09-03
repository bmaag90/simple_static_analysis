# Test configuration for simple_static_analysis

# Enable testing
enable_testing()

# Fetch Google Test from GitHub
include(FetchContent)
FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/refs/tags/v1.14.0.zip
    DOWNLOAD_EXTRACT_TIMESTAMP ON
)

# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

add_compile_definitions(GTEST_HAS_CXXABI_H_=0)
FetchContent_MakeAvailable(googletest)


# Create test executable
add_executable(ssa_tests
    callgraph_builder_test.cpp
    #control_flow_graph_builder_test.cpp
)

# Include directories for test
target_include_directories(ssa_tests
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${CMAKE_SOURCE_DIR}
)

# Link against libssa and Google Test (libssa already links LLVM)
target_link_libraries(ssa_tests
    PRIVATE
        libssa
        gtest_main
        gtest
        spdlog::spdlog
)

# Set C++ standard
target_compile_features(ssa_tests PRIVATE cxx_std_20)

# Suppress the cxxabi warning/error by telling compiler to ignore it
target_compile_options(ssa_tests PRIVATE -fpermissive)

# Register tests with CTest
add_test(
    NAME ssa_unit_tests
    COMMAND ssa_tests
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/test
)

# Optional: Print test summary
add_custom_target(test_verbose
    COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure
    DEPENDS ssa_tests
)

message(STATUS "Test configuration complete")
message(STATUS "  - Build tests with: cmake --build . --target ssa_tests")
message(STATUS "  - Run tests with: ctest or cmake --build . --target test_verbose")
