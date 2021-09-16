
#![no_std]
#![no_main]
#![feature(asm)] // give me asm!
#![feature(lang_items)] // let me set panic handlers.
#![feature(naked_functions)] // don't muck with the stack.

use core::slice::from_raw_parts;

// some ideas borrowed from:
// https://fasterthanli.me/series/making-our-own-executable-packer/part-12
// but I didn't want to write a packer, just use the asm! feature to call
// Linux syscalls directly.

// eh_personality function for unwinding, do nothing.
#[lang = "eh_personality"]
fn eh_personality() {}

// panic handler: just exit if we panic.
#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    exit(-1);
}

const LINUX_X64_SYS_WRITE : usize = 1;
const LINUX_X64_SYS_EXIT : usize = 60;

pub fn sys_write(fd: usize, string: &str) -> usize {

    let mut rval : usize = LINUX_X64_SYS_WRITE;
    unsafe {
        asm!(
            "syscall",
            in("rdi") fd,
            in("rsi") &(string.as_bytes()[0]) as *const u8,
            in("rdx") string.len(),
            inout("rax") rval,
            lateout("rcx") _, 
            lateout("r11") _,
            options(nostack)
        );
    }
    return rval;
}

pub fn syscall_test() {
   
    let hello = "Hello, World!\n";
    sys_write(1, hello);
}

pub fn exit(code: i32) -> ! {
    let syscall_number: usize = LINUX_X64_SYS_EXIT;
    unsafe {
        asm!(
            "syscall",
            in("rax") syscall_number,
            in("rdi") code,
            options(noreturn)
        );
    }
}

pub unsafe fn strlen(mut s: *const u8) -> usize {
    let mut count = 0;
    while *s != b'\0' {
        count += 1;
        s = s.add(1);
    }
    count
}

#[no_mangle]
#[naked]
pub unsafe extern "C" fn _start() {
    asm!("mov rdi, rsp", "call init", options(noreturn))
}

#[no_mangle]
pub unsafe fn init(stack_top: *const u8) {
    let argc = *(stack_top as *const u64);
    let argv = stack_top.add(8) as *const *const u8;
    let args = from_raw_parts(argv, argc as usize);
    
    let retval = main(args);

    exit(retval);
}

#[no_mangle]
pub fn main(args: &[*const u8]) -> i32 {

    for &arg in args {
        let arg = unsafe { from_raw_parts(arg, strlen(arg)) };
        match core::str::from_utf8(arg) {
        Ok(r) => sys_write(1, r),
        Err(_) => sys_write(1, "*** Argument not UTF-8 ***\n"),
        };
        sys_write(1, "\n");
    }

    syscall_test();
    return 0;
}
