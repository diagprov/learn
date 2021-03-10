
TARGETS=multiple_sbase

.PHONY: clean

all: $(TARGETS)

clean:
	rm -rf *.o $(TARGETS)

multiple_sbase: multiple_sbase.o
	clang++ -g -Wall -Werror -o $@ $^

%.o: %.cpp
	clang++ -g -Wall -Werror -o $@ -c $^

