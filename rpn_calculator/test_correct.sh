#!/bin/bash
echo "🧪 ТЕСТИРУЕМ RPN КАЛЬКУЛЯТОР..."
echo ""

test_cases=(
    "3 4 +:7"
    "2 3 ^:8"
    "10 2 /:5"
    "5 1 2 + 4 * + 3 -:14"
)

all_passed=true

for test_case in "${test_cases[@]}"; do
    expression=${test_case%:*}
    expected=${test_case#*:}
    
    echo "Тест: $expression"
    
    # Получаем полный вывод калькулятора
    output=$(echo "$expression" | ./build/rpn_calculator 2>/dev/null)
    
    # Извлекаем число из строки "Result: X.X"
    result=$(echo "$output" | grep "Result" | awk '{print $2}' | sed 's/\.0$//')
    
    if [ "$result" == "$expected" ]; then
        echo "✅ ПРОШЕЛ: $expression = $result"
    else
        echo "❌ ПРОВАЛ"
        echo "   Вывод: $output"
        echo "   Получено: $result"
        echo "   Ожидалось: $expected"
        all_passed=false
    fi
    echo ""
done

if [ "$all_passed" = true ]; then
    echo "🎉 ВСЕ ТЕСТЫ ПРОЙДЕНЫ!"
    exit 0
else
    echo "💥 ТЕСТЫ ПРОВАЛИЛИСЬ!"
    exit 1
fi
