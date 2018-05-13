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
L D_ALT D1
U 1 1 5AD5D6D9
P 3950 1750
F 0 "D1" H 4050 1850 50  0000 C CNN
F 1 "MOSFET diode" H 3950 1650 50  0000 C CNN
F 2 "" H 3950 1750 50  0001 C CNN
F 3 "" H 3950 1750 50  0001 C CNN
	1    3950 1750
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5AD5D710
P 3950 2000
F 0 "R1" V 4030 2000 50  0000 C CNN
F 1 "R" V 3950 2000 50  0000 C CNN
F 2 "" V 3880 2000 50  0001 C CNN
F 3 "" H 3950 2000 50  0001 C CNN
	1    3950 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1750 3400 1750
Wire Wire Line
	4100 1750 4550 1750
Wire Wire Line
	3950 1850 3950 1750
Wire Wire Line
	3600 2350 3950 2350
Wire Wire Line
	3950 2350 4350 2350
Connection ~ 3950 2350
$Comp
L GNDREF #PWR1
U 1 1 5AD5D769
P 3950 2350
F 0 "#PWR1" H 3950 2100 50  0001 C CNN
F 1 "GNDREF" H 3950 2200 50  0000 C CNN
F 2 "" H 3950 2350 50  0001 C CNN
F 3 "" H 3950 2350 50  0001 C CNN
	1    3950 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2150 3950 2350
Text Notes 3150 1700 0    60   ~ 0
ANODE
Text Notes 4500 1700 0    60   ~ 0
CATHODE
$EndSCHEMATC
