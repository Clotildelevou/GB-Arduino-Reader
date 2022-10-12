#ifndef UART_HAL_H
#define UART_HAL_H

#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>

void uart_init(uint32_t baudrate);
void uart_send_byte(uint8_t c);
void uart_send_buffer(uint8_t *buf, uint16_t len);
void uart_send_string(uint8_t *str);

#endif
