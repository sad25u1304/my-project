#include <gtest/gtest.h>
#include "../include/rpn.h"

TEST(RPNTest, BasicOperations) {
    EXPECT_DOUBLE_EQ(evaluate_rpn("3 4 +"), 7.0);
    EXPECT_DOUBLE_EQ(evaluate_rpn("10 3 -"), 7.0);
    EXPECT_DOUBLE_EQ(evaluate_rpn("5 2 *"), 10.0);
    EXPECT_DOUBLE_EQ(evaluate_rpn("10 2 /"), 5.0);
}

TEST(RPNTest, PowerOperation) {
    EXPECT_DOUBLE_EQ(evaluate_rpn("2 3 ^"), 8.0);
    EXPECT_DOUBLE_EQ(evaluate_rpn("4 2 ^"), 16.0);
}

TEST(RPNTest, ErrorHandling) {
    EXPECT_THROW(evaluate_rpn("1 0 /"), std::invalid_argument);
    EXPECT_THROW(evaluate_rpn("2 +"), std::invalid_argument);
}