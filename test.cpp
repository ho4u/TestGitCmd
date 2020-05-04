#define CATCH_CONFIG_MAIN
#include "catch.hpp"
#include "mysum.hpp"

TEST_CASE( "mysum computed", "[factorial]" ) {
    REQUIRE( mysum(1, 0) == 2 );
    REQUIRE( mysum(3, -15) == -12 );
    REQUIRE( mysum(20, 15) == 35 );
}