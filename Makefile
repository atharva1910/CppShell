CXX=g++
CXXFLAGS = -Wall -g
all:main

main:classes.o mainFunctions.o main.o 
	$(CXX) classes.o main.o mainFunctions.o -o main

main.o:main.cc classes.h
	$(CXX) $(CXXFLAGS) -c main.cc

mainFunctions.o:mainFunctions.cc classes.h
	$(CXX) $(CXXFLAGS) -c mainFunctions.cc

classes.o:classes.cc classes.h
	$(CXX) $(CXXFLAGS) -c classes.cc
clean:
	rm *.o main
