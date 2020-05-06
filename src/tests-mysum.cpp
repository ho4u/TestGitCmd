#include "catch.hpp"
#include "mysum.hpp"

TEST_CASE( "mysum computed", "[mysum]" ) {
    REQUIRE( mysum(1, 0) == 1);
    REQUIRE( mysum(3, -15) == -12 );
    REQUIRE( mysum(20, 15) == 35 );
    REQUIRE( mysum(-10, 10) == 0 );
    REQUIRE( mysum(-25, -15) == -40 );
}

TEST_CASE( "print computed", "[print]" ) {
    REQUIRE( print() == 0);
    REQUIRE_FALSE( print());
}