#include <iostream>
#include "mysum.hpp"

int main()
{
	std::cout << "Hello world" << std::endl;
	std::cout << "Enter x and y: ";  
	int x, y;
	std::cin >> x >> y;
	std::cout << "Sum of " << x << " + " << y << " = " << mysum(x, y) << std::endl;
	print();
	int z = substr("Hello time", 10,"time", 4);
	std::cout << z << std::endl;
	
	return 0;
}
