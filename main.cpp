#include <iostream>
#include "fraction.h"

int main() {
    Fraction f1 = {1, 2};
    Fraction f2 = {1, 4};

    Fraction sum = add(f1, f2);
    std::cout << "Sum: " << sum.num << "/" << sum.den << std::endl;

    Fraction product = multiply(f1, f2);
    std::cout << "Product: " << product.num << "/" << product.den << std::endl;

    return 0;
}
