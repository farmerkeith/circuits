EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 25 0
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
L Solar_Cells SC1
U 1 1 5AE5AD24
P 1400 1550
F 0 "SC1" H 1500 1650 50  0000 L CNN
F 1 "Solar_Cells" H 1500 1550 50  0000 L CNN
F 2 "" V 1400 1610 50  0001 C CNN
F 3 "" V 1400 1610 50  0001 C CNN
	1    1400 1550
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5AE5AD5A
P 1800 1250
F 0 "R1" V 1880 1250 50  0000 C CNN
F 1 "0.01" V 1800 1250 50  0000 C CNN
F 2 "" V 1730 1250 50  0001 C CNN
F 3 "" H 1800 1250 50  0001 C CNN
	1    1800 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 1250 1400 1250
Wire Wire Line
	1400 1250 1400 1350
Wire Wire Line
	1400 1750 1400 1850
Wire Wire Line
	1400 1850 1950 1850
$Comp
L Solar_Cells SC2
U 1 1 5AE5AD89
P 1400 2400
F 0 "SC2" H 1500 2500 50  0000 L CNN
F 1 "Solar_Cells" H 1500 2400 50  0000 L CNN
F 2 "" V 1400 2460 50  0001 C CNN
F 3 "" V 1400 2460 50  0001 C CNN
	1    1400 2400
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5AE5ADA4
P 1800 2700
F 0 "R3" V 1880 2700 50  0000 C CNN
F 1 "0.01" V 1800 2700 50  0000 C CNN
F 2 "" V 1730 2700 50  0001 C CNN
F 3 "" H 1800 2700 50  0001 C CNN
	1    1800 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 2600 1400 2700
Wire Wire Line
	1400 2700 1650 2700
Wire Wire Line
	1400 2200 1400 2100
Wire Wire Line
	1400 2100 1950 2100
$Comp
L Battery BT1
U 1 1 5AE5AEEF
P 2900 1550
F 0 "BT1" H 3000 1650 50  0000 L CNN
F 1 "Battery" H 3000 1550 50  0000 L CNN
F 2 "" V 2900 1610 50  0001 C CNN
F 3 "" V 2900 1610 50  0001 C CNN
	1    2900 1550
	1    0    0    -1  
$EndComp
$Comp
L Battery BT2
U 1 1 5AE5AF12
P 2900 2400
F 0 "BT2" H 3000 2500 50  0000 L CNN
F 1 "Battery" H 3000 2400 50  0000 L CNN
F 2 "" V 2900 2460 50  0001 C CNN
F 3 "" V 2900 2460 50  0001 C CNN
	1    2900 2400
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5AE5AF67
P 2600 1250
F 0 "R2" V 2680 1250 50  0000 C CNN
F 1 "0.01" V 2600 1250 50  0000 C CNN
F 2 "" V 2530 1250 50  0001 C CNN
F 3 "" H 2600 1250 50  0001 C CNN
	1    2600 1250
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5AE5B054
P 2600 2700
F 0 "R4" V 2680 2700 50  0000 C CNN
F 1 "0.01" V 2600 2700 50  0000 C CNN
F 2 "" V 2530 2700 50  0001 C CNN
F 3 "" H 2600 2700 50  0001 C CNN
	1    2600 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 1250 2900 1250
Wire Wire Line
	2900 1250 2900 1350
Wire Wire Line
	2900 2600 2900 2700
Wire Wire Line
	2900 2700 2750 2700
Wire Wire Line
	2900 2200 2900 2100
Wire Wire Line
	2900 2100 2450 2100
Wire Wire Line
	2900 1750 2900 1850
Wire Wire Line
	2900 1850 2450 1850
$EndSCHEMATC
