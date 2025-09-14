cmake_minimum_required(VERSION 3.10)
project(RPNCalculator)

include_directories(include)
add_executable(rpn_calculator src/main.cpp src/rpn.cpp)

# Тесты
enable_testing()

add_test(NAME test_addition
    COMMAND bash -c "echo '3 4 +' | ./rpn_calculator | grep 'Result: 7'"
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)

add_test(NAME test_power
    COMMAND bash -c "echo '2 3 ^' | ./rpn_calculator | grep 'Result: 8'"
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)

add_test(NAME test_division
    COMMAND bash -c "echo '10 2 /' | ./rpn_calculator | grep 'Result: 5'"
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)

add_test(NAME test_complex
    COMMAND bash -c "echo '5 1 2 + 4 * + 3 -' | ./rpn_calculator | grep 'Result: 14'"
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)

add_test(NAME test_factorial
    COMMAND bash -c "echo '5 !' | ./rpn_calculator | grep 'Result: 120'"
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)

add_test(NAME test_modulo
    COMMAND bash -c "echo '10 3 %' | ./rpn_calculator | grep 'Result: 1'"
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)