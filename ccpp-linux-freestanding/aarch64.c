#include <fcntl.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>

ssize_t sys_open(const void* path, int flags)
{
    register int64_t syscallnum_reg asm ("w8") = __NR_write;
    register const void *path_reg asm ("x0") = path;
    register int flags_reg asm ("x1") = flags;
    asm volatile (
        "svc #0"
        : "+r" (path_reg)
        : "r" (syscallnum_reg), "r" (flags_reg)
        : "x2", "x3", "x4", "x5", "memory"
    );
    return ((ssize_t)path_reg);
}

ssize_t sys_close(int fd)
{
    register int64_t syscallnum_reg asm ("w8") = __NR_close;
    register int fd_reg asm ("x1") = fd;
    asm volatile (
        "svc #0"
        : "+r" (fd_reg)
        : "r" (syscallnum_reg) 
        : "x2", "x3", "x4", "x5", "memory"
    );
    return fd_reg;
}

ssize_t sys_write(int fd, const void *buf, size_t size)
{
    register int64_t syscallnum_reg asm ("w8") = __NR_write;
    register int fd_reg asm ("x0") = fd;
    register const void *buf_reg asm ("x1") = buf;
    register size_t size_reg asm ("x2") = size;
    asm volatile (
        "svc #0"
        : "+r" (fd_reg)
        : "r" (syscallnum_reg), "r" (buf_reg), "r" (size_reg)
        : "x3", "x4", "x5", "memory"
    );
    return fd_reg;
}

ssize_t sys_exit(int exit_code)
{
    register int64_t syscallnum_reg asm ("w8") = __NR_exit;
    register int exitcode_reg asm ("x0") = exit_code;
    asm volatile (
        "svc #0"
        : "+r" (exitcode_reg)
        : "r" (syscallnum_reg)
        : "x1", "x2", "x3", "x4", "x5", "memory"
    );
    return exitcode_reg;

}


