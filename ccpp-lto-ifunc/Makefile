
default: lto_clang lto_gcc

.PHONY: clean

clean:
	rm -rf *.o lto_clang lto_gcc

lto_clang: lto_clang.o
	clang -flto -Wall -Werror -o $@ $<

lto_clang.o: lto.c
	clang -flto -Wall -Werror -o $@ -c $<

lto_gcc: lto_gcc.o
	gcc -flto -Wall -Werror -o $@ $<

lto_gcc.o: lto.c
	gcc -flto -Wall -Werror -o $@ -c $<
