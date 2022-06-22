
nosignal: main.o seccomp.o
	clang -o $@ -Wall -Werror -O2 $^

%.o: %.c
	clang -std=c11 -Wall -Werror -o $@ -c $<

clean:
	rm -rf *.o nosignal

rebuild: clean nosignal
