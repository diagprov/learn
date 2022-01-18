
TARGETS=except except.s

CXX=clang++

LDFLAGS=-v -fPIC -fPIE -pie -g
CXXFLAGS=-v -std=c++20 -Wall -Werror -fPIC -fPIE -g -D_FORTIFY_SOURCE=1 -O2

CXX_SFLAGS=-std=c++20 -Wall -Werror -fPIC -fPIE

.PHONY: clean

all: $(TARGETS)

clean:
	rm -rf *.o $(TARGETS)

except: except.o
	$(CXX) $(LDFLAGS) $< -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c $^

except.s: except.cpp
	$(CXX) $(CXX_SFLAGS) -masm=intel -S -o $@ -c $^
