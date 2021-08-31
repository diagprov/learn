OUTPUT_FORMAT("elf64-x86-64", "elf64-x86-64",
	      "elf64-x86-64")
OUTPUT_ARCH(i386:x86-64)
ENTRY(_start)

/* https://users.informatik.haw-hamburg.de/~krabat/FH-Labor/gnupro/5_GNUPro_Utilities/c_Using_LD/ldLinker_scripts.html */

PHDRS
{
    headers PT_PHDR PHDRS ;
    text PT_LOAD PHDRS ;
    data PT_LOAD ;
}

SECTIONS
{
    . = SIZEOF_HEADERS;
    . = 0x20000;
    .text : { *(.text) } :text
    . = 0x40000;
    .data : { *(.data) } :data
    .bss : { *(.bss) } :data

}
