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
LIBS:pspice
LIBS:currentShuntAmpDiscretesRes01-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "XL4016X2"
Date "2018-04-11"
Rev "V3 minor corrections"
Comp "farmerkeith"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1800 1350 3150 1350
$Comp
L GND #PWR01
U 1 1 5AE86D72
P 1800 3700
F 0 "#PWR01" H 1800 3450 50  0001 C CNN
F 1 "GND" H 1800 3550 50  0000 C CNN
F 2 "" H 1800 3700 50  0001 C CNN
F 3 "" H 1800 3700 50  0001 C CNN
	1    1800 3700
	1    0    0    -1  
$EndComp
$Comp
L Q_PNP_CBE Q1
U 1 1 5AE86D73
P 2950 2050
F 0 "Q1" H 3150 2100 50  0000 L CNN
F 1 "2N3906" H 3150 2000 50  0000 L CNN
F 2 "" H 3150 2150 50  0001 C CNN
F 3 "" H 2950 2050 50  0001 C CNN
	1    2950 2050
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 5AE86D74
P 2850 2500
F 0 "R4" V 2930 2500 50  0000 C CNN
F 1 "52.5K" V 2850 2500 50  0000 C CNN
F 2 "" V 2780 2500 50  0001 C CNN
F 3 "" H 2850 2500 50  0001 C CNN
	1    2850 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2050 3400 2250
$Comp
L Q_PNP_CBE Q2
U 1 1 5AE86D75
P 3600 2050
F 0 "Q2" H 3800 2100 50  0000 L CNN
F 1 "2N3906" H 3800 2000 50  0000 L CNN
F 2 "" H 3800 2150 50  0001 C CNN
F 3 "" H 3600 2050 50  0001 C CNN
	1    3600 2050
	1    0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5AE86D76
P 3700 2500
F 0 "R5" V 3780 2500 50  0000 C CNN
F 1 "240K" V 3700 2500 50  0000 C CNN
F 2 "" V 3630 2500 50  0001 C CNN
F 3 "" H 3700 2500 50  0001 C CNN
	1    3700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3700 4700 3700
Wire Wire Line
	3400 2050 3150 2050
Wire Wire Line
	3400 2250 3700 2250
Text Notes 5250 2750 0    60   ~ 0
+PSPICE \n*.include ../ComponentModels/1n4148.spi\n.include ../ComponentModels/2n3906.spi\n*.include ../ComponentModels/irf4905.spi\n\n.DC I1 -12 12 0.1\n// DC analysis from 0 to 1 Amps in steps of 1 Amp\n*.TRAN 0.05us 10ms\n // transient analysis for 10 ms in steps of 0.1 us (10,000 steps)\n.control\nrun\nplot VA VK  VC Vbase\nplot (VA-VK)\nplot (VA-VK)*23.5+2.15 Vout\nplot (VA-VK)*23.5+2.15-Vout
Wire Wire Line
	3450 1350 4700 1350
Connection ~ 3700 1350
$Comp
L VSOURCE V1
U 1 1 5AE86D78
P 4700 2050
F 0 "V1" H 4700 1950 50  0000 C CNN
F 1 "+12V " H 4700 2150 50  0000 C CNN
F 2 "" H 4700 2050 50  0001 C CNN
F 3 "" H 4700 2050 50  0001 C CNN
	1    4700 2050
	1    0    0    -1  
$EndComp
Connection ~ 2850 3700
Text GLabel 2850 1250 0    60   Input ~ 0
VA
Text GLabel 3700 1250 2    60   Input ~ 0
VK
Connection ~ 2850 1350
Text GLabel 2850 2250 0    60   Input ~ 0
VC
Text GLabel 3400 2250 0    60   Input ~ 0
Vbase
Wire Wire Line
	1800 2750 1800 3700
Wire Wire Line
	4700 3700 4700 2750
$Comp
L R R6
U 1 1 5AE86D79
P 2850 3100
F 0 "R6" V 2930 3100 50  0000 C CNN
F 1 "37.5K" V 2850 3100 50  0000 C CNN
F 2 "" H 2850 3100 50  0001 C CNN
F 3 "" H 2850 3100 50  0001 C CNN
	1    2850 3100
	1    0    0    -1  
$EndComp
Text GLabel 2850 2850 0    60   Input ~ 0
Vout
$Comp
L ISOURCE I1
U 1 1 5AE86D7A
P 1800 2050
F 0 "I1" H 1800 1870 50  0000 C CNN
F 1 "1Amp" H 1810 2220 50  0000 C CNN
F 2 "" H 1800 2050 50  0001 C CNN
F 3 "" H 1800 2050 50  0001 C CNN
F 4 "2,1" H 1800 2050 60  0001 C CNN "Spice_Node_Sequence"
	1    1800 2050
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5AE86D7B
P 3300 1350
F 0 "R1" V 3380 1350 50  0000 C CNN
F 1 "10m" V 3300 1350 50  0000 C CNN
F 2 "" H 3300 1350 50  0001 C CNN
F 3 "" H 3300 1350 50  0001 C CNN
	1    3300 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 2650 2850 2950
$Comp
L R R2
U 1 1 5AE86D7C
P 2850 1600
F 0 "R2" V 2930 1600 50  0000 C CNN
F 1 "1K" V 2850 1600 50  0000 C CNN
F 2 "" H 2850 1600 50  0001 C CNN
F 3 "" H 2850 1600 50  0001 C CNN
	1    2850 1600
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5AE86D7D
P 3700 1600
F 0 "R3" V 3780 1600 50  0000 C CNN
F 1 "1K" V 3700 1600 50  0000 C CNN
F 2 "" H 3700 1600 50  0001 C CNN
F 3 "" H 3700 1600 50  0001 C CNN
	1    3700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3250 2850 3700
Wire Wire Line
	3700 2650 3700 3700
Connection ~ 3700 3700
Wire Wire Line
	2850 1250 2850 1450
Wire Wire Line
	3700 1250 3700 1450
Wire Wire Line
	2850 1750 2850 1850
Wire Wire Line
	3700 1750 3700 1850
Wire Wire Line
	3700 2250 3700 2350
Wire Wire Line
	2850 2350 2850 2250
$EndSCHEMATC