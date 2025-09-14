#!/bin/bash
echo "🧪 ТЕСТИРУЕМ RPN КАЛЬКУЛЯТОР..."
echo ""

test_cases=(
    "3 4 +:7.0"
    "2 3 ^:8.0"
    "10 2 /:5.0"
    "5 1 2 + 4 * + 3 -:14.0"
)

all_passed=true

for test_case in "${test_cases[@]}"; do
    expression=${test_case%:*}
    expected=${test_case#*:}
    
    echo "Тест: $expression"
    result=$(echo "$expression" | ./build/rpn_calculator 2>/dev/null | grep "Result" | awk '{print $2}')
    
    if [ "$result" == "$expected" ]; then
        echo "✅ ПРОШЕЛ: $expression = $result"
    else
        echo "❌ ПРОВАЛ: $expression = $result (ожидалось: $expected)"
        all_passed=false
    fi
    echo ""
done

if [ "$all_passed" = true ]; then
    echo "🎉 ВСЕ ТЕСТЫ ПРОЙДЕНЫ!"
    exit 0
else
    echo "💥 НЕКОТОРЫЕ ТЕСТЫ ПРОВАЛИЛИСЬ!"
    exit 1
fi
