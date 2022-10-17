#ifndef UART_HAL_H
#define UART_HAL_H

#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>

#define RX_BUF_SIZE 256

void uart_init(uint32_t baudrate);

void uart_send_byte(uint8_t c);
void uart_send_buffer(uint8_t *buf, uint16_t len);
void uart_send_string(uint8_t *str);

uint8_t uart_recv_byte();
uint16_t uart_readline(uint8_t *buf);
#endif
