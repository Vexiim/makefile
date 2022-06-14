main: main.o parent child
	gcc -o zaliczenie  main.o parent child
main.o: main.c
	gcc -c main.c
parent.o: parent.h parent.c
	gcc -c -o parent.o parent.c
child.o: child.h child.c
	gcc -c -o child.p child.c 
parent : parent.o
	ar rs parent parent.o
child: child.o
	ar rs child child.o
clean:
	rm -f *.o clean
all: main.o parent.o child.o
	gcc -o all main.o parent.o child.o
