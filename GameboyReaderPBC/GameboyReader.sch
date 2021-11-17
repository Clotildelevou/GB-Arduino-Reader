EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x32_Male J1
U 1 1 61647C81
P 5050 1300
F 0 "J1" H 5158 2981 50  0000 C CNN
F 1 "Conn_01x32_Male" H 5158 2890 50  0000 C CNN
F 2 "GameboyReader:GameboyConnector" H 5050 1300 50  0001 C CNN
F 3 "~" H 5050 1300 50  0001 C CNN
	1    5050 1300
	0    -1   1    0   
$EndComp
Wire Wire Line
	3550 1500 3550 1800
Wire Wire Line
	3550 1800 3250 1800
$Comp
L power:+5V #PWR05
U 1 1 61665CCA
P 3250 1800
F 0 "#PWR05" H 3250 1650 50  0001 C CNN
F 1 "+5V" H 3265 1973 50  0000 C CNN
F 2 "" H 3250 1800 50  0001 C CNN
F 3 "" H 3250 1800 50  0001 C CNN
	1    3250 1800
	0    -1   1    0   
$EndComp
Wire Wire Line
	3650 1500 3650 1800
$Comp
L power:GND #PWR06
U 1 1 61667FED
P 3650 1800
F 0 "#PWR06" H 3650 1550 50  0001 C CNN
F 1 "GND" V 3800 1600 50  0000 R CNN
F 2 "" H 3650 1800 50  0001 C CNN
F 3 "" H 3650 1800 50  0001 C CNN
	1    3650 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3750 1500 3750 1850
Wire Wire Line
	3850 1500 3850 1850
Wire Wire Line
	3950 1500 3950 1850
$Comp
L Device:R R17
U 1 1 6166C70D
P 3750 2000
F 0 "R17" V 3800 2250 50  0000 C CNN
F 1 "10K" V 3800 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3680 2000 50  0001 C CNN
F 3 "~" H 3750 2000 50  0001 C CNN
	1    3750 2000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 616B7599
P 3850 2000
F 0 "R18" V 3800 2150 50  0000 L CNN
F 1 "10K" V 3800 2350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3780 2000 50  0001 C CNN
F 3 "~" H 3850 2000 50  0001 C CNN
	1    3850 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 616BA7C1
P 3950 2000
F 0 "R19" V 4000 1850 50  0000 R CNN
F 1 "10K" V 4000 1650 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 2000 50  0001 C CNN
F 3 "~" H 3950 2000 50  0001 C CNN
	1    3950 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 4200 3300 4200
$Comp
L 74xx:74HC595 U2
U 1 1 616E641D
P 2800 5450
F 0 "U2" H 2400 4450 50  0000 C CNN
F 1 "74HC595" H 2200 4600 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W10.16mm" H 2800 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2800 5450 50  0001 C CNN
	1    2800 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1500 4050 3300
Wire Wire Line
	4150 3400 4150 1500
Wire Wire Line
	4250 1500 4250 3500
Wire Wire Line
	4350 3600 4350 1500
Wire Wire Line
	4450 3700 4450 1500
Wire Wire Line
	4550 3800 4550 1500
Wire Wire Line
	4650 3900 4650 1500
Wire Wire Line
	4750 1500 4750 4000
Wire Wire Line
	4850 1500 4850 5050
Wire Wire Line
	4950 5150 4950 1500
Wire Wire Line
	5050 1500 5050 5250
Wire Wire Line
	5150 5350 5150 1500
Wire Wire Line
	5250 5450 5250 1500
Wire Wire Line
	5450 5650 5450 1500
Wire Wire Line
	5350 1500 5350 5550
Wire Wire Line
	5550 1500 5550 5750
$Comp
L power:GND #PWR03
U 1 1 61736ADB
P 2800 4400
F 0 "#PWR03" H 2800 4150 50  0001 C CNN
F 1 "GND" H 3000 4400 50  0000 C CNN
F 2 "" H 2800 4400 50  0001 C CNN
F 3 "" H 2800 4400 50  0001 C CNN
	1    2800 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 61737F58
P 2800 6150
F 0 "#PWR04" H 2800 5900 50  0001 C CNN
F 1 "GND" H 2805 5977 50  0000 C CNN
F 2 "" H 2800 6150 50  0001 C CNN
F 3 "" H 2800 6150 50  0001 C CNN
	1    2800 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 61738805
P 2400 3900
F 0 "#PWR01" H 2400 3650 50  0001 C CNN
F 1 "GND" V 2405 3772 50  0000 R CNN
F 2 "" H 2400 3900 50  0001 C CNN
F 3 "" H 2400 3900 50  0001 C CNN
	1    2400 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6174112C
P 2400 5650
F 0 "#PWR02" H 2400 5400 50  0001 C CNN
F 1 "GND" V 2405 5522 50  0000 R CNN
F 2 "" H 2400 5650 50  0001 C CNN
F 3 "" H 2400 5650 50  0001 C CNN
	1    2400 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 4200 3300 4700
Wire Wire Line
	3300 4700 2100 4700
Wire Wire Line
	2100 4700 2100 5050
Wire Wire Line
	2100 5050 2400 5050
Wire Wire Line
	5650 1500 5650 3650
Wire Wire Line
	5750 1500 5750 3550
Wire Wire Line
	5750 3550 6850 3550
Wire Wire Line
	5850 1500 5850 3450
Wire Wire Line
	5850 3450 6950 3450
Wire Wire Line
	5950 1500 5950 3350
Wire Wire Line
	5950 3350 7050 3350
Wire Wire Line
	6050 1500 6050 3250
Wire Wire Line
	6050 3250 7150 3250
Wire Wire Line
	6150 1500 6150 3150
Wire Wire Line
	6150 3150 7250 3150
Wire Wire Line
	7350 3050 6250 3050
Wire Wire Line
	6250 3050 6250 1500
Wire Wire Line
	6350 1500 6350 2950
Wire Wire Line
	6350 2950 7450 2950
Wire Wire Line
	5650 3650 6750 3650
$Comp
L power:GND #PWR012
U 1 1 6168C685
P 6650 1500
F 0 "#PWR012" H 6650 1250 50  0001 C CNN
F 1 "GND" H 6655 1327 50  0000 C CNN
F 2 "" H 6650 1500 50  0001 C CNN
F 3 "" H 6650 1500 50  0001 C CNN
	1    6650 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1500 6450 1850
$Comp
L Device:R R20
U 1 1 61691008
P 6450 2000
F 0 "R20" H 6520 2046 50  0000 L CNN
F 1 "10K" H 6520 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6380 2000 50  0001 C CNN
F 3 "~" H 6450 2000 50  0001 C CNN
	1    6450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2150 6450 2300
$Comp
L power:+5V #PWR011
U 1 1 61693BF3
P 6450 2300
F 0 "#PWR011" H 6450 2150 50  0001 C CNN
F 1 "+5V" H 6465 2473 50  0000 C CNN
F 2 "" H 6450 2300 50  0001 C CNN
F 3 "" H 6450 2300 50  0001 C CNN
	1    6450 2300
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 616AE7F9
P 2800 2800
F 0 "#PWR08" H 2800 2650 50  0001 C CNN
F 1 "+5V" H 2815 2973 50  0000 C CNN
F 2 "" H 2800 2800 50  0001 C CNN
F 3 "" H 2800 2800 50  0001 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2800 2800 3000
Wire Wire Line
	2400 3600 2150 3600
Wire Wire Line
	2150 3600 2150 3000
Wire Wire Line
	2150 3000 2800 3000
Connection ~ 2800 3000
Wire Wire Line
	2800 3000 2800 3100
$Comp
L power:+5V #PWR09
U 1 1 616BA2D7
P 2800 4850
F 0 "#PWR09" H 2800 4700 50  0001 C CNN
F 1 "+5V" H 3000 4850 50  0000 C CNN
F 2 "" H 2800 4850 50  0001 C CNN
F 3 "" H 2800 4850 50  0001 C CNN
	1    2800 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 616BC292
P 2400 5350
F 0 "#PWR07" H 2400 5200 50  0001 C CNN
F 1 "+5V" V 2415 5478 50  0000 L CNN
F 2 "" H 2400 5350 50  0001 C CNN
F 3 "" H 2400 5350 50  0001 C CNN
	1    2400 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 3500 1850 3500
Text Label 1850 3500 0    50   ~ 0
SCK
Wire Wire Line
	2400 5250 1850 5250
Text Label 1850 5250 0    50   ~ 0
SCK
Wire Wire Line
	7750 4750 7750 4500
Text Label 7750 4500 3    50   ~ 0
SCK
Text Label 7650 4500 3    50   ~ 0
SER
Wire Wire Line
	2400 5550 1850 5550
Text Label 1850 5550 0    50   ~ 0
RCK
Wire Wire Line
	2400 3300 1850 3300
Text Label 1850 3300 0    50   ~ 0
SER
Wire Wire Line
	3750 2150 3750 2350
Wire Wire Line
	3850 2150 3850 2350
Wire Wire Line
	3950 2150 3950 2350
Text Label 3750 2350 1    50   ~ 0
CLK
Text Label 3850 2350 1    50   ~ 0
WR
Text Label 3950 2350 1    50   ~ 0
RD
Wire Wire Line
	7450 5750 7450 5950
Wire Wire Line
	7550 5750 7550 5950
Text Label 7450 5950 1    50   ~ 0
CLK
Text Label 7550 5950 1    50   ~ 0
RD
Text Label 7650 5950 1    50   ~ 0
WR
NoConn ~ 3200 5950
NoConn ~ 6550 1500
NoConn ~ 6150 5350
NoConn ~ 6150 5150
NoConn ~ 6950 5750
NoConn ~ 6650 5750
NoConn ~ 6550 5750
NoConn ~ 7150 5750
NoConn ~ 7250 5750
NoConn ~ 7350 5750
NoConn ~ 7750 5750
NoConn ~ 7850 5750
$Comp
L power:+5V #PWR010
U 1 1 61736A0F
P 6150 5450
F 0 "#PWR010" H 6150 5300 50  0001 C CNN
F 1 "+5V" V 6165 5578 50  0000 L CNN
F 2 "" H 6150 5450 50  0001 C CNN
F 3 "" H 6150 5450 50  0001 C CNN
	1    6150 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 5350 8400 5350
$Comp
L power:GND #PWR013
U 1 1 6173C192
P 8550 5350
F 0 "#PWR013" H 8550 5100 50  0001 C CNN
F 1 "GND" V 8555 5222 50  0000 R CNN
F 2 "" H 8550 5350 50  0001 C CNN
F 3 "" H 8550 5350 50  0001 C CNN
	1    8550 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 5250 8400 5250
Wire Wire Line
	8400 5250 8400 5350
Connection ~ 8400 5350
Wire Wire Line
	8400 5350 8550 5350
NoConn ~ 7850 4750
NoConn ~ 6550 4750
NoConn ~ 6650 4750
Wire Wire Line
	7650 5750 7650 5950
Wire Wire Line
	7650 4750 7650 4500
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 61649919
P 7150 5250
F 0 "A1" V 6750 4000 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" V 6650 3700 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 7150 5250 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 7150 5250 50  0001 C CNN
	1    7150 5250
	0    -1   1    0   
$EndComp
Wire Wire Line
	3200 3300 4050 3300
Wire Wire Line
	3200 3400 4150 3400
Wire Wire Line
	3200 3500 4250 3500
Wire Wire Line
	3200 3600 4350 3600
Wire Wire Line
	3200 3700 4450 3700
Wire Wire Line
	3200 3800 4550 3800
Wire Wire Line
	3200 3900 4650 3900
Wire Wire Line
	3200 4000 4750 4000
Wire Wire Line
	3200 5050 4850 5050
Wire Wire Line
	3200 5150 4950 5150
Wire Wire Line
	3200 5250 5050 5250
Wire Wire Line
	3200 5350 5150 5350
Wire Wire Line
	3200 5450 5250 5450
Wire Wire Line
	3200 5550 5350 5550
Wire Wire Line
	3200 5650 5450 5650
Wire Wire Line
	3200 5750 5550 5750
Wire Wire Line
	6750 3650 6750 4750
Wire Wire Line
	6850 3550 6850 4750
Wire Wire Line
	6950 3450 6950 4750
Wire Wire Line
	7050 3350 7050 4750
Wire Wire Line
	7150 3250 7150 4750
Wire Wire Line
	7250 3150 7250 4750
Wire Wire Line
	7350 3050 7350 4750
Wire Wire Line
	7450 2950 7450 4750
$Comp
L 74xx:74HC595 U1
U 1 1 6164F686
P 2800 3700
F 0 "U1" H 2500 2950 50  0000 C CNN
F 1 "74HC595" H 2450 3050 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W10.16mm" H 2800 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2800 3700 50  0001 C CNN
	1    2800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3800 1850 3800
Text Label 1850 3800 0    50   ~ 0
RCK
Wire Wire Line
	7550 4750 7550 4500
Text Label 7550 4500 3    50   ~ 0
RCK
$EndSCHEMATC