
default: cweird cweird-llvm

cweird: cweird.c
	gcc -std=c99 -Wall -Werror -o $@ $^

cweird.ll: cweird.c
	clang -S -emit-llvm $^

cweird.bc: cweird.ll
	llvm-as $^ -o $@

cweird-llvm.S: cweird.bc
	llc -o $@ $^

cweird-llvm: cweird-llvm.S
	clang -o $@ $^

clean:
	rm -f cweird *.o *.ll *.bc *.S cweird-llvm
