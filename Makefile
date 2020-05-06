BIN=./bin/
SRC=./src/

$(BIN)main : $(BIN)main.o $(BIN)mysum.o
	g++ -o $(BIN)main $(BIN)main.o $(BIN)mysum.o

$(BIN)tests-mysum : $(BIN)tests-mysum.o $(BIN)tests-main.o $(BIN)mysum.o
	g++ -o $(BIN)tests-mysum $(BIN)tests-mysum.o $(BIN)tests-main.o $(BIN)mysum.o

$(BIN)tests-mysum.o : $(SRC)tests-mysum.cpp
	g++ -c $(SRC)tests-mysum.cpp -o $(BIN)tests-mysum.o

$(BIN)tests-main.o : $(SRC)tests-main.cpp $(SRC)catch.hpp
	g++ -c $(SRC)tests-main.cpp -o $(BIN)tests-main.o

$(BIN)main.o : $(SRC)main.cpp
	g++ -c $(SRC)main.cpp -o $(BIN)main.o
	
$(BIN)mysum.o : $(SRC)mysum.cpp
	g++ -c $(SRC)mysum.cpp -o $(BIN)mysum.o

clean : 
	rm $(BIN)main $(BIN)tests-mysum $(BIN)main.o $(BIN)tests-mysum.o \
	$(BIN)tests-main.o $(BIN)mysum.o 