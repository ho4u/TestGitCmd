BIN=./bin/
SRC=./src/

$(BIN)main : $(BIN)main.o $(BIN)mysum.o
	g++ -o $(BIN)main $(BIN)main.o $(BIN)mysum.o

$(BIN)test : $(BIN)test.o $(BIN)mysum.o
	g++ -o $(BIN)test $(BIN)test.o $(BIN)mysum.o

$(BIN)test.o : $(SRC)test.cpp $(SRC)catch.hpp
	g++ -c $(SRC)test.cpp -o $(BIN)test.o

$(BIN)main.o : $(SRC)main.cpp
	g++ -c $(SRC)main.cpp -o $(BIN)main.o
	
$(BIN)mysum.o : $(SRC)mysum.cpp
	g++ -c $(SRC)mysum.cpp -o $(BIN)mysum.o

clean : 
	rm $(BIN)main $(BIN)test $(BIN)main.o $(BIN)test.o $(BIN)mysum.o