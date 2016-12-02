cmake_minimum_required(VERSION 2.8)
project(CppShell)

include_directories("include")
add_executable(shell
  src/main.cc
  src/classes.cc
  src/mainFunctions.cc
  include/classes.hpp
  include/mainFunctions.hpp)

