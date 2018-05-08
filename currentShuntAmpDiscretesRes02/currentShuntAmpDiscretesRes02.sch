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
LIBS:currentShuntAmpDiscretesRes02-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "currentShuntAmpDiscretesRes02"
Date "2018-05-08"
Rev ""
Comp "farmerkeith"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	900  700  2250 700 
$Comp
L GND #PWR01
U 1 1 5AF15DB0
P 900 3050
F 0 "#PWR01" H 900 2800 50  0001 C CNN
F 1 "GND" H 900 2900 50  0000 C CNN
F 2 "" H 900 3050 50  0001 C CNN
F 3 "" H 900 3050 50  0001 C CNN
	1    900  3050
	1    0    0    -1  
$EndComp
$Comp
L Q_PNP_CBE Q2
U 1 1 5AF15DB1
P 2050 1400
F 0 "Q2" H 2250 1450 50  0000 L CNN
F 1 "2N3906" H 2250 1350 50  0000 L CNN
F 2 "" H 2250 1500 50  0001 C CNN
F 3 "" H 2050 1400 50  0001 C CNN
	1    2050 1400
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 5AF15DB2
P 1950 2450
F 0 "R4" V 2030 2450 50  0000 C CNN
F 1 "10K" V 1950 2450 50  0000 C CNN
F 2 "" V 1880 2450 50  0001 C CNN
F 3 "" H 1950 2450 50  0001 C CNN
	1    1950 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1400 2500 1600
$Comp
L Q_PNP_CBE Q1
U 1 1 5AF15DB3
P 2700 1400
F 0 "Q1" H 2900 1450 50  0000 L CNN
F 1 "2N3906" H 2900 1350 50  0000 L CNN
F 2 "" H 2900 1500 50  0001 C CNN
F 3 "" H 2700 1400 50  0001 C CNN
	1    2700 1400
	1    0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5AF15DB4
P 2800 1850
F 0 "R5" V 2880 1850 50  0000 C CNN
F 1 "9214" V 2800 1850 50  0000 C CNN
F 2 "" V 2730 1850 50  0001 C CNN
F 3 "" H 2800 1850 50  0001 C CNN
	1    2800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3050 4700 3050
Wire Wire Line
	2500 1400 2250 1400
Wire Wire Line
	2500 1600 2800 1600
Text Notes 5350 3700 0    60   ~ 0
+PSPICE \n*.include ../ComponentModels/1n4148.spi\n.include ../ComponentModels/2n3906.spi\n*.include ../ComponentModels/irf4905.spi\n.model D1N4733 D(Is=1.214f Rs=1.078 Ikf=0 N=1 Xti=3 Eg=1.11\n+ Cjo=185p M=.3509 Vj=.75 Fc=.5  Bv=5.1 Ibv=.70507\n+ Nbv=.74348 )\n* Motorola pid=1N4733 case=DO-41\n\n.DC I1 -0.5 8.5 0.1 // V1 20 40 10 \n// DC analysis for 20, 30 and 40 Volts\n//.DC I1 -0.5 8.5 0.1\n// DC analysis from -0.5 to 8.5 Amps in steps of 0.1 Amp\n\n*.TRAN 0.05us 10ms\n // transient analysis for 10 ms in steps of 0.1 us (10,000 steps)\n.control\nrun\nplot Va Ve1 Vk\nplot (VA-VK)*25+2.693 Vout\nplot (VA-VK)*25+2.693-Vout\nplot VA VK  Vbase\nplot Vref\nplot Ve1-Vbase VA-Ve1 VA-Vbase VK-Vbase\n
Wire Wire Line
	2550 700  5100 700 
Connection ~ 2800 700 
$Comp
L VSOURCE V1
U 1 1 5AF15DB5
P 3800 1400
F 0 "V1" H 3800 1300 50  0000 C CNN
F 1 "+30V " H 3800 1500 50  0000 C CNN
F 2 "" H 3800 1400 50  0001 C CNN
F 3 "" H 3800 1400 50  0001 C CNN
	1    3800 1400
	1    0    0    -1  
$EndComp
Connection ~ 1950 3050
Text GLabel 1950 600  0    60   Input ~ 0
VA
Text GLabel 2800 600  2    60   Input ~ 0
VK
Connection ~ 1950 700 
Text GLabel 2500 1600 0    60   Input ~ 0
Vbase
Wire Wire Line
	900  2100 900  3050
Wire Wire Line
	3800 3050 3800 2100
Text GLabel 1950 2200 0    60   Input ~ 0
Vout
$Comp
L ISOURCE I1
U 1 1 5AF15DB7
P 900 1400
F 0 "I1" H 900 1220 50  0000 C CNN
F 1 "1Amp" H 910 1570 50  0000 C CNN
F 2 "" H 900 1400 50  0001 C CNN
F 3 "" H 900 1400 50  0001 C CNN
F 4 "2,1" H 900 1400 60  0001 C CNN "Spice_Node_Sequence"
	1    900  1400
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5AF15DB8
P 2400 700
F 0 "R1" V 2480 700 50  0000 C CNN
F 1 "4m" V 2400 700 50  0000 C CNN
F 2 "" H 2400 700 50  0001 C CNN
F 3 "" H 2400 700 50  0001 C CNN
	1    2400 700 
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5AF15DB9
P 1950 950
F 0 "R2" V 2030 950 50  0000 C CNN
F 1 "63.4" V 1950 950 50  0000 C CNN
F 2 "" H 1950 950 50  0001 C CNN
F 3 "" H 1950 950 50  0001 C CNN
	1    1950 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2600 1950 3050
Connection ~ 2800 3050
Wire Wire Line
	1950 600  1950 800 
Wire Wire Line
	2800 600  2800 1200
Wire Wire Line
	1950 1100 1950 1200
Wire Wire Line
	2800 1600 2800 1700
Wire Wire Line
	1950 2300 1950 1600
Text Notes 5350 1050 0    60   ~ 0
Objectives:\nShunt resistor 4 m Ohms\nCurrent unidirectional 8 A\nVout 0 at 0 A, 5V at 8A\nVK between 20 and 40 V
Text GLabel 1950 1200 0    60   Input ~ 0
Ve1
$Comp
L D_Zener_ALT D1
U 1 1 5AF16202
P 3250 1650
F 0 "D1" H 3250 1750 50  0000 C CNN
F 1 "D1N4733" H 3250 1550 50  0000 C CNN
F 2 "" H 3250 1650 50  0001 C CNN
F 3 "" H 3250 1650 50  0001 C CNN
F 4 "2,1" H 3250 1650 60  0001 C CNN "Spice_Node_Sequence"
	1    3250 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 1500 3250 700 
Connection ~ 3250 700 
Wire Wire Line
	3250 1800 3250 2000
Wire Wire Line
	3250 2000 2800 2000
$Comp
L R R3
U 1 1 5AF16455
P 2800 2450
F 0 "R3" V 2880 2450 50  0000 C CNN
F 1 "15K" V 2800 2450 50  0000 C CNN
F 2 "" V 2730 2450 50  0001 C CNN
F 3 "" H 2800 2450 50  0001 C CNN
	1    2800 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2000 2800 2300
Wire Wire Line
	2800 2600 2800 3050
Text GLabel 2800 2000 0    60   Input ~ 0
Vref
$Comp
L 2N3906 Q3
U 1 1 5AF1B705
P 4600 1350
F 0 "Q3" H 4800 1425 50  0000 L CNN
F 1 "2N3906" H 4800 1350 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 4800 1275 50  0001 L CIN
F 3 "" H 4600 1350 50  0001 L CNN
	1    4600 1350
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5AF1B7EB
P 4700 2050
F 0 "R6" V 4780 2050 50  0000 C CNN
F 1 "9214" V 4700 2050 50  0000 C CNN
F 2 "" V 4630 2050 50  0001 C CNN
F 3 "" H 4700 2050 50  0001 C CNN
	1    4700 2050
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5AF1B818
P 4700 2450
F 0 "R7" V 4780 2450 50  0000 C CNN
F 1 "2K" V 4700 2450 50  0000 C CNN
F 2 "" V 4630 2450 50  0001 C CNN
F 3 "" H 4700 2450 50  0001 C CNN
	1    4700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3050 4700 2600
Connection ~ 3800 3050
Wire Wire Line
	4700 2300 4700 2200
Connection ~ 3800 700 
Wire Wire Line
	4400 1350 4400 1550
$Comp
L D_Zener_ALT D2
U 1 1 5AF1BC50
P 5100 2050
F 0 "D2" H 5100 2150 50  0000 C CNN
F 1 "D1N4733" H 5100 1950 50  0000 C CNN
F 2 "" H 5100 2050 50  0001 C CNN
F 3 "" H 5100 2050 50  0001 C CNN
F 4 "2,1" H 5100 2050 60  0001 C CNN "Spice_Node_Sequence"
	1    5100 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 2200 5100 2200
Wire Wire Line
	5100 700  5100 1900
Connection ~ 4700 700 
Text GLabel 4700 2200 0    60   Input ~ 0
VD2
Text GLabel 4400 1350 0    60   Input ~ 0
VB3
$Comp
L R R8
U 1 1 5AF1BED5
P 4700 850
F 0 "R8" V 4780 850 50  0000 C CNN
F 1 "1m" V 4700 850 50  0000 C CNN
F 2 "" V 4630 850 50  0001 C CNN
F 3 "" H 4700 850 50  0001 C CNN
	1    4700 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1000 4700 1150
Text GLabel 4700 1000 0    60   Input ~ 0
VE3
$Comp
L R R9
U 1 1 5AF1D279
P 4400 1700
F 0 "R9" V 4480 1700 50  0000 C CNN
F 1 "180.6m" V 4400 1700 50  0000 C CNN
F 2 "" V 4330 1700 50  0001 C CNN
F 3 "" H 4400 1700 50  0001 C CNN
	1    4400 1700
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5AF1D351
P 4700 1700
F 0 "R10" V 4780 1700 50  0000 C CNN
F 1 "1m" V 4700 1700 50  0000 C CNN
F 2 "" V 4630 1700 50  0001 C CNN
F 3 "" H 4700 1700 50  0001 C CNN
	1    4700 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1850 4700 1850
Wire Wire Line
	4700 1850 4700 1900
Text GLabel 4700 1550 2    60   Input ~ 0
VC3
Text GLabel 4700 1850 2    60   Input ~ 0
VI3
$EndSCHEMATC
