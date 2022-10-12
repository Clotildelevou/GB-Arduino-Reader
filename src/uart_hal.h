#ifndef UART_HAL_H
#define UART_HAL_H

#include <stdint.h>
#include <avr/io.h>

void uart_send_buffer(uint8_t *buf, size_t len);
void uart_init(uint16_t baudrate);
void uart_send_byte(uint8_t c);

#endif
