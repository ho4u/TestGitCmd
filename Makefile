BIN = bin/
SRC = src/
CC_FLAGS = g++ -ggdb 

all : main tests-mysum files

main : $(BIN)main.o $(BIN)mysum.o
	$(CC_FLAGS) $(BIN)main.o $(BIN)mysum.o -o $(BIN)$@

tests-mysum : $(BIN)tests-mysum.o $(BIN)tests-main.o $(BIN)mysum.o
	$(CC_FLAGS) $(BIN)tests-mysum.o $(BIN)tests-main.o $(BIN)mysum.o -o $(BIN)$@ 

files : $(BIN)files.o
	$(CC_FLAGS) $(BIN)files.o  -o $(BIN)$@

$(BIN)%.o: $(SRC)%.cpp | $(BIN)
	$(CC_FLAGS) -c $< -o $@

$(BIN):
	mkdir -p $@

clean : 
	-rm $(BIN)main $(BIN)tests-mysum $(BIN)files $(BIN)*.o