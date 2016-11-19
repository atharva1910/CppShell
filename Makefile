CXX=g++
CXXFLAGS = -Wall -g
all:main

main:main.o classes.o 
	$(CXX) classes.o main.o -o main
main.o:main.cc classes.h
	$(CXX) $(CXXFLAGS) -c main.cc 
classes.o:classes.cc classes.h
	$(CXX) $(CXXFLAGS) -c classes.cc
clean:
	rm *.o main
