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
LIBS:currentShuntAmpOpAmpBi-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "currentShuntAmpOpAmpBidirectional"
Date "2018-06-05"
Rev ""
Comp "farmerkeith"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	900  700  1850 700 
$Comp
L GND #PWR01
U 1 1 5AF406F9
P 900 3050
F 0 "#PWR01" H 900 2800 50  0001 C CNN
F 1 "GND" H 900 2900 50  0000 C CNN
F 2 "" H 900 3050 50  0001 C CNN
F 3 "" H 900 3050 50  0001 C CNN
	1    900  3050
	1    0    0    -1  
$EndComp
Text Notes 4350 3900 0    60   ~ 0
+PSPICE \n*.include ../ComponentModels/1n4148.spi\n.include ../ComponentModels/2n3906.spi\n.include ../ComponentModels/ad822a.cir\n*.include ../ComponentModels/irf4905.spi\n.model 1N4733 D(Is=1.214f Rs=1.078 Ikf=0 N=1 Xti=3 Eg=1.11\n+ Cjo=185p M=.3509 Vj=.75 Fc=.5  Bv=5.1 Ibv=.70507\n+ Nbv=.74348 )\n* BZX792V4*3 requires R4=506.7\n* 1N4733 requires R4=442.5\n* derived from 1N4733 by changing Bv from 5.1 to 2.4\n* Motorola pid=1N4733 case=DO-41\n\n.DC I1 -20 20 1  V1 10 15 2.5 \n*.DC I1 -0.1 0.8 0.01  \n// DC analysis for 20, 30 and 40 Volts\n//.DC I1 -0.5 8.5 0.1\n// DC analysis from -0.5 to 8.5 Amps in steps of 0.1 Amp\n\n*.TRAN 0.05us 10ms\n // transient analysis for 10 ms in steps of 0.1 us (10,000 steps)\n.control\nrun\n*plot Va Ve1 Vk\n*plot (VA-VK)*25+2.693 Vout\n*plot (VA-VK)*25+2.693-Vout\n*plot VA VK  Vbase\n*plot VK-Vref\n*plot Ve1-Vc1 VA-Ve1 VA-Vc1 VK-Vc1\nplot vout\nplot 2.5+i(v1)*0.125-vout // voltage error\nplot (va-ve)/100-vout/6282\n*plot vout*8/5-i(v1) // ccurrent error\n*plot i1\n
Connection ~ 2300 700 
$Comp
L VSOURCE V1
U 1 1 5AF406FA
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
Text GLabel 2300 600  2    60   Input ~ 0
VK
Connection ~ 1600 700 
Wire Wire Line
	900  2100 900  3050
Wire Wire Line
	3800 3050 3800 2100
$Comp
L ISOURCE I1
U 1 1 5AF406FB
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
U 1 1 5AF406FC
P 2000 700
F 0 "R1" V 2080 700 50  0000 C CNN
F 1 "2m" V 2000 700 50  0000 C CNN
F 2 "" H 2000 700 50  0001 C CNN
F 3 "" H 2000 700 50  0001 C CNN
	1    2000 700 
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 600  1600 800 
Text Notes 9600 1100 0    60   ~ 0
Objectives:\nShunt resistor 4 m Ohms\nCurrent unidirectional 8 A\nVout 0 at 0 A, 5V at 8A\nVK between 20 and 40 V
Connection ~ 3800 700 
Connection ~ 1600 3050
Wire Wire Line
	2150 700  3800 700 
Wire Wire Line
	900  3050 3800 3050
$Comp
L AD8620 U1
U 1 1 5AF406FD
P 2200 1200
F 0 "U1" H 2200 1400 50  0000 L CNN
F 1 "AD822A" H 2200 1000 50  0000 L CNN
F 2 "" H 2200 1200 50  0001 C CNN
F 3 "" H 2200 1200 50  0001 C CNN
F 4 "3,2,8,4,1" H 2200 1200 60  0001 C CNN "Spice_Node_Sequence"
	1    2200 1200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2500 1100 2700 1100
Wire Wire Line
	2300 600  2300 900 
$Comp
L R R2
U 1 1 5AF406FE
P 1600 950
F 0 "R2" V 1680 950 50  0000 C CNN
F 1 "100R" V 1600 950 50  0000 C CNN
F 2 "" V 1530 950 50  0001 C CNN
F 3 "" H 1600 950 50  0001 C CNN
	1    1600 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1100 1600 1750
Wire Wire Line
	1600 1650 2500 1650
$Comp
L Q_PNP_CBE Q1
U 1 1 5AF406FF
P 1700 1950
F 0 "Q1" H 1900 2000 50  0000 L CNN
F 1 "2N3906" H 1900 1900 50  0000 L CNN
F 2 "" H 1900 2050 50  0001 C CNN
F 3 "" H 1700 1950 50  0001 C CNN
	1    1700 1950
	-1   0    0    1   
$EndComp
Connection ~ 1600 1650
$Comp
L R R3
U 1 1 5AF40700
P 1600 2500
F 0 "R3" V 1680 2500 50  0000 C CNN
F 1 "6282" V 1500 2500 50  0000 C CNN
F 2 "" V 1530 2500 50  0001 C CNN
F 3 "" H 1600 2500 50  0001 C CNN
	1    1600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2150 1600 2350
Wire Wire Line
	1600 2650 1600 3050
Connection ~ 2700 3050
Text GLabel 1600 2250 2    60   Input ~ 0
Vout
Text GLabel 1900 1950 2    60   Input ~ 0
Vb
Text GLabel 1600 1650 0    60   Input ~ 0
Ve
Wire Wire Line
	1900 1950 1900 1950
$Comp
L R R4
U 1 1 5AF40703
P 2700 850
F 0 "R4" V 2780 850 50  0000 C CNN
F 1 "422.6" V 2700 850 50  0000 C CNN
F 2 "" V 2630 850 50  0001 C CNN
F 3 "" H 2700 850 50  0001 C CNN
	1    2700 850 
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5AF40704
P 2700 1350
F 0 "R5" V 2780 1350 50  0000 C CNN
F 1 "50K" V 2700 1350 50  0000 C CNN
F 2 "" V 2630 1350 50  0001 C CNN
F 3 "" H 2700 1350 50  0001 C CNN
	1    2700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1000 2700 1200
Connection ~ 2700 700 
Connection ~ 2700 1100
Wire Wire Line
	1900 1200 1900 1950
Wire Wire Line
	2500 1650 2500 1300
$Comp
L D_Zener_ALT D1
U 1 1 5AF4167E
P 3200 1150
F 0 "D1" H 3200 1250 50  0000 C CNN
F 1 "1N4733" H 3200 1050 50  0000 C CNN
F 2 "" H 3200 1150 50  0001 C CNN
F 3 "" H 3200 1150 50  0001 C CNN
F 4 "2,1" H 3200 1150 60  0001 C CNN "Spice_Node_Sequence"
	1    3200 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 1000 3200 700 
Connection ~ 3200 700 
Wire Wire Line
	3200 2000 3200 1300
$Comp
L R R6
U 1 1 5AF41732
P 2700 2500
F 0 "R6" V 2780 2500 50  0000 C CNN
F 1 "5K" V 2700 2500 50  0000 C CNN
F 2 "" V 2630 2500 50  0001 C CNN
F 3 "" H 2700 2500 50  0001 C CNN
	1    2700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3050 2700 2650
Text GLabel 2700 1100 2    60   Input ~ 0
Voffset
Text GLabel 2700 1600 2    60   Input ~ 0
Vref
Wire Wire Line
	2700 1500 2700 2350
Wire Wire Line
	2300 2000 3200 2000
Wire Wire Line
	2300 1500 2300 2000
Connection ~ 2700 2000
$EndSCHEMATC
