#include "uart_hal.h"

void uart_init(uint8_t baudrate)
{
  //Set baudrate
  UBRR0H = (baud & 0x0F00) >> 8;
  UBRR0L = baud & 0x00FF;

  //Enable TX and RX
  UCSR0B = (1 << TXEN0) | (1 << RXEN0)

  //Set frame format 8bits
  UCSR0C = (1 << UCSZ1) | (1 << UCSZ0)
}
