# For Complex Projects

frontend: main.c
	gcc -E main.c -o main.i
middleend: main.i
	gcc -S main.i -o main.s
backend: main.s
	gcc -c main.s -o main.o
linker: main.o
	gcc -o main main.o

build:
	make frontend
	make middleend
	make backend
	make linker

run: main
	./main

build_run:
	make build
	make run
