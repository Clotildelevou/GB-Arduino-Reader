#include "serial.h"

int port_init(const char *serial_port, int baudrate)
{
    int fd;
    struct termios tty;
    fd = open(serial_port, O_RDWR | O_NOCTTY | O_NDELAY);
    if (fd == -1)
    {
        fprintf(stderr, "Couldn't open file\n");
        return -1;
    }
    
    if(tcgetattr(fd, &tty) == -1)
    {
        fprintf(stderr, "Error %s from tcgetattr\n", strerror(errno));
        return -1;
    }
    
    speed_t b_rate = get_baud(baudrate);
    cfsetispeed(&tty, b_rate);
    cfsetospeed(&tty, b_rate);

    tty.c_cflag |= (CLOCAL | CREAD);    /* ignore modem controls */
    tty.c_cflag &= ~CSIZE;
    tty.c_cflag |= CS8;         /* 8-bit characters */
    tty.c_cflag &= ~PARENB;     /* no parity bit */
    tty.c_cflag &= ~CSTOPB;     /* only need 1 stop bit */
    tty.c_cflag &= ~CRTSCTS;    /* no hardware flowcontrol */

    /* setup for non-canonical mode */
    tty.c_iflag &= ~(IGNBRK | BRKINT | PARMRK | ISTRIP | INLCR | IGNCR | ICRNL | IXON);
    tty.c_lflag &= ~(ECHO | ECHONL | ICANON | ISIG | IEXTEN);
    tty.c_oflag &= ~OPOST;

    /* fetch bytes as they become available */
    tty.c_cc[VMIN] = 1;
    tty.c_cc[VTIME] = 1;

    if (tcsetattr(fd, TCSANOW, &tty) != 0) {
        fprintf(stderr, "Error from tcsetattr: %s\n", strerror(errno));
        return -1;
    }
    return fd;
}

int port_close(int fd)
{
    return close(fd);
}

int port_write_byte(int fd, uint8_t byte)
{
    if (write(fd, &byte, 1) == -1)
    {
        fprintf(stderr, "Error from write %s\n", strerror(errno));
        return -1;
    }
    return 0;
}

int port_write(int fd, const char *buf, size_t buf_size)
{
    if (write(fd, &buf, buf_size) == -1)
    {
        fprintf(stderr, "Error from write %s\n", strerror(errno));
        return -1;
    }
    return 0;
}

int port_read_until(int fd,  char *buf, char delim, size_t buf_size)
{
    port_read(fd, buf, buf_size);
    char *end = strchr(buf, delim); //Find delim
    size_t offset = buf - end;
    
    buf[offset + 1] = '\0'; //Ends the buffer after the delim
    if (lseek(fd, offset, SEEK_SET) == -1) //Sets the file offset to delim
    {
        fprintf(stderr, "Error from lseek %s\n", strerror(errno));
        return -1;
    }
    return 0;
}

int port_read(int fd, char *buf, size_t buf_size)
{
    if (read(fd, &buf, buf_size) == -1)
    {
        fprintf(stderr, "Error on read %s\n", strerror(errno));
        return -1;
    }
    return 0;
}

int port_flush(int fd)
{
    sleep(1); //For high latency apps, we must wait a little
    if (tcflush(fd, TCIOFLUSH) == -1)
    {
        fprintf(stderr, "Error from tcflush %s\n", strerror(errno));
        return -1;
    }
}