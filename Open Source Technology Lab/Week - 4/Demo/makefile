test: mainprg.o add.o sub.o mult.o div.o
	gcc mainprg.o add.o sub.o mult.o div.o -o test
add.o: add.c maths.h
	gcc -c add.c
sub.o: sub.c maths.h
	gcc -c sub.c
mult.o: mult.c maths.h
	gcc -c mult.c
div.o: div.c maths.h
	gcc -c div.c
mainprg.o: mainprg.c maths.h
	gcc -c mainprg.c
