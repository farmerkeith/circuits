EESchema Schematic File Version 2
LIBS:pspice
LIBS:Modules
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
LIBS:MOSFETdiodeDiscretesHiV-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MOSFET diode discretes for high voltage"
Date "2018-05-13"
Rev ""
Comp "farmerkeith"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1600 1350 2950 1350
$Comp
L GND #PWR01
U 1 1 5AF77412
P 1600 3700
F 0 "#PWR01" H 1600 3450 50  0001 C CNN
F 1 "GND" H 1600 3550 50  0000 C CNN
F 2 "" H 1600 3700 50  0001 C CNN
F 3 "" H 1600 3700 50  0001 C CNN
	1    1600 3700
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D1
U 1 1 5AF77413
P 2650 1500
F 0 "D1" H 2650 1600 50  0000 C CNN
F 1 "1N4148" H 2650 1400 50  0000 C CNN
F 2 "" H 2650 1500 50  0001 C CNN
F 3 "" H 2650 1500 50  0001 C CNN
F 4 "2,1" H 2650 1500 60  0001 C CNN "Spice_Node_Sequence"
	1    2650 1500
	0    -1   -1   0   
$EndComp
$Comp
L D_ALT D2
U 1 1 5AF77414
P 3500 1500
F 0 "D2" H 3500 1600 50  0000 C CNN
F 1 "1N4148" H 3500 1400 50  0000 C CNN
F 2 "" H 3500 1500 50  0001 C CNN
F 3 "" H 3500 1500 50  0001 C CNN
F 4 "2,1" H 3500 1500 60  0001 C CNN "Spice_Node_Sequence"
	1    3500 1500
	0    -1   -1   0   
$EndComp
$Comp
L Q_PNP_CBE Q2
U 1 1 5AF77415
P 2750 1850
F 0 "Q2" H 2950 1900 50  0000 L CNN
F 1 "2N3906" H 2950 1800 50  0000 L CNN
F 2 "" H 2950 1950 50  0001 C CNN
F 3 "" H 2750 1850 50  0001 C CNN
	1    2750 1850
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5AF77416
P 2650 2300
F 0 "R2" V 2730 2300 50  0000 C CNN
F 1 "470K" V 2650 2300 50  0000 C CNN
F 2 "" V 2580 2300 50  0001 C CNN
F 3 "" H 2650 2300 50  0001 C CNN
	1    2650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1850 2950 2050
Wire Wire Line
	2950 2050 2650 2050
$Comp
L Q_PNP_CBE Q3
U 1 1 5AF77417
P 3400 1850
F 0 "Q3" H 3600 1900 50  0000 L CNN
F 1 "2N3906" H 3600 1800 50  0000 L CNN
F 2 "" H 3600 1950 50  0001 C CNN
F 3 "" H 3400 1850 50  0001 C CNN
	1    3400 1850
	1    0    0    1   
$EndComp
$Comp
L R R3
U 1 1 5AF77418
P 3500 2300
F 0 "R3" V 3580 2300 50  0000 C CNN
F 1 "470K" V 3500 2300 50  0000 C CNN
F 2 "" V 3430 2300 50  0001 C CNN
F 3 "" H 3500 2300 50  0001 C CNN
	1    3500 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3700 4700 3700
Wire Wire Line
	3200 1850 2950 1850
Wire Wire Line
	3250 1650 3250 2050
Wire Wire Line
	3250 2050 3500 2050
Wire Notes Line
	2200 1150 4100 1150
Wire Notes Line
	4100 1150 4100 3200
Wire Notes Line
	4100 3200 2200 3200
Wire Notes Line
	2200 3200 2200 1150
Text Notes 5250 2750 0    60   ~ 0
+PSPICE \n.include ../ComponentModels/1n4148.spi\n.include ../ComponentModels/2n3906.spi\n.include ../ComponentModels/irf4905.spi\n.include ../ComponentModels/1n4742.spi\n\n.DC V1 25 45 1\n*.TRAN 0.05us 10ms\n // transient analysis for 10 ms in steps of 0.1 us (10,000 steps)\n*pulse (9.50V 11.5V 2ms 0 0 5ms 10ms 0) V1 for transient analysis\n.control\nrun\nplot VA VK  VG Vbase\nplot VA-VK\nplot VA-Vbase VK-Vbase VK-VG\nplot -i(V1) i(V2)\nplot VD VK-VD\n\n
$Comp
L VSOURCE V1
U 1 1 5AF77419
P 1600 2050
F 0 "V1" H 1600 1950 50  0000 C CNN
F 1 "25V" H 1600 2100 50  0000 C CNN
F 2 "" H 1600 2050 50  0001 C CNN
F 3 "" H 1600 2050 50  0001 C CNN
	1    1600 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1350 4200 1350
Connection ~ 3500 1350
$Comp
L R R1
U 1 1 5AF7741A
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
U 1 1 5AF7741B
P 4700 2050
F 0 "V2" H 4700 1950 50  0000 C CNN
F 1 "+40V " H 4700 2150 50  0000 C CNN
F 2 "" H 4700 2050 50  0001 C CNN
F 3 "" H 4700 2050 50  0001 C CNN
	1    4700 2050
	1    0    0    -1  
$EndComp
Connection ~ 2650 3700
Text GLabel 2650 1250 0    60   Input ~ 0
VA
Text GLabel 3500 1250 2    60   Input ~ 0
VK
Wire Wire Line
	3500 1250 3500 1350
Connection ~ 2650 1350
Text GLabel 3250 1650 0    60   Input ~ 0
VG
Text GLabel 2650 2050 0    60   Input ~ 0
Vbase
Wire Wire Line
	2650 1250 2650 1350
Wire Wire Line
	1600 2750 1600 3700
Wire Wire Line
	4700 3700 4700 2750
$Comp
L R R4
U 1 1 5AF7741C
P 2650 2950
F 0 "R4" V 2730 2950 50  0000 C CNN
F 1 "100K" V 2650 2950 50  0000 C CNN
F 2 "" H 2650 2950 50  0001 C CNN
F 3 "" H 2650 2950 50  0001 C CNN
	1    2650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3200 2650 3700
Text GLabel 2650 2700 0    60   Input ~ 0
VD
Wire Wire Line
	2650 2700 3900 2700
Wire Wire Line
	2650 2700 2650 2550
Wire Wire Line
	3500 2550 3500 2700
$Comp
L IRF4905 XQ1
U 1 1 5AF7762E
P 3150 1450
F 0 "XQ1" V 3100 1600 50  0000 L CNN
F 1 "IRF4905" V 3400 1300 50  0000 L CNN
F 2 "TO-220" H 3350 1375 50  0001 L CIN
F 3 "" H 3150 1450 50  0001 L CNN
	1    3150 1450
	0    -1   -1   0   
$EndComp
$Comp
L D_Zener_ALT D3
U 1 1 5AF779F4
P 3900 2150
F 0 "D3" H 3900 2250 50  0000 C CNN
F 1 "1N4742 " H 3900 2050 50  0000 C CNN
F 2 "" H 3900 2150 50  0001 C CNN
F 3 "" H 3900 2150 50  0001 C CNN
F 4 "2,1" H 3900 2150 60  0001 C CNN "Spice_Node_Sequence"
	1    3900 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 2000 3900 1350
Connection ~ 3900 1350
Wire Wire Line
	3900 2700 3900 2300
Connection ~ 3500 2700
$EndSCHEMATC
