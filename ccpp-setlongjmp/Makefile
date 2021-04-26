
default: setlongjmp.elf setlongjmp.noopt.elf setlongjmp.stripped.elf

CC?=gcc
CFLAGSOPT=-fPIC -O3 -std=c18 -Wall -Werror
CFLAGS_NOPT=-fPIC -O0 -g -std=c18 -Wall -Werror
LDFLAGS=-pie -flto 
LDFLAGS_NOPT=-pie -g

setlongjmp.elf: setlongjmp.c
	$(CC) $(CFLAGSOPT) $(LDFLAGS) -o $@ $^

setlongjmp.noopt.elf: setlongjmp.c
	$(CC) $(CFLAGS_NOPT) $(LDFLAGS_NOPT) -o $@ $^

setlongjmp.stripped.elf: setlongjmp.elf
	strip -o $@ $<

clean:
	rm -f *.elf
