#include <inttypes.h>
#include <fcntl.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>

ssize_t sys_open(const void* path, int flags)
{
    register int64_t syscallnum_reg asm ("rax") = __NR_write;
    register const void *path_reg asm ("rdi") = path;
    register int flags_reg asm ("rsi") = flags;
    asm volatile (
        "syscall"
        : "+r" (syscallnum_reg)
        : "r" (path_reg), "r" (flags_reg)
        : "rdx", "rcx", "r11", "memory"
    );
    return syscallnum_reg;
}

ssize_t sys_close(int fd)
{
    register int64_t syscallnum_reg asm ("rax") = __NR_close;
    register int fd_reg asm ("rdi") = fd;
    asm volatile (
        "syscall"
        : "+r" (syscallnum_reg)
        : "r" (fd_reg) 
        : "rdx", "rcx", "r11", "memory"
    );
    return syscallnum_reg;
}

ssize_t sys_write(int fd, const void *buf, size_t size)
{
    register int64_t syscallnum_reg asm ("rax") = __NR_write;
    register int fd_reg asm ("rdi") = fd;
    register const void *buf_reg asm ("rsi") = buf;
    register size_t size_reg asm ("rdx") = size;
    asm volatile (
        "syscall"
        : "+r" (syscallnum_reg)
        : "r" (fd_reg), "r" (buf_reg), "r" (size_reg)
        : "rcx", "r11", "memory"
    );
    return syscallnum_reg;
}

ssize_t sys_exit(int exit_code)
{
    register int64_t syscallnum_reg asm ("rax") = __NR_exit;
    register int exitcode_reg asm ("rdi") = exit_code;
    asm volatile (
        "syscall"
        : "+r" (syscallnum_reg)
        : "r" (exitcode_reg)
        : "rdx", "rcx", "r11", "memory"
    );
    return syscallnum_reg;

}

