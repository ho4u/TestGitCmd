BIN=./bin/
SRC=./src/
CC_FLAGS=g++ -ggdb 

$(BIN)main : $(BIN)main.o $(BIN)mysum.o
	$(CC_FLAGS) -o $(BIN)main $(BIN)main.o $(BIN)mysum.o

$(BIN)tests-mysum : $(BIN)tests-mysum.o $(BIN)tests-main.o $(BIN)mysum.o
	$(CC_FLAGS) -o $(BIN)tests-mysum $(BIN)tests-mysum.o $(BIN)tests-main.o $(BIN)mysum.o

$(BIN)tests-mysum.o : $(SRC)tests-mysum.cpp
	$(CC_FLAGS) -c $(SRC)tests-mysum.cpp -o $(BIN)tests-mysum.o

$(BIN)tests-main.o : $(SRC)tests-main.cpp $(SRC)catch.hpp
	$(CC_FLAGS) -c $(SRC)tests-main.cpp -o $(BIN)tests-main.o

$(BIN)main.o : $(SRC)main.cpp
	$(CC_FLAGS) -c $(SRC)main.cpp -o $(BIN)main.o
	
$(BIN)mysum.o : $(SRC)mysum.cpp
	$(CC_FLAGS) -c $(SRC)mysum.cpp -o $(BIN)mysum.o

clean : 
	rm $(BIN)main $(BIN)tests-mysum $(BIN)main.o $(BIN)tests-mysum.o \
	$(BIN)tests-main.o $(BIN)mysum.o 