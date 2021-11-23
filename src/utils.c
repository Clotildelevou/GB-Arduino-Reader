#include "utils.h"

speed_t get_baud(int baudrate)
{
    switch(baudrate)
    {
        case 50:
            return B50;
        case 75:
            return B75;
        case 110:
            return B110;
        case 134:
            return B134;
        case 150:
            return B150;
        case 200:
            return B200;
        case 300:
            return B300;
        case 600:
            return B600;
        case 1200:
            return B1200;
        case 2400:
            return B2400;
        case 4800:
            return B4800;
        case 9600:
            return B9600;
        case 19200:
            return B19200;
        case 57600:
            return B57600;
        case 460800:
            return B460800;
        case 576000:
            return B576000;
        case 921600:
            return B921600;
        default:
            return B9600;
    }
}