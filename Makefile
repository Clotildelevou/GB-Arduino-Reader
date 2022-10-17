MCU=atmega328
F_CPU=16000000
CC=avr-gcc
OBJCOPY=avr-objcopy
CFLAGS=-std=c99 -Wall -g -Os -mmcu=${MCU} -DF_CPU=${F_CPU} -I.
TARGET=main
SRCS= src/main.c  src/uart_hal.c
USB=/dev/ttyUSB0

all:
	${CC} ${CFLAGS} -o ${TARGET}.bin ${SRCS}
	${OBJCOPY} -j .text -j .data -O ihex ${TARGET}.bin ${TARGET}.hex

flash:
	avrdude -p ${MCU} -carduino -U flash:w:${TARGET}.hex:i -F -P${USB}

clean:
	rm -f *.bin *.hex
