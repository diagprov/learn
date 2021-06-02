
TARGETS=multiple_sbase multiple_diamond template_class

LDFLAGS=-Wall -Werror -fPIC -fPIE -pie -g
CXXFLAGS=-Wall -Werror -fPIC -fPIE -g

.PHONY: clean

all: $(TARGETS)

clean:
	rm -rf *.o $(TARGETS)

template_class: template_class.o
	g++ $(LDFLAGS) -o $@ $^

multiple_diamond: multiple_diamond.o
	g++ $(LDFLAGS) -o $@ $^

multiple_sbase: multiple_sbase.o
	g++ $(LDFLAGS) -o $@ $^

%.o: %.cpp
	g++ $(CXXFLAGS) -o $@ -c $^

