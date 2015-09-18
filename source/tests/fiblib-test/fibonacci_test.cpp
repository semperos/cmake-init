
#include <fiblib/Fibonacci.h>

TEST_CASE( "Factorials are computed", "[factorial]" ) {
    REQUIRE( fib(0) == 0 );
    REQUIRE( fib(1) == 1 );
    REQUIRE( fib(2) == 1 );
    REQUIRE( fib(8) == 21 );
}
