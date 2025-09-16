#ifndef FRACTION_H
#define FRACTION_H

struct Fraction {
    int num;
    int den;
};

Fraction add(Fraction a, Fraction b);
Fraction multiply(Fraction a, Fraction b);
void simplify(Fraction &f);

#endif
