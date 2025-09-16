#include "rpn.h"
#include <sstream>
#include <stdexcept>
#include <stack>
#include <cmath>

double evaluate_rpn(const std::string& expression) {
    std::istringstream iss(expression);
    std::string token;
    std::stack<double> stack;
    
    while (iss >> token) {
        if (token == "+" || token == "-" || token == "*" || token == "/" || token == "^" || token == "%") {
            if (stack.size() < 2) throw std::invalid_argument("Not enough operands");
            double b = stack.top(); stack.pop();
            double a = stack.top(); stack.pop();
            
            if (token == "+") stack.push(a + b);
            else if (token == "-") stack.push(a - b);
            else if (token == "*") stack.push(a * b);
            else if (token == "/") {
                if (b == 0) throw std::invalid_argument("Division by zero");
                stack.push(a / b);
            }
            else if (token == "^") stack.push(std::pow(a, b));
            else if (token == "%") {
                if (std::floor(a) != a || std::floor(b) != b) throw std::invalid_argument("Modulo requires integers");
                if (b == 0) throw std::invalid_argument("Modulo by zero");
                stack.push(static_cast<int>(a) % static_cast<int>(b));
            }
        }
        else if (token == "!") {
            if (stack.size() < 1) throw std::invalid_argument("Not enough operands for factorial");
            double a = stack.top(); stack.pop();
            if (a < 0 || std::floor(a) != a) throw std::invalid_argument("Factorial requires non-negative integer");
            double fact = 1;
            for (int i = 2; i <= a; ++i) fact *= i;
            stack.push(fact);
        }
        else {
            try {
                stack.push(std::stod(token));
            } catch (...) {
                throw std::invalid_argument("Invalid token: " + token);
            }
        }
    }
    
    if (stack.size() != 1) throw std::invalid_argument("Invalid expression");
    return stack.top();
}
