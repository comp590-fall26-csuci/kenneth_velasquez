#include "fibonacci.h"
#include "utest.h"

UTEST_MAIN()

UTEST(fibonacci, terms_1_through_10)
{
    int expected[] = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55};
        
    for (int i = 1; i <= 10; i++) {
        EXPECT_EQ(expected[i], fibonacci(i));
    }
}
