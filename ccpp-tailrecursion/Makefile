
default: tailrec tailrec.stripped

CFLAGS=-fPIC -O3 -std=c18 -Wall -Werror -static
LDFLAGS=-pie -flto -static -Bstatic

tailrec: fib.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

tailrec.stripped: tailrec
	strip -o $@ $<

clean:
	rm -f tailrec tailrec.stripped
