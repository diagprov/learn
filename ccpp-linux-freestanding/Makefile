
CC?=gcc
CFLAGS=-O2 -g -Wall -Werror -ffreestanding -nostdlib
LDFLAGS=-g -ffreestanding -nostdlib # --entry=_start

OBJECTS=freestand.o

ARCH?=$(shell uname -p)
ifeq ($(ARCH),x86_64)
OBJECTS:=x64.o $(OBJECTS)
CFLAGS+= -masm=intel
endif
ifeq ($(ARCH),armv7l)
OBJECTS:=arm32.o $(OBJECTS)
endif


.PHONY: default clean rebuild

default: freestand

rebuild: clean default

freestand: $(OBJECTS)
	$(CC) $(LDFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf *.o freestand
