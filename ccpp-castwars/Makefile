
TARGETS=castwars

CXX?=clang++

LDFLAGS=-Wall -Werror -Wpedantic -fPIC -fPIE -pie -g
CXXFLAGS=-std=c++20 -Wall -Werror -Wpedantic -fPIC -fPIE -g -D_FORTIFY_SOURCE=1 -O2

CXX_SFLAGS=-std=c++20 -Wall -Werror -fPIC -fPIE

.PHONY: clean

all: $(TARGETS)

clean:
	rm -rf *.o $(TARGETS)

castwars: castwars.o
	$(CXX) $(LDFLAGS) $< -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c $^

