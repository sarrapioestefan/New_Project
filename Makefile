# Makefile for building a simple C application

CC = gcc
CFLAGS = -Wall -Werror

# Target for the final executable
all: main

# Target to create the executable from the object file
main: main.o
	$(CC) -o main main.o

# Target to create the object file from the source file
main.o: main.c
	$(CC) $(CFLAGS) -c main.c

# Clean up generated files
clean:
	rm -f main main.o