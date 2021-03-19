
default: tailrec tailrec.stripped

CFLAGS=-fPIC -O3 -std=c18 -Wall -Werror
LDFLAGS=-pie -flto

tailrec: fib.c
	clang $(CFLAGS) $(LDFLAGS) -o $@ $^

tailrec.stripped: tailrec
	strip -o $@ $<

clean:
	rm -f tailrec tailrec.stripped
