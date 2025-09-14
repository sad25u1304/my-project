# CMake generated Testfile for 
# Source directory: /home/andre/my-project/rpn_calculator
# Build directory: /home/andre/my-project/rpn_calculator/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_addition "bash" "-c" "echo '3 4 +' | ./rpn_calculator | grep 'Result: 7'")
set_tests_properties(test_addition PROPERTIES  WORKING_DIRECTORY "/home/andre/my-project/rpn_calculator/build" _BACKTRACE_TRIPLES "/home/andre/my-project/rpn_calculator/CMakeLists.txt;11;add_test;/home/andre/my-project/rpn_calculator/CMakeLists.txt;0;")
add_test(test_power "bash" "-c" "echo '2 3 ^' | ./rpn_calculator | grep 'Result: 8'")
set_tests_properties(test_power PROPERTIES  WORKING_DIRECTORY "/home/andre/my-project/rpn_calculator/build" _BACKTRACE_TRIPLES "/home/andre/my-project/rpn_calculator/CMakeLists.txt;17;add_test;/home/andre/my-project/rpn_calculator/CMakeLists.txt;0;")
add_test(test_division "bash" "-c" "echo '10 2 /' | ./rpn_calculator | grep 'Result: 5'")
set_tests_properties(test_division PROPERTIES  WORKING_DIRECTORY "/home/andre/my-project/rpn_calculator/build" _BACKTRACE_TRIPLES "/home/andre/my-project/rpn_calculator/CMakeLists.txt;23;add_test;/home/andre/my-project/rpn_calculator/CMakeLists.txt;0;")
add_test(test_complex "bash" "-c" "echo '5 1 2 + 4 * + 3 -' | ./rpn_calculator | grep 'Result: 14'")
set_tests_properties(test_complex PROPERTIES  WORKING_DIRECTORY "/home/andre/my-project/rpn_calculator/build" _BACKTRACE_TRIPLES "/home/andre/my-project/rpn_calculator/CMakeLists.txt;29;add_test;/home/andre/my-project/rpn_calculator/CMakeLists.txt;0;")
