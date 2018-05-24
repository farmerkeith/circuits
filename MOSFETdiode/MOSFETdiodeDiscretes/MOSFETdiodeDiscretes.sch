EESchema Schematic File Version 2
LIBS:Modules
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
LIBS:MOSFETdiodeDiscretes-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MOSFETdiodeDiscretes"
Date "2018-05-24"
Rev "V2"
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
U 1 1 5AD33666
P 1800 3700
F 0 "#PWR01" H 1800 3450 50  0001 C CNN
F 1 "GND" H 1800 3550 50  0000 C CNN
F 2 "" H 1800 3700 50  0001 C CNN
F 3 "" H 1800 3700 50  0001 C CNN
	1    1800 3700
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D1
U 1 1 5AD33667
P 2850 1500
F 0 "D1" H 2850 1600 50  0000 C CNN
F 1 "1N4148" H 2850 1400 50  0000 C CNN
F 2 "" H 2850 1500 50  0001 C CNN
F 3 "" H 2850 1500 50  0001 C CNN
F 4 "2,1" H 2850 1500 60  0001 C CNN "Spice_Node_Sequence"
	1    2850 1500
	0    -1   -1   0   
$EndComp
$Comp
L D_ALT D2
U 1 1 5AD33668
P 3700 1500
F 0 "D2" H 3700 1600 50  0000 C CNN
F 1 "1N4148" H 3700 1400 50  0000 C CNN
F 2 "" H 3700 1500 50  0001 C CNN
F 3 "" H 3700 1500 50  0001 C CNN
F 4 "2,1" H 3700 1500 60  0001 C CNN "Spice_Node_Sequence"
	1    3700 1500
	0    -1   -1   0   
$EndComp
$Comp
L Q_PNP_CBE Q2
U 1 1 5AD33669
P 2950 1850
F 0 "Q2" H 3150 1900 50  0000 L CNN
F 1 "2N3906" H 3150 1800 50  0000 L CNN
F 2 "" H 3150 1950 50  0001 C CNN
F 3 "" H 2950 1850 50  0001 C CNN
	1    2950 1850
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5AD3366A
P 2850 2300
F 0 "R2" V 2930 2300 50  0000 C CNN
F 1 "47K" V 2850 2300 50  0000 C CNN
F 2 "" V 2780 2300 50  0001 C CNN
F 3 "" H 2850 2300 50  0001 C CNN
	1    2850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1850 3150 2050
Wire Wire Line
	3150 2050 2850 2050
$Comp
L Q_PNP_CBE Q3
U 1 1 5AD3366B
P 3600 1850
F 0 "Q3" H 3800 1900 50  0000 L CNN
F 1 "2N3906" H 3800 1800 50  0000 L CNN
F 2 "" H 3800 1950 50  0001 C CNN
F 3 "" H 3600 1850 50  0001 C CNN
	1    3600 1850
	1    0    0    1   
$EndComp
$Comp
L R R3
U 1 1 5AD3366C
P 3700 2300
F 0 "R3" V 3780 2300 50  0000 C CNN
F 1 "47K" V 3700 2300 50  0000 C CNN
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
	3450 1650 3450 2050
Wire Wire Line
	3450 2050 3700 2050
Wire Notes Line
	2400 1150 4100 1150
Wire Notes Line
	4100 1150 4100 2600
Wire Notes Line
	4100 2600 2400 2600
Wire Notes Line
	2400 2600 2400 1150
Text Notes 5250 2750 0    60   ~ 0
+PSPICE \n.include ../../ComponentModels/1n4148.spi\n.include ../../ComponentModels/2n3906.spi\n.include ../../ComponentModels/irf4905.spi\n\n*.DC V1 5 15 0.001\n.TRAN 0.5us 10ms\n // transient analysis for 10 ms in steps of 0.5 us (20,000 steps)\n.control\nrun\nplot VA VK  VG Vbase\nplot VA-VK\nplot VA-Vbase VK-Vbase VK-VG\nplot -i(V1) i(V2)\n*plot VD*1000\nplot (VD2-VD)*1000 (VD3-VD)*1000 VD*1000\n
$Comp
L VSOURCE V1
U 1 1 5AD34E9F
P 1800 2050
F 0 "V1" H 1800 1950 50  0000 C CNN
F 1 "pulse (9.50V 11.5V 2ms 0 0 5ms 10ms 0)" H 1550 2100 50  0000 C CNN
F 2 "" H 1800 2050 50  0001 C CNN
F 3 "" H 1800 2050 50  0001 C CNN
	1    1800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1350 4200 1350
Connection ~ 3700 1350
$Comp
L R R1
U 1 1 5AD358EE
P 4450 1350
F 0 "R1" V 4530 1350 50  0000 C CNN
F 1 "10" V 4450 1350 50  0000 C CNN
F 2 "" H 4450 1350 50  0001 C CNN
F 3 "" H 4450 1350 50  0001 C CNN
	1    4450 1350
	0    1    1    0   
$EndComp
$Comp
L VSOURCE V2
U 1 1 5AD3591D
P 4700 2050
F 0 "V2" H 4700 1950 50  0000 C CNN
F 1 "+10V " H 4700 2150 50  0000 C CNN
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
	3700 1250 3700 1350
Connection ~ 2850 1350
Text GLabel 3450 1650 0    60   Input ~ 0
VG
Text GLabel 2850 2050 0    60   Input ~ 0
Vbase
Wire Wire Line
	2850 1250 2850 1350
Text Notes 8100 5300 0    60   ~ 0
pulse (9.50V 11.5V 2ms 0 0 5ms 10ms 0)\n\n.include ../ComponentModels/1n4148.spi\n.include ../ComponentModels/2n3906.spi\n.include ../ComponentModels/irf4905.spi\n\n*.TRAN 0.1us 10ms \n.DC V1 0 20 0.1\n  // performs dc analysis; \n  // sweeps V1 from 0 to 20 volts in steps of 0.1 volts\n.control\nrun\nplot VA VK  VG Vbase\nplot VA-VK\nplot VA-Vbase VK-Vbase VK-VG\nplot -i(V1) i(V2)\n\n*plot diff=par('VA-VK')\n* .model Zener16V D(bv=16v)\n*.MODEL Q_NMOS NMOS LEVEL=1 IS=1e-32\n*+VTO=3.56214 LAMBDA=0 KP=39.3974\n*+CGSO=1.25255e-05 CGDO=2.2826e-07\n* .MODEL Q_PMOS PMOS LEVEL=1 IS=1e-32\n*+VTO=-3.56214 LAMBDA=0 KP=39.3974\n*+CGSO=1.25255e-05 CGDO=2.2826e-07\n*.control\n*.ic V(Vpp)=0\n*tran 2ns 55.6us 55.5us\n*tran 5ns 56us 54.5us\n*tran 1us 500us \n*plot I(V1)\n*plot q1d-q2d\n*plot vpp1-vpp\n*plot Q3S\n*plot VS\n*plot VS*Q3S\n*plot vs-vsl\n*plot q12d-VS\n*plot (q12d-VS)*(vs-vsl)\n\n.end
Wire Wire Line
	1800 2750 1800 3700
Wire Wire Line
	4700 3700 4700 2750
$Comp
L R R4
U 1 1 5AD6B26E
P 2850 3400
F 0 "R4" V 2930 3400 50  0000 C CNN
F 1 "1m" V 2850 3400 50  0000 C CNN
F 2 "" H 2850 3400 50  0001 C CNN
F 3 "" H 2850 3400 50  0001 C CNN
	1    2850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3650 2850 3700
Text GLabel 2850 3150 0    60   Input ~ 0
VD
$Comp
L R R6
U 1 1 5AD6B7D9
P 3700 2900
F 0 "R6" V 3780 2900 50  0000 C CNN
F 1 "1m" V 3700 2900 50  0000 C CNN
F 2 "" H 3700 2900 50  0001 C CNN
F 3 "" H 3700 2900 50  0001 C CNN
	1    3700 2900
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5AD6B871
P 2850 2900
F 0 "R5" V 2930 2900 50  0000 C CNN
F 1 "1m" V 2850 2900 50  0000 C CNN
F 2 "" H 2850 2900 50  0001 C CNN
F 3 "" H 2850 2900 50  0001 C CNN
	1    2850 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3150 2850 3150
Wire Wire Line
	2850 2550 2850 2650
Wire Wire Line
	3700 2550 3700 2650
Text GLabel 2850 2650 0    60   Input ~ 0
VD2
Text GLabel 3700 2650 0    60   Input ~ 0
VD3
$Comp
L IRF4905 XQ1
U 1 1 5AF774ED
P 3350 1450
F 0 "XQ1" V 3350 1600 50  0000 L CNN
F 1 "IRF4905" V 3600 1350 50  0000 L CNN
F 2 "TO-220" H 3550 1375 50  0001 L CIN
F 3 "" H 3350 1450 50  0001 L CNN
F 4 "2,1,3" V 3350 1450 60  0001 C CNN "Spice_Node_Sequence"
	1    3350 1450
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
