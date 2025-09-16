#include <iostream>
#include "fraction.h"
#include <cassert>

void testAddition() {
    Fraction a = {1, 2};
    Fraction b = {1, 4};
    Fraction result = add(a, b);
    assert(result.num == 3 && result.den == 4);
    std::cout << "TEST ADD: PASSED" << std::endl;
}

void testMultiplication() {
    Fraction a = {1, 2};
    Fraction b = {1, 3};
    Fraction result = multiply(a, b);
    assert(result.num == 1 && result.den == 6);
    std::cout << "TEST MULTIPLY: PASSED" << std::endl;
}

void testSimplify() {
    Fraction f = {4, 8};
    simplify(f);
    assert(f.num == 1 && f.den == 2);
    std::cout << "TEST SIMPLIFY: PASSED" << std::endl;
}

int main() {
    std::cout << "Running tests..." << std::endl;
    testAddition();
    testMultiplication();
    testSimplify();
    std::cout << "All tests passed!" << std::endl;
    return 0;
}
