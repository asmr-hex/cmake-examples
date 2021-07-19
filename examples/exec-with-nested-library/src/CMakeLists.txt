add_subdirectory(one)

set(exec_src_files main.cpp)
add_executable(execWithNestedLibs ${exec_src_files})

target_link_libraries(
  execWithNestedLibs
  PUBLIC
  one)

target_include_directories(
  execWithNestedLibs
  PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/one>)
