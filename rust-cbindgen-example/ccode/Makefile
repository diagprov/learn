
TARGETS=ccode

CXX=clang++

LDFLAGS=-v -fPIC -fPIE -pie -g -Wl,-z,relro,-z,now
CXXFLAGS=-v -std=c++20 -Wall -fPIC -fPIE -g

CXX_SFLAGS=-std=c++20 -Wall -fPIC -fPIE

.PHONY: clean

all: $(TARGETS)

clean:
	rm -rf *.o $(TARGETS)

ccode: ccode.cpp 
	$(CXX) $(LDFLAGS) $^ -o $@ -L. -lrustproj

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c $^

