
TARGETS=multiple_sbase multiple_diamond template_class

.PHONY: clean

all: $(TARGETS)

clean:
	rm -rf *.o $(TARGETS)

template_class: template_class.o
	clang++ -g -Wall -Werror -o $@ $^

multiple_diamond: multiple_diamond.o
	clang++ -g -Wall -Werror -o $@ $^

multiple_sbase: multiple_sbase.o
	clang++ -g -Wall -Werror -o $@ $^

%.o: %.cpp
	clang++ -g -Wall -Werror -o $@ -c $^

