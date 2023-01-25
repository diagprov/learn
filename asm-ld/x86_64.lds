OUTPUT_FORMAT("elf64-x86-64", "elf64-x86-64",
	      "elf64-x86-64")
OUTPUT_ARCH(i386:x86-64)
ENTRY(_start)

/* https://users.informatik.haw-hamburg.de/~krabat/FH-Labor/gnupro/5_GNUPro_Utilities/c_Using_LD/ldLinker_scripts.html */

PHDRS
{
    headers PT_PHDR PHDRS ;
    text PT_LOAD PHDRS ;
    /*newsegment contains some code. Mark it PT_LOAD (dynamic linker must load)
      and set flags = PF_X | PF_R (PF_W=0x02); */
    newsegment PT_LOAD FLAGS(0x5);
    data PT_LOAD ;
}

SECTIONS
{
    . = SIZEOF_HEADERS;
    . = 0x20000;
    .text : { *(.text) } :text
    
    . = 0x100000;
    /* map "custom" section to "newsegment" */
    /* note that { ... } collapses actual mapped segments as part of objects; 
       one can pick fileblah.o(text) for example */
    .custom : ALIGN(8) { KEEP( *(.custom) )} :newsegment

    . = 0x400000;
    .data : { *(.data) } :data
    .bss : { *(.bss) } :data

    /DISCARD/ : {*(.note.*)}
}
