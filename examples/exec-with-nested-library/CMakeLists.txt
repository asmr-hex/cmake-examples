cmake_minimum_required(VERSION 3.7...3.21)

project(
  ExecWithNestedLibraries
  VERSION 2.0
  DESCRIPTION "executable with nested libraries"
  LANGUAGES CXX)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin)

add_subdirectory(src)

target_compile_features(execWithNestedLibs PUBLIC cxx_std_17)
