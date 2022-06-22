#include <errno.h>
#include <linux/audit.h>
#include <linux/bpf.h>
#include <linux/filter.h>
#include <linux/seccomp.h>
#include <linux/unistd.h>
#include <stddef.h>
#include <stdio.h>
#include <signal.h>
#include <sys/prctl.h>
#include <unistd.h>

extern int seccomp_install_filter(int syscall_number, int arch, int error);

void sig_handler(int signum){

    printf("Signal %d Caught\n", signum);
}

int main(){
    seccomp_install_filter(__NR_rt_sigaction, AUDIT_ARCH_X86_64, EPERM);
    __sighandler_t result = signal(SIGINT,sig_handler);
    if (result == SIG_ERR) {
        printf("Error setting signal handler, %d\n", errno);
    } else {
        printf("Signal handler install succeeded.\n");
    }

    for(;;){
        sleep(1);
    }
    return 0;
}
