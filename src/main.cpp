#include <iostream>
#include "mysum.hpp"

int main()
{
	std::cout << "Hello world" << std::endl;
	std::cout << "Enter x and y: "; 
	int x, y;
	std::cin >> x >> y;
	std::cout << "Sum of " << x << " + " << y << " = " << mysum(x, y) << std::endl;
	
	return 0;
}