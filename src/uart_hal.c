#include "uart_hal.h"

void uart_init(uint16_t baudrate)
{
  //Set baudrate
  UBRR0H = (baudrate & 0x0F00) >> 8;
  UBRR0L = baudrate & 0x00FF;

  //Enable TX and RX and interruption
  UCSR0B = (1 << TXEN0) | (1 << RXEN0) | (1 << TXCIE0) | (1 << RXCIE0);

}

void uart_send_byte(uint8_t c)
{
  while (!(UCSR0A & (1 << UDRE0)));
  UDR0 = c;
}
}
