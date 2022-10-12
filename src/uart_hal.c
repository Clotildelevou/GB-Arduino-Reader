#include "uart_hal.h"

#define F_CPU 16000000

ISR(USART_TX_vect)
{

}

void uart_init(uint32_t baudrate)
{
  baudrate = F_CPU / (16 * baudrate) - 1;
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

void uart_send_buffer(uint8_t *buf, uint16_t len)
{
  for(int i = 0; i < len; i++)
  {
    uart_send_byte(buf[i]);
  }
}

}
