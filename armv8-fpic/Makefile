
CFLAGS=-O2 -fPIC -fPIE
ASFLAGS=-fno-asynchronous-unwind-tables
LDFLAGS=-O2 -fPIC -pie

default: progglobals_clang progglobals_clang.S progglobals_gcc progglobals_gcc.S

clean:
	rm -f progglobals_clang progglobals_gcc *.o *.S

progglobals_clang: progglobals_clang.o
	clang $(LDFLAGS) -o $@ $<

progglobals_clang.S: progglobals.c
	clang $(CFLAGS) $(ASFLAGS) -S $< -o $@

progglobals_clang.o: progglobals.c
	clang $(CFLAGS) -c $< -o $@

progglobals_gcc: progglobals_gcc.o
	gcc $(LDFLAGS) -o $@ $<

progglobals_gcc.S: progglobals.c
	gcc $(CFLAGS) $(ASFLAGS) -S $< -o $@

progglobals_gcc.o: progglobals.c
	gcc $(CFLAGS) -c $< -o $@




