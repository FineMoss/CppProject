#include <gtest/gtest.h>

// Example function to test
int Add(int a, int b) {
    return a + b;
}

// Test case
TEST(AddTest, PositiveNumbers) {
    EXPECT_EQ(Add(1, 2), 3);  // Test case: Add(1, 2) should be 3
}

TEST(AddTest, NegativeNumbers) {
    EXPECT_EQ(Add(-1, -2), -3);  // Test case: Add(-1, -2) should be -3
}

TEST(AddTest, Zero) {
    EXPECT_EQ(Add(0, 0), 0);  // Test case: Add(0, 0) should be 0
}
