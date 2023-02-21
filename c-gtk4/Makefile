

menutest: menu.c
	gcc `pkg-config --cflags gtk4` `pkg-config --libs gtk4` -o $@ $^

clean:
	rm -f menutest
