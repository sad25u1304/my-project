#include "fraction.h"

int findGCD(int a, int b) {
    while (b != 0) {
        int temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}

Fraction add(Fraction a, Fraction b) {
    Fraction result;
    result.num = (a.num * b.den) + (b.num * a.den);
    result.den = a.den * b.den;
    simplify(result);
    return result;
}

Fraction multiply(Fraction a, Fraction b) {
    Fraction result;
    result.num = a.num * b.num;
    result.den = a.den * b.den;
    simplify(result);
    return result;
}

void simplify(Fraction &f) {
    if (f.den < 0) {
        f.num = -f.num;
        f.den = -f.den;
    }
    int gcd = findGCD((f.num < 0) ? -f.num : f.num, f.den);
    f.num = f.num / gcd;
    f.den = f.den / gcd;
}
