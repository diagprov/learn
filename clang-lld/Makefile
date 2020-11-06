
default: hello

.PHONY: clean

clean: 
	rm -rf hello hello.o

hello: hello.o
	ld.lld --hash-style=gnu --build-id --eh-frame-hdr -m elf_x86_64 -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o $@ /usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../lib64/crt1.o /usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../lib64/crti.o /usr/bin/../lib/gcc/x86_64-redhat-linux/10/crtbegin.o -L/usr/bin/../lib/gcc/x86_64-redhat-linux/10 -L/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../lib64 -L/usr/bin/../lib64 -L/lib/../lib64 -L/usr/lib/../lib64 -L/usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../.. -L/usr/bin/../lib -L/lib -L/usr/lib $< -lgcc --as-needed -lgcc_s --no-as-needed -lc -lgcc --as-needed -lgcc_s --no-as-needed /usr/bin/../lib/gcc/x86_64-redhat-linux/10/crtend.o /usr/bin/../lib/gcc/x86_64-redhat-linux/10/../../../../lib64/crtn.o

hello.o: hello.c
	clang -c $< -o $@
