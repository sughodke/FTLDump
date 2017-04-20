.PHONY: all

all: lib example

lib:
	cc -c xnumem.c xnumem.h 

example:
	cc example_main.c xnumem.o -O example

ftl:
	cc ftl.c xnumem.o -O scan_ftl

clean:
	rm -rf *.o a.out
