cmake_minimum_required(VERSION 3.10)
project(RPNCalculator) 

include_directories(include)
add_executable(rpn_calculator src/main.cpp src/rpn.cpp)
enable_testing()
add_subdirectory(tests)