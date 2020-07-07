.PHONY: all clean

all: victim.out caller.out victim.s

victim.s: victim.out
	objdump -drwC $< > $@ 

victim.out: victim.c 
	gcc $< -o $@

caller.out: caller.c
	gcc -I.. $< -o $@ 

run: caller.out
	sudo ./caller

clean:
	rm victim.out victim.s caller.out
