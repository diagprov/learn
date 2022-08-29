
#include <fcntl.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>

extern ssize_t sys_open(const void* path, int flags);
extern ssize_t sys_close(int fd);
extern ssize_t sys_write(int fd, const void *buf, size_t size);
extern ssize_t sys_exit(int exit_code);

//__attribute__((force_align_arg_pointer))
void _start() {

    int returncode = 0;
    //int STDIN = sys_open("/dev/stdin", O_RDONLY);
    //int STDOUT = sys_open("/dev/Stdout", O_WRONLY);
    //int STDERR = sys_open("/dev/Stdout", O_WRONLY);
    int STDIN=0; int STDOUT=1; int STDERR=2;

    sys_write(STDOUT, "Hello, World\n\0", 14);

    sys_close(STDIN);
    sys_close(STDOUT);
    sys_close(STDERR);

    sys_exit(returncode);
     __builtin_unreachable();
}
