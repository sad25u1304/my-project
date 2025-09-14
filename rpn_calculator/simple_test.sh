#!/bin/bash
echo "=== ПРОСТОЕ ТЕСТИРОВАНИЕ ==="
echo "Просто запускаю калькулятор с разными выражениями:"
echo ""

expressions=(
    "3 4 +"
    "2 3 ^"
    "10 2 /"
    "5 1 2 + 4 * + 3 -"
)

for expr in "${expressions[@]}"; do
    echo "--- $expr ---"
    echo "$expr" | ./build/rpn_calculator
    echo ""
done

echo "=== ТЕСТИРОВАНИЕ ЗАВЕРШЕНО ==="
