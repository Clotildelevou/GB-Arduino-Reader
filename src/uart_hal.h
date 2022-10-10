#ifndef UART_HAL_H
#define UART_HAL_H

#include <stdint.h>
#include <avr/io.h>

void uart_init(uint8_t baudrate);

#endif
