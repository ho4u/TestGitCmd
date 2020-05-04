main : main.o mysum.o
	g++ -o main main.o mysum.o

test : test.o mysum.o
	g++ -o test test.o mysum.o

main.o : main.cpp mysum.hpp
	g++ -c main.cpp

test.o : test.cpp catch.hpp
	g++ -c test.cpp
	
mysum.o : mysum.cpp mysum.hpp
	g++ -c mysum.cpp

clean : 
	rm main test main.o test.o mysum.o