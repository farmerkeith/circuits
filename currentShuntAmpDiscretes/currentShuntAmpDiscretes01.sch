EESchema Schematic File Version 2
LIBS:pspice
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
LIBS:currentShuntAmpDiscretes-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
	1800 1350 3050 1350
$Comp
L GND #PWR01
U 1 1 5AE853C1
P 1800 3700
F 0 "#PWR01" H 1800 3450 50  0001 C CNN
F 1 "GND" H 1800 3550 50  0000 C CNN
F 2 "" H 1800 3700 50  0001 C CNN
F 3 "" H 1800 3700 50  0001 C CNN
	1    1800 3700
	1    0    0    -1  
$EndComp
$Comp
L Q_PNP_CBE Q3
U 1 1 5AE853C2
P 2950 1850
F 0 "Q3" H 3150 1900 50  0000 L CNN
F 1 "2N3906" H 3150 1800 50  0000 L CNN
F 2 "" H 3150 1950 50  0001 C CNN
F 3 "" H 2950 1850 50  0001 C CNN
	1    2950 1850
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 5AE853C3
P 2850 2300
F 0 "R7" V 2930 2300 50  0000 C CNN
F 1 "52.5K" V 2850 2300 50  0000 C CNN
F 2 "" V 2780 2300 50  0001 C CNN
F 3 "" H 2850 2300 50  0001 C CNN
	1    2850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1850 3400 2050
$Comp
L Q_PNP_CBE Q4
U 1 1 5AE853C4
P 3600 1850
F 0 "Q4" H 3800 1900 50  0000 L CNN
F 1 "2N3906" H 3800 1800 50  0000 L CNN
F 2 "" H 3800 1950 50  0001 C CNN
F 3 "" H 3600 1850 50  0001 C CNN
	1    3600 1850
	1    0    0    1   
$EndComp
$Comp
L R R8
U 1 1 5AE853C5
P 3700 2300
F 0 "R8" V 3780 2300 50  0000 C CNN
F 1 "280K" V 3700 2300 50  0000 C CNN
F 2 "" V 3630 2300 50  0001 C CNN
F 3 "" H 3700 2300 50  0001 C CNN
	1    3700 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3700 4700 3700
Wire Wire Line
	3400 1850 3150 1850
Wire Wire Line
	3400 2050 3700 2050
Wire Notes Line
	2400 1150 4100 1150
Wire Notes Line
	4100 1150 4100 2600
Wire Notes Line
	4100 2600 2400 2600
Wire Notes Line
	2400 2600 2400 1150
Text Notes 5250 2750 0    60   ~ 0
+PSPICE \n*.include ../ComponentModels/1n4148.spi\n.include ../ComponentModels/2n3906.spi\n*.include ../ComponentModels/irf4905.spi\n\n.DC I1 -5 5 0.1\n// DC analysis from 0 to 1 Amps in steps of 1 Amp\n*.TRAN 0.05us 10ms\n // transient analysis for 10 ms in steps of 0.1 us (10,000 steps)\n.control\nrun\nplot VA VK  VC Vbase\nplot (VA-VK)\nplot (VA-VK)*50+2.5 Vout
Wire Wire Line
	3550 1350 4200 1350
Connection ~ 3700 1350
$Comp
L R R6
U 1 1 5AE853C6
P 4450 1350
F 0 "R6" V 4530 1350 50  0000 C CNN
F 1 "0" V 4450 1350 50  0000 C CNN
F 2 "" H 4450 1350 50  0001 C CNN
F 3 "" H 4450 1350 50  0001 C CNN
	1    4450 1350
	0    1    1    0   
$EndComp
$Comp
L VSOURCE V1
U 1 1 5AE853C7
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
Wire Wire Line
	3700 1250 3700 1650
Connection ~ 2850 1350
Text GLabel 2850 2050 0    60   Input ~ 0
VC
Text GLabel 3400 2050 0    60   Input ~ 0
Vbase
Wire Wire Line
	2850 1250 2850 1650
Wire Wire Line
	1800 2750 1800 3700
Wire Wire Line
	4700 3700 4700 2750
$Comp
L R R9
U 1 1 5AE853C8
P 2850 2900
F 0 "R9" V 2930 2900 50  0000 C CNN
F 1 "37.5K" V 2850 2900 50  0000 C CNN
F 2 "" H 2850 2900 50  0001 C CNN
F 3 "" H 2850 2900 50  0001 C CNN
	1    2850 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3150 2850 3150
Text GLabel 2850 2650 0    60   Input ~ 0
Vout
$Comp
L ISOURCE I1
U 1 1 5AE853C9
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
L R R5
U 1 1 5AE853CA
P 3300 1350
F 0 "R5" V 3380 1350 50  0000 C CNN
F 1 "10m" V 3300 1350 50  0000 C CNN
F 2 "" H 3300 1350 50  0001 C CNN
F 3 "" H 3300 1350 50  0001 C CNN
	1    3300 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 2550 2850 2650
Wire Wire Line
	2850 3150 2850 3700
Wire Wire Line
	3700 2550 3700 3700
Wire Wire Line
	3700 3700 3750 3700
Connection ~ 3750 3700
$EndSCHEMATC
