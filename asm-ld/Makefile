
TARGETS=hello_x64

CC=gcc
LD=ld
CXX=clang++

.PHONY: clean

# https://users.informatik.haw-hamburg.de/~krabat/FH-Labor/gnupro/5_GNUPro_Utilities/c_Using_LD/ldLinker_scripts.html

all: $(TARGETS)

clean:
	rm -rf *.o $(TARGETS)

hello_x64.o: hello_x64.S
	gcc -ffreestanding -nostdlib -c $< -o $@

hello_x64: hello_x64.o
	ld -T x86_64.lds $< -o $@ 

hello_arm.o: hello_arm.S
	gcc -ffreestanding -nostdlib -c $< -o $@

hello_arm: hello_arm.o
	ld -T arm.lds $< -o $@ 

hello_aarch64.o: hello_aarch64.S
	gcc -ffreestanding -nostdlib -c $< -o $@

hello_aarch64: hello_aarch64.o
	ld -T aarch64.lds $< -o $@ 
