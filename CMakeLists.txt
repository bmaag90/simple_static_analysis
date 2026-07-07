cmake_minimum_required(VERSION 3.16)
project(static_analysis VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(LLVM REQUIRED CONFIG)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "LLVM Config: ${LLVM_DIR}")

if (TARGET LLVM::Core)
    set(LLVM_COMPONENT_LIBS
        LLVM::Core
        LLVM::Support
        LLVM::IRReader
    )
else()
    llvm_map_components_to_libnames(LLVM_LIBS core support irreader)
    set(LLVM_COMPONENT_LIBS ${LLVM_LIBS})
    include_directories(SYSTEM ${LLVM_INCLUDE_DIRS})
    add_definitions(${LLVM_DEFINITIONS})
endif()

find_package(spdlog REQUIRED)

set(PLATFORM_LIBS $<$<BOOL:${MINGW}>:ws2_32>)

add_library(libssa
    ssa/callgraph_builder.cpp
)

target_include_directories(libssa
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}>
        $<INSTALL_INTERFACE:include>
)

target_link_libraries(libssa
    PRIVATE
        ${LLVM_COMPONENT_LIBS}
        spdlog::spdlog
        ${PLATFORM_LIBS}
)

target_compile_features(libssa PUBLIC cxx_std_20)

add_executable(app_callgraph
    apps/callgraph.cpp
)

target_link_libraries(app_callgraph
    PRIVATE
        libssa
        spdlog::spdlog
        ${PLATFORM_LIBS}
)

target_compile_features(app_callgraph PRIVATE cxx_std_20)
