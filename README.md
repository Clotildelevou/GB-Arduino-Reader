# GB-Arduino-Reader
This is a little PCB connecting an arduino to a GBA cardtrige connector

# Principles

## The Cartdridge

The cartdrige has 32 pins and this is their usage :

| Pin | Name    | Description        |
|-----|---------|--------------------|
| 1   | VCC     | +5VDC              |
| 2   | PHI     | CPU Clock          |
| 3   | WR      | Write              |
| 4   | RD      | Read               |
| 5   | CS      | SRAM select        |
| 6   | A0      | Address 0          |
| 7   | A1      | Address 1          |
| 8   | A2      | Address 2          |
| 9   | A3      | Address 3          |
| 10  | A4      | Address 4          |
| 11  | A5      | Address 5          |
| 12  | A6      | Address 6          |
| 13  | A7      | Address 7          |
| 14  | A8      | Address 8          |
| 15  | A9      | Address 9          |
| 16  | A10     | Address 10         |
| 17  | A11     | Address 11         |
| 18  | A12     | Address 12         |
| 19  | A13     | Address 13         |
| 20  | A14     | Address 14         |
| 21  | A15     | Address 15         |
| 22  | D0      | Data 0             |
| 23  | D1      | Data 1             |
| 24  | D2      | Data 2             |
| 25  | D3      | Data 3             |
| 26  | D4      | Data 4             |
| 27  | D5      | Data 5             |
| 28  | D6      | Data 6             |
| 29  | D7      | Data 7             |
| 30  | RST     | Reset              |
| 31  | AUDIOIN | Used by MP3 player |
| 32  | GND     | Ground             |

## The Shift Registers

The arduino we use (Arduino Nano V3.X) only has 22 digital pins. Shift registers become handy. Shift registers are often used for the purpose of saving pins on the microcontroller, as every microcontroller has a limited number of I/O pins (GPIO).

### The logic
The 595 has two registers (which can be thought of as “memory containers”), each with just 8 bits of data. The first one is called the Shift Register. The Shift Register lies deep within the IC circuits, quietly accepting input.

Whenever we apply a clock pulse to a 595, two things happen:

The bits in the Shift Register move one step to the left. For example, Bit 7 accepts the value that was previously in bit 6, bit 6 gets the value of bit 5 etc.
Bit 0 in the Shift Register accepts the current value on DATA pin. At the rising edge of the pulse, if the data pin is high, then a 1 gets pushed into the shift register. Otherwise, it is a 0.
On enabling the Latch pin, the contents of Shift Register are copied into the second register, called the Storage/Latch Register. Each bit of the Storage Register is connected to one of the output pins QA–QH of the IC, so in general, when the value in the Storage Register changes, so do the outputs.

![Shift Register animation](https://lastminuteengineers.com/wp-content/uploads/arduino/74HC595-Shift-Register-Working.gif)


### Pinout

![pinout](https://lastminuteengineers.com/wp-content/uploads/arduino/Pinout-74HC595-Shift-Register.png)

**GND** should be connected to the ground of Arduino.

**VCC** is the power supply for 74HC595 shift register which we connect the 5V pin on the Arduino.

**SER** (Serial Input) pin is used to feed data into the shift register a bit at a time.

**SRCLK** (Shift Register Clock) is the clock for the shift register. The 595 is clock-driven on the rising edge. This means that in order to shift bits into the shift register, the clock must be HIGH. And bits are transferred in on the rising edge of the clock.

**RCLK** (Register Clock / Latch) is a very important pin. When driven HIGH, the contents of Shift Register are copied into the Storage/Latch Register; which ultimately shows up at the output. So the latch pin can be seen as like the final step in the process to seeing our results at the output, which in this case are LEDs.

**SRCLR** (Shift Register Clear) pin allows us to reset the entire Shift Register, making all its bits 0, at once. This is a negative logic pin, so to perform this reset; we need to set the SRCLR pin LOW. When no reset is required, this pin should be HIGH.

**OE** (Output Enable) is negative logic too: When the voltage on it is HIGH, the output pins are disabled/set to high impedance state and don’t allow current to flow. When OE gets low voltage, the output pins work normally.

**QA–QH** (Output Enable) are the output pins and should be connected to some type of output like LEDs, 7 Segments etc.

**QH’** Pin outputs bit 7 of the ShiftRegister. It is there so that we may daisychain 595s: if you connect this QH’ to the SER pin of another 595, and give both ICs the same clock signal, they will behave like a single IC with 16 outputs. Of course, this technique is not limited to two ICs – you can daisychain as many as you like, if you have enough power for all of them.

# 3D View
This is currently the result of my work : 
![FRONT](https://github.com/Clotildelevou/GB-Arduino-Reader/blob/main/img/3d-card-f.png)
![BACK](https://github.com/Clotildelevou/GB-Arduino-Reader/blob/main/img/3d-card-b.png)

# Gerber view
This is the gerber view :
![TOP](https://github.com/Clotildelevou/GB-Arduino-Reader/blob/main/img/gerber-top.png)
![BOTTOM](https://github.com/Clotildelevou/GB-Arduino-Reader/blob/main/img/gerber-bottom.png)

# Sources
[Inside Gadgets](https://www.insidegadgets.com)

[lastminuteengineers](https://lastminuteengineers.com/74hc595-shift-register-arduino-tutorial/)

