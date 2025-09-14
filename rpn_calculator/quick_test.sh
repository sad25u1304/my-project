#!/bin/bash
echo "=== ТЕСТИРОВАНИЕ RPN КАЛЬКУЛЯТОРА ==="
echo ""

echo "1. 3 4 +"
echo "3 4 +" | ./build/rpn_calculator
echo ""

echo "2. 2 3 ^" 
echo "2 3 ^" | ./build/rpn_calculator
echo ""

echo "3. 10 2 /"
echo "10 2 /" | ./build/rpn_calculator
echo ""

echo "4. 5 1 2 + 4 * + 3 -"
echo "5 1 2 + 4 * + 3 -" | ./build/rpn_calculator
echo ""

echo "=== ТЕСТИРОВАНИЕ ЗАВЕРШЕНО ==="
