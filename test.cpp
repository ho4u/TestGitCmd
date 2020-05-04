#define CATCH_CONFIG_MAIN
#include "catch.hpp"
#include "mysum.hpp"

TEST_CASE( "mysum computed", "[factorial]" ) {
    REQUIRE( mysum(1, 0) == 1);
    REQUIRE( mysum(3, -15) == -12 );
    REQUIRE( mysum(20, 15) == 35 );
    REQUIRE( mysum(-10, 10) == 0 );
    REQUIRE( mysum(-25, -15) == -40 );
}