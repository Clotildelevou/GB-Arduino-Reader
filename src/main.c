#include "uart_hal.h"

int main(void)
{
  uart_init(57600);
  uart_send_byte('a');
  return 0;
}
