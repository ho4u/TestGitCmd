BIN=./bin/
SRC=./src/

main : main.o mysum.o
	g++ -o $(BIN)main $(BIN)main.o $(BIN)mysum.o

test : test.o mysum.o
	g++ -o $(BIN)test $(BIN)test.o $(BIN)mysum.o

test.o : $(SRC)test.cpp $(SRC)catch.hpp
	g++ -c $(SRC)test.cpp -o $(BIN)test.o

main.o : $(SRC)main.cpp $(SRC)mysum.hpp
	g++ -c $(SRC)main.cpp -o $(BIN)main.o
	
mysum.o : $(SRC)mysum.cpp $(SRC)mysum.hpp
	g++ -c $(SRC)mysum.cpp -o $(BIN)mysum.o

clean : 
	rm $(BIN)main $(BIN)test $(BIN)main.o $(BIN)test.o $(BIN)mysum.o