#ifndef RS232_H
#define RS232_H

#include "utils.h"

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <stdint.h>
#include <termios.h>
#include <stdint.h>
#include <errno.h>
#include <fcntl.h>
#include <limits.h>

int port_init(const char *serial_port, int baudrate);
int port_close(int fd);
int port_write_byte(int fd, uint8_t byte);
int port_write(int fd, const char *str);
int port_read_until(int fd,  char *buf, char delim, size_t buf_size);
int port_n_read(int fd, char *buf, size_t count, size_t buf_size);
int port_read(int fd, char *buf, size_t buf_size);
int port_flush(int fd);
int port_n_flush(int fd, size_t count);

#endif
