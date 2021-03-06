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
LIBS:control-cache
LIBS:async-cache
LIBS:mains-cache
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
Wire Wire Line
	800  7700 1450 7700
$Comp
L R R4
U 1 1 5B060D1C
P 5200 1450
F 0 "R4" V 5280 1450 50  0000 C CNN
F 1 "100K" V 5200 1450 50  0000 C CNN
F 2 "" V 5130 1450 50  0001 C CNN
F 3 "" H 5200 1450 50  0001 C CNN
	1    5200 1450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 5B060D1D
P 5400 2300
F 0 "#PWR01" H 5400 2050 50  0001 C CNN
F 1 "GND" H 5400 2150 50  0000 C CNN
F 2 "" H 5400 2300 50  0001 C CNN
F 3 "" H 5400 2300 50  0001 C CNN
	1    5400 2300
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5B060D1E
P 4950 2050
F 0 "R5" V 5030 2050 50  0000 C CNN
F 1 "10K" V 4950 2050 50  0000 C CNN
F 2 "" V 4880 2050 50  0001 C CNN
F 3 "" H 4950 2050 50  0001 C CNN
	1    4950 2050
	0    1    1    0   
$EndComp
Text GLabel 4700 2050 0    60   Input ~ 0
D3
$Comp
L Q_NPN_CBE Q2
U 1 1 5B060D1F
P 5300 2050
F 0 "Q2" H 5500 2100 50  0000 L CNN
F 1 "2N3904" H 5500 2000 50  0000 L CNN
F 2 "" H 5500 2150 50  0001 C CNN
F 3 "" H 5300 2050 50  0001 C CNN
	1    5300 2050
	1    0    0    -1  
$EndComp
Text Notes 4100 1950 0    60   ~ 0
MAINS SUPPLY CONTROL \nSUB-CIRCUIT
Wire Wire Line
	5400 2250 5400 2300
$Comp
L IRF4905 XQ1
U 1 1 5B060D2A
P 5400 1400
F 0 "XQ1" V 5600 1200 50  0000 L CNN
F 1 "IRF4905" V 5600 1400 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 5650 1325 50  0001 L CIN
F 3 "" H 5400 1400 50  0001 L CNN
	1    5400 1400
	0    1    -1   0   
$EndComp
Wire Wire Line
	5400 1600 5200 1600
Wire Wire Line
	3850 1300 5200 1300
$Comp
L VSOURCE V1
U 1 1 5B06187E
P 900 1450
F 0 "V1" H 900 1350 50  0000 C CNN
F 1 "sine 0 340V 50Hz" H 900 1550 50  0000 C CNN
F 2 "" H 900 1450 50  0001 C CNN
F 3 "" H 900 1450 50  0001 C CNN
	1    900  1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 750  1700 1200
Wire Wire Line
	900  2150 1700 2150
Wire Wire Line
	1700 2150 1700 1700
Wire Wire Line
	1950 1150 3000 1150
$Comp
L GND #PWR02
U 1 1 5B06187F
P 7050 2150
F 0 "#PWR02" H 7050 1900 50  0001 C CNN
F 1 "GND" H 7050 2000 50  0000 C CNN
F 2 "" H 7050 2150 50  0001 C CNN
F 3 "" H 7050 2150 50  0001 C CNN
	1    7050 2150
	1    0    0    -1  
$EndComp
Text Notes 7600 2700 0    60   ~ 0
+pspice\n.include ../../ComponentModels/gbj1506.spi\n.include ../../ComponentModels/irf4905.spi\n.include ../../ComponentModels/2n3904.spi\nK L1 L2 1\n*.DC V3 0 5 5 \n.TRAN 0.0001 0.04 \n.control\nrun\n*plot VP VS\n*plot i(v1)\n*plot vs vs2 vr\nplot avg(i(v2))\n*plot (vbat-12.3)/0.15 i(v2)\n*plot (vr-vbat)/1 i(v2) // current through rectifier\n*plot max(max(vs-vr,vs2-vr),0) // voltage across 1 rectifier diode\nset avgpower=avg(max(max(vs-vr,vs2-vr),0)*(vr-source)/0.1*2)\n// average power in bridge rectifier\nplot max(max(vs-vr,vs2-vr),0)*(vr-source)/0.1*2 // power in bridge rectifier\n+$avgpower title 'rectifier power'  ylabel Watts\nset temperature=avg(max(max(vs-vr,vs2-vr),0)*(vr-source)/0.1*2)*10\n*plot 10.1*avg(max(max(vs-vr,vs2-vr),0)*(vr-source)/0.1*2) $temperature \nplot  $temperature title 'temperature rise'  ylabel 'deg C'\n// temperature rise in bridge rectifier\n*.end
$Comp
L INDUCTOR L1
U 1 1 5B061880
P 1700 1450
F 0 "L1" H 1700 1550 50  0000 C CNN
F 1 "50H" H 1700 1400 50  0000 C CNN
F 2 "" H 1700 1450 50  0001 C CNN
F 3 "" H 1700 1450 50  0001 C CNN
	1    1700 1450
	0    1    1    0   
$EndComp
$Comp
L INDUCTOR L2
U 1 1 5B061881
P 1950 1450
F 0 "L2" H 1950 1550 50  0000 C CNN
F 1 "124mH " H 1950 1400 50  0000 C CNN
F 2 "" H 1950 1450 50  0001 C CNN
F 3 "" H 1950 1450 50  0001 C CNN
	1    1950 1450
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5B061882
P 6200 1300
F 0 "R3" V 6280 1300 50  0000 C CNN
F 1 "0.15" V 6200 1300 50  0000 C CNN
F 2 "" H 6200 1300 50  0001 C CNN
F 3 "" H 6200 1300 50  0001 C CNN
	1    6200 1300
	0    1    1    0   
$EndComp
Text GLabel 2400 1150 1    60   Input ~ 0
VS
Text GLabel 1700 750  2    60   Input ~ 0
VP
$Comp
L R R1
U 1 1 5B061883
P 1150 750
F 0 "R1" V 1230 750 50  0000 C CNN
F 1 "0.01R" V 1150 750 50  0000 C CNN
F 2 "" H 1150 750 50  0001 C CNN
F 3 "" H 1150 750 50  0001 C CNN
	1    1150 750 
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 750  1700 750 
$Comp
L D D1
U 1 1 5B061884
P 2850 1300
F 0 "D1" H 2850 1400 50  0000 C CNN
F 1 "GBJ1506" H 2900 1200 50  0000 C CNN
F 2 "" H 2850 1300 50  0001 C CNN
F 3 "" H 2850 1300 50  0001 C CNN
F 4 "2,1" H 2850 1300 60  0001 C CNN "Spice_Node_Sequence"
	1    2850 1300
	-1   0    0    1   
$EndComp
$Comp
L D D3
U 1 1 5B061885
P 2850 1600
F 0 "D3" H 2850 1700 50  0000 C CNN
F 1 "GBJ1506" H 2800 1500 50  0000 C CNN
F 2 "" H 2850 1600 50  0001 C CNN
F 3 "" H 2850 1600 50  0001 C CNN
F 4 "2,1" H 2850 1600 60  0001 C CNN "Spice_Node_Sequence"
	1    2850 1600
	-1   0    0    1   
$EndComp
$Comp
L D D2
U 1 1 5B061886
P 3300 1300
F 0 "D2" H 3300 1400 50  0000 C CNN
F 1 "GBJ1506" H 3400 1200 50  0000 C CNN
F 2 "" H 3300 1300 50  0001 C CNN
F 3 "" H 3300 1300 50  0001 C CNN
F 4 "2,1" H 3300 1300 60  0001 C CNN "Spice_Node_Sequence"
	1    3300 1300
	-1   0    0    1   
$EndComp
$Comp
L D D4
U 1 1 5B061887
P 3300 1600
F 0 "D4" H 3300 1700 50  0000 C CNN
F 1 "GBJ1506" H 3350 1500 50  0000 C CNN
F 2 "" H 3300 1600 50  0001 C CNN
F 3 "" H 3300 1600 50  0001 C CNN
F 4 "2,1" H 3300 1600 60  0001 C CNN "Spice_Node_Sequence"
	1    3300 1600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 5B061888
P 2450 1400
F 0 "#PWR03" H 2450 1150 50  0001 C CNN
F 1 "GND" H 2450 1250 50  0000 C CNN
F 2 "" H 2450 1400 50  0001 C CNN
F 3 "" H 2450 1400 50  0001 C CNN
	1    2450 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1300 2700 1600
Wire Wire Line
	2450 1400 2700 1400
Connection ~ 2700 1400
Wire Wire Line
	3000 1300 3150 1300
Wire Wire Line
	3000 1600 3150 1600
Wire Wire Line
	3000 1150 3000 1300
Wire Wire Line
	5600 1300 6050 1300
Wire Wire Line
	3450 1300 3450 1600
Wire Wire Line
	3000 1600 3000 1900
Wire Wire Line
	3000 1900 1950 1900
Wire Wire Line
	1950 1900 1950 1700
Wire Wire Line
	1950 1200 1950 1150
Text GLabel 5950 1300 1    60   Input ~ 0
Vbat
Text GLabel 1950 1900 3    60   Input ~ 0
VS2
$Comp
L CP C1
U 1 1 5B061889
P 3850 1450
F 0 "C1" H 3875 1550 50  0000 L CNN
F 1 "200uF" H 3875 1350 50  0000 L CNN
F 2 "" H 3888 1300 50  0001 C CNN
F 3 "" H 3850 1450 50  0001 C CNN
	1    3850 1450
	1    0    0    -1  
$EndComp
Connection ~ 5950 1300
$Comp
L GND #PWR04
U 1 1 5B06188A
P 900 2150
F 0 "#PWR04" H 900 1900 50  0001 C CNN
F 1 "GND" H 900 2000 50  0000 C CNN
F 2 "" H 900 2150 50  0001 C CNN
F 3 "" H 900 2150 50  0001 C CNN
	1    900  2150
	1    0    0    -1  
$EndComp
$Comp
L VSOURCE V2
U 1 1 5B06188B
P 7050 1450
F 0 "V2" H 7050 1350 50  0000 C CNN
F 1 "DC 12.3V // SOC 50%" H 7050 1550 50  0000 C CNN
F 2 "" H 7050 1450 50  0001 C CNN
F 3 "" H 7050 1450 50  0001 C CNN
	1    7050 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 750  6450 750 
Wire Wire Line
	6450 750  6450 1300
$Comp
L R R2
U 1 1 5B06188C
P 3700 1300
F 0 "R2" V 3780 1300 50  0000 C CNN
F 1 "0.1" V 3700 1300 50  0000 C CNN
F 2 "" H 3700 1300 50  0001 C CNN
F 3 "" H 3700 1300 50  0001 C CNN
	1    3700 1300
	0    1    1    0   
$EndComp
Text GLabel 3450 1300 1    60   Input ~ 0
VR
$Comp
L GND #PWR05
U 1 1 5B06204A
P 3850 1600
F 0 "#PWR05" H 3850 1350 50  0001 C CNN
F 1 "GND" H 3850 1450 50  0000 C CNN
F 2 "" H 3850 1600 50  0001 C CNN
F 3 "" H 3850 1600 50  0001 C CNN
	1    3850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2050 4800 2050
Wire Wire Line
	6450 1300 6350 1300
Wire Wire Line
	3550 1300 3450 1300
Wire Wire Line
	1000 750  900  750 
Text GLabel 5400 1600 2    60   Input ~ 0
VG
Text GLabel 4700 1300 1    60   Input ~ 0
Source
$Comp
L VSOURCE V3
U 1 1 5B063CD5
P 4800 2750
F 0 "V3" H 4800 2650 50  0000 C CNN
F 1 "DC 3.1V " H 4800 2850 50  0000 C CNN
F 2 "" H 4800 2750 50  0001 C CNN
F 3 "" H 4800 2750 50  0001 C CNN
	1    4800 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5B063F72
P 4800 3450
F 0 "#PWR06" H 4800 3200 50  0001 C CNN
F 1 "GND" H 4800 3300 50  0000 C CNN
F 2 "" H 4800 3450 50  0001 C CNN
F 3 "" H 4800 3450 50  0001 C CNN
	1    4800 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1850 5400 1600
$EndSCHEMATC
