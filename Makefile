GTEST= -L/lib/googletest/lib/ -lgtest

default: run_all.o test.o
	ls /lib/googletest/lib/
	g++ *.o -o run_all.x -pthread  $(GTEST)
	./run_all.x
	@make clean

.cpp.o:
	g++ $< -c -I/lib/googletest/googletest/include/

clean:
	@rm *.o *.x
