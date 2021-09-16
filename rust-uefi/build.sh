#!/bin/sh

rustc +nightly --emit obj -O src/efi.rs
/opt/cross/bin/x86_64-efi-pe-ld --oformat pei-x86-64 --subsystem 10 -pie -e efi_main efi.o -o rust-uefi.efi
cp rust-uefi.efi fs/ -v

