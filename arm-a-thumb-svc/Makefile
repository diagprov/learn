
default: thumbtest

thumbtest: main.o thumb.o
	arm-linux-gnueabihf-gcc-10 -lc -o $@ $^

main.o: main.c
	arm-linux-gnueabihf-gcc-10 -c $^ -o $@

thumb.o: thumb.S
	arm-linux-gnueabihf-gcc-10 -c $^ -o $@

clean:
	rm -rf *.o thumbtest

install_devtools_ubuntu:
	sudo apt-get install crossbuild-essential-armel
