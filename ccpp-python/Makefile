
PYCFLAGS=$(shell python3.10-config --cflags)
PYLDFLAGS=$(shell python3.10-config --ldflags)

embpy: embpy.o
	gcc -o $@ $< $(PYLDFLAGS) -lpython3.10

embpy.o: embpy.c
	gcc $(PYCFLAGS) -c $< -o $@

rundemo: embpy
	PYTHONPATH="$(PWD):$(PYTHONPATH)" ./embpy pymod multiply 2 3
