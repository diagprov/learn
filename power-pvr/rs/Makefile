
AS=as
RUSTLIBS=$(RUSTUP_HOME)toolchains/stable-powerpc64le-unknown-linux-gnu/lib/rustlib/powerpc64le-unknown-linux-gnu/lib/libstd-7e232c9c9bca57e9.rlib $(RUSTUP_HOME)toolchains/stable-powerpc64le-unknown-linux-gnu/lib/rustlib/powerpc64le-unknown-linux-gnu/lib/libunwind-b8892ba833aa6677.rlib $(RUSTUP_HOME)toolchains/stable-powerpc64le-unknown-linux-gnu/lib/rustlib/powerpc64le-unknown-linux-gnu/lib/libpanic_abort-e398b55c47a92caf.rlib $(RUSTUP_HOME)toolchains/stable-powerpc64le-unknown-linux-gnu/lib/rustlib/powerpc64le-unknown-linux-gnu/lib/libpanic_unwind-167b5e977a2ab35c.rlib

powerpvr: powerpvr.o powerpvr_asm.o
		ld -o powerpvr $< $(RUSTLIBS) -lc -ldl /usr/lib/gcc/ppc64le-redhat-linux/6.4.1/libstdc++.so -lpthread -lm

powerpvr.o: powerpvr.rs
		rustc --emit obj --crate-type bin  --emit=dep-info -C debuginfo=2 $<

powerpvr_asm.o: powerpvr_asm.S
		$(AS) -o $@ $<
