
TARGETS=multiple_sbase multiple_diamond template_class

LDFLAGS=-g -Wall -Werror -fPIC -fPIE -pie
CXXFLAGS=-g -Wall -Werror -fPIC -fPIE

.PHONY: clean

all: $(TARGETS)

clean:
	rm -rf *.o $(TARGETS)

template_class: template_class.o
	clang++ $(LDFLAGS) -o $@ $^

multiple_diamond: multiple_diamond.o
	clang++ $(LDFLAGS) -o $@ $^

multiple_sbase: multiple_sbase.o
	clang++ $(LDFLAGS) -o $@ $^

%.o: %.cpp
	clang++ $(CXXFLAGS) -o $@ -c $^

