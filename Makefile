CC=g++
CFLAGS = -Wall -g
all:main.o
	$(CC) $(CFLAGS) -c main.o
main.o:main.cc
	$(CC) -c main.cc
clean:
	rm *.o
