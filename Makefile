CXX=g++
CXXFLAGS = -Wall -g
all:main.cc
	$(CXX) $(CXXFLAGS) -o main main.cc
clean:
	rm *.o
