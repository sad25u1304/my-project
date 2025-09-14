cmake_minimum_required(VERSION 3.10)
project(RPNCalculator)

include_directories(include)
add_executable(rpn_calculator src/main.cpp src/rpn.cpp)

# ПРОСТЫЕ И РАБОЧИЕ ТЕСТЫ
enable_testing()

# Тест 1: Сложение
add_test(NAME test_addition
    COMMAND bash -c "echo '3 4 +' | ./rpn_calculator | grep 'Result: 7'"
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)

# Тест 2: Возведение в степень (ТВОЯ ФИЧА!)
add_test(NAME test_power
    COMMAND bash -c "echo '2 3 ^' | ./rpn_calculator | grep 'Result: 8'"
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)

# Тест 3: Деление
add_test(NAME test_division
    COMMAND bash -c "echo '10 2 /' | ./rpn_calculator | grep 'Result: 5'"
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)

# Тест 4: Сложное выражение
add_test(NAME test_complex
    COMMAND bash -c "echo '5 1 2 + 4 * + 3 -' | ./rpn_calculator | grep 'Result: 14'"
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)
