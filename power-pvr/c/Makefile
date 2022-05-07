
default: powerpvrc

clean:
	rm -rf powerpvrc

rebuild: clean default

powerpvrc: powerpvr-func.c
	$(CC) -std=gnu11 -mcpu=power9 -mtune=power9 -fstack-protector -Wl,-z,relro,-z,now -Wall -O2 -static $< -o $@
	objcopy --only-keep-debug $@ $@.debug
	objcopy --strip-all $@
	objcopy --add-gnu-debuglink=$@.debug $@

