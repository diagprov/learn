#include <fcntl.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>

ssize_t sys_open(const void* path, int flags)
{
    register int64_t syscallnum_reg asm ("r0") = __NR_write;
    register const void *path_reg asm ("r3") = path;
    register int flags_reg asm ("r4") = flags;
    asm volatile (
        "sc"
        : "+r" (path_reg)
        : "r" (syscallnum_reg), "r" (flags_reg)
        : "r5", "r6", "r7", "r8", "memory"
    );
    return ((ssize_t)path_reg);
}

ssize_t sys_close(int fd)
{
    register int64_t syscallnum_reg asm ("r0") = __NR_close;
    register int fd_reg asm ("r3") = fd;
    asm volatile (
        "sc"
        : "+r" (fd_reg)
        : "r" (syscallnum_reg) 
        : "r4", "r5", "r6", "r7", "r8", "memory"
    );
    return fd_reg;
}

ssize_t sys_write(int fd, const void *buf, size_t size)
{
    register int64_t syscallnum_reg asm ("r0") = __NR_write;
    register int fd_reg asm ("r3") = fd;
    register const void *buf_reg asm ("r4") = buf;
    register size_t size_reg asm ("r5") = size;
    asm volatile (
        "sc"
        : "+r" (fd_reg)
        : "r" (syscallnum_reg), "r" (buf_reg), "r" (size_reg)
        : "r6", "r7", "r8", "memory"
    );
    return fd_reg;
}

ssize_t sys_exit(int exit_code)
{
    register int64_t syscallnum_reg asm ("r0") = __NR_exit;
    register int exitcode_reg asm ("r3") = exit_code;
    asm volatile (
        "sc"
        : "+r" (exitcode_reg)
        : "r" (syscallnum_reg)
        : "r4", "r5", "r6", "r7", "r8", "memory"
    );
    return exitcode_reg;

}


