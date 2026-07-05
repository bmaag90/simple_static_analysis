cmake_minimum_required(VERSION 3.16)
project(static_analysis LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(LLVM REQUIRED CONFIG)

include_directories(${LLVM_INCLUDE_DIRS} /usr/include/llvm-18)
add_definitions(${LLVM_DEFINITIONS})

llvm_map_components_to_libnames(LLVM_LIBS core support irreader)

if(NOT TARGET spdlog)
    # Stand-alone build
    find_package(spdlog REQUIRED)
endif()

add_library(libssa
    ssa/callgraph_builder.cpp
)
target_link_libraries(libssa PRIVATE spdlog::spdlog $<$<BOOL:${MINGW}>:ws2_32>)

add_executable(ssa_example
    main.cpp
)

target_link_libraries(ssa_example
    PRIVATE
        ${LLVM_LIBS}
        libssa
        spdlog::spdlog $<$<BOOL:${MINGW}>:ws2_32>
)
