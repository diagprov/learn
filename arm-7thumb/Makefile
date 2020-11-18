

default: thumbtest

thumbtest: main.o adder.o
	arm-linux-gnueabi-gcc -o $@ $^ -lc

main.o: main.c
	arm-linux-gnueabi-gcc -c $^ -o $@

adder.o: adder.S
	arm-linux-gnueabi-gcc -c $^ -o $@


clean:
	rm -rf *.o thumbtest

install_devtools_ubuntu:
	sudo apt-get install crossbuild-essential-armel
