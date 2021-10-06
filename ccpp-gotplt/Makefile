
CC?=gcc
CFLAGS=-Wall -Werror -D_FORTIFY_SOURCE=2 -fstack-protector-all -O2
LDFLAGS=-fPIE -fPIC -pie -Wl,-z,relro,-z,now

default: X64TARGETS 

X64TARGETS: libtest64.so usetest64
X32TARGETS: libtest32.so usetest32

libtest64.so: libtest.c
	$(CC) $(LDFLAGS) $(CFLAGS) -shared -o libtest64.so libtest.c


usetest64: usetest.c libtest64.so
	$(CC) $(LDFLAGS) $(CFLAGS) -o usetest64 usetest.c -L $(PWD) -ltest64

libtest32.so: libtest.c
	$(CC) $(LDFLAGS) $(CFLAGS) -m32 -shared -o libtest32.so libtest.c

usetest32: usetest.c libtest32.so
	$(CC) $(LDFLAGS) $(CFLAGS) -m32 -o usetest32 usetest.c -L $(PWD) -ltest32

clean:
	rm -rf usetest64 libtest64.so usetest32 libtest32.so
