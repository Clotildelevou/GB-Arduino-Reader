#include "uart_hal.h"

#define F_CPU 16000000

volatile static uint8_t rx_buf[RX_BUF_SIZE] = {0};
volatile static uint16_t rx_count = 0;


void uart_init(uint32_t baudrate)
{
    baudrate = F_CPU / (16 * baudrate) - 1;
    //Set baudrate
    UBRR0H = (baudrate & 0x0F00) >> 8;
    UBRR0L = baudrate & 0x00FF;

    //Enable TX and RX and interruption
    UCSR0B = (1 << TXEN0) | (1 << RXEN0) | (1 << TXCIE0) | (1 << RXCIE0);
    sei();
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

void uart_send_string(uint8_t *str)
{
    while (*str != '\0')
    {
        uart_send_byte(*str);
        str++;
    }
}


ISR(USART_TX_vect)
{

}

uint8_t uart_recv_byte()
{
    while (! (UCSR0A & (1 << RXC0)));
    return UDR0;
}
ISR(USART_RX_vect)
{
    volatile static uint16_t offset = 0;
    rx_buf[offset] =  uart_recv_byte();
    rx_count++;
    offset++;
    if(offset >= RX_BUF_SIZE){
        offset = 0;
    }
}
