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
LIBS:Modules
LIBS:currentShuntAmpOpAmpUni-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "currentShuntAmpOpAmpUni"
Date "2018-05-09"
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
L GND #PWR1
U 1 1 5AF292D3
P 900 3050
F 0 "#PWR1" H 900 2800 50  0001 C CNN
F 1 "GND" H 900 2900 50  0000 C CNN
F 2 "" H 900 3050 50  0001 C CNN
F 3 "" H 900 3050 50  0001 C CNN
	1    900  3050
	1    0    0    -1  
$EndComp
Text Notes 4400 3350 0    60   ~ 0
+PSPICE \n*.include ../ComponentModels/1n4148.spi\n.include ../ComponentModels/2n3906.spi\n.include ../ComponentModels/ad822a.cir\n*.include ../ComponentModels/irf4905.spi\n.model D1N4733 D(Is=1.214f Rs=1.078 Ikf=0 N=1 Xti=3 Eg=1.11\n+ Cjo=185p M=.3509 Vj=.75 Fc=.5  Bv=5.1 Ibv=.70507\n+ Nbv=.74348 )\n* Motorola pid=1N4733 case=DO-41\n\n*.DC I1 -1 8 0.1 // V1 20 40 10 \n.DC I1 -0.1 0.8 0.01  \n// DC analysis for 20, 30 and 40 Volts\n//.DC I1 -0.5 8.5 0.1\n// DC analysis from -0.5 to 8.5 Amps in steps of 0.1 Amp\n\n*.TRAN 0.05us 10ms\n // transient analysis for 10 ms in steps of 0.1 us (10,000 steps)\n.control\nrun\n*plot Va Ve1 Vk\n*plot (VA-VK)*25+2.693 Vout\n*plot (VA-VK)*25+2.693-Vout\n*plot VA VK  Vbase\n*plot VK-Vref\n*plot Ve1-Vc1 VA-Ve1 VA-Vc1 VK-Vc1\nplot vout\n
Connection ~ 2800 700 
$Comp
L VSOURCE V1
U 1 1 5AF292D7
P 3800 1400
F 0 "V1" H 3800 1300 50  0000 C CNN
F 1 "+30V " H 3800 1500 50  0000 C CNN
F 2 "" H 3800 1400 50  0001 C CNN
F 3 "" H 3800 1400 50  0001 C CNN
	1    3800 1400
	1    0    0    -1  
$EndComp
Text GLabel 1600 600  0    60   Input ~ 0
VA
Text GLabel 2800 600  2    60   Input ~ 0
VK
Connection ~ 1600 700 
Wire Wire Line
	900  2100 900  3050
Wire Wire Line
	3800 3050 3800 2100
$Comp
L ISOURCE I1
U 1 1 5AF292D8
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
U 1 1 5AF292D9
P 2400 700
F 0 "R1" V 2480 700 50  0000 C CNN
F 1 "4m" V 2400 700 50  0000 C CNN
F 2 "" H 2400 700 50  0001 C CNN
F 3 "" H 2400 700 50  0001 C CNN
	1    2400 700 
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 600  1600 800 
Text Notes 9600 1100 0    60   ~ 0
Objectives:\nShunt resistor 4 m Ohms\nCurrent unidirectional 8 A\nVout 0 at 0 A, 5V at 8A\nVK between 20 and 40 V
Connection ~ 3000 700 
Connection ~ 3800 3050
Connection ~ 3800 700 
Connection ~ 1600 3050
Wire Wire Line
	2550 700  3800 700 
Wire Wire Line
	900  3050 3800 3050
Wire Wire Line
	2800 600  2800 900 
$Comp
L AD8620 U1
U 1 1 5AF2A4C1
P 2300 1450
F 0 "U1" H 2300 1650 50  0000 L CNN
F 1 "AD822A" H 2300 1250 50  0000 L CNN
F 2 "" H 2300 1450 50  0001 C CNN
F 3 "" H 2300 1450 50  0001 C CNN
F 4 "8,2,3,4,1" H 2300 1450 60  0001 C CNN "Spice_Node_Sequence"
	1    2300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1350 2000 900 
Wire Wire Line
	2000 900  2800 900 
Wire Wire Line
	2200 1150 3000 1150
Wire Wire Line
	3000 1150 3000 700 
$Comp
L R R2
U 1 1 5AF2A548
P 1600 950
F 0 "R2" V 1680 950 50  0000 C CNN
F 1 "1000R" V 1600 950 50  0000 C CNN
F 2 "" V 1530 950 50  0001 C CNN
F 3 "" H 1600 950 50  0001 C CNN
	1    1600 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1100 1600 1750
Wire Wire Line
	1600 1550 2000 1550
$Comp
L Q_PNP_CBE Q1
U 1 1 5AF2A750
P 1700 1950
F 0 "Q1" H 1900 2000 50  0000 L CNN
F 1 "2N3906" H 1900 1900 50  0000 L CNN
F 2 "" H 1900 2050 50  0001 C CNN
F 3 "" H 1700 1950 50  0001 C CNN
	1    1700 1950
	-1   0    0    1   
$EndComp
Connection ~ 1600 1550
$Comp
L R R3
U 1 1 5AF2A81A
P 1600 2500
F 0 "R3" V 1680 2500 50  0000 C CNN
F 1 "5K" V 1600 2500 50  0000 C CNN
F 2 "" V 1530 2500 50  0001 C CNN
F 3 "" H 1600 2500 50  0001 C CNN
	1    1600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2150 1600 2350
Wire Wire Line
	1600 2650 1600 3050
Wire Wire Line
	2750 1950 2750 1450
Wire Wire Line
	2750 1450 2600 1450
$Comp
L D_Zener_ALT D1
U 1 1 5AF2AC64
P 3150 1450
F 0 "D1" H 3150 1550 50  0000 C CNN
F 1 "D1N4733" H 3150 1350 50  0000 C CNN
F 2 "" H 3150 1450 50  0001 C CNN
F 3 "" H 3150 1450 50  0001 C CNN
F 4 "2,1" H 3150 1450 60  0001 C CNN "Spice_Node_Sequence"
	1    3150 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 1300 3150 700 
Connection ~ 3150 700 
Wire Wire Line
	3150 1600 3150 2350
Wire Wire Line
	3150 1750 2200 1750
$Comp
L R R4
U 1 1 5AF2B09B
P 3150 2500
F 0 "R4" V 3230 2500 50  0000 C CNN
F 1 "10K" V 3150 2500 50  0000 C CNN
F 2 "" V 3080 2500 50  0001 C CNN
F 3 "" H 3150 2500 50  0001 C CNN
	1    3150 2500
	1    0    0    -1  
$EndComp
Connection ~ 3150 1750
Wire Wire Line
	3150 2650 3150 3050
Connection ~ 3150 3050
Text GLabel 1600 2250 2    60   Input ~ 0
Vout
Text GLabel 1900 1950 3    60   Input ~ 0
Vb
Text GLabel 1600 1550 0    60   Input ~ 0
Ve
Text GLabel 3150 1750 2    60   Input ~ 0
Vneg
$Comp
L R R5
U 1 1 5AF2E738
P 2300 1950
F 0 "R5" V 2380 1950 50  0000 C CNN
F 1 "1000R" V 2300 1950 50  0000 C CNN
F 2 "" V 2230 1950 50  0001 C CNN
F 3 "" H 2300 1950 50  0001 C CNN
	1    2300 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 1950 2750 1950
Wire Wire Line
	2150 1950 1900 1950
Text GLabel 2750 1950 3    60   Input ~ 0
Vop
$EndSCHEMATC
