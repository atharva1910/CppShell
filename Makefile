CC=g++
CFLAGS = -Wall -g
all:
	$(CC) $(CFLAGS) -o sh main.o
main:
	g++ -o main.cc
clean:
	rm *.o
