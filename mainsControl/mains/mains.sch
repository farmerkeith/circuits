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
$Comp
L VSOURCE V1
U 1 1 5AF94DFD
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
L GND #PWR01
U 1 1 5AF94F34
P 4100 1800
F 0 "#PWR01" H 4100 1550 50  0001 C CNN
F 1 "GND" H 4100 1650 50  0000 C CNN
F 2 "" H 4100 1800 50  0001 C CNN
F 3 "" H 4100 1800 50  0001 C CNN
	1    4100 1800
	1    0    0    -1  
$EndComp
Text Notes 5750 2600 0    60   ~ 0
+pspice\n.include ../../ComponentModels/gbj1506.spi\nK L1 L2 1\n.TRAN 0.0001 0.1 \n.control\nrun\n*plot VP VS\nplot i(v1)\n*plot vs vs2 vr\nplot avg(i(v2))\n*plot (vbat-12.3)/0.15 i(v2)\n*plot (vr-vbat)/1 i(v2) // current through rectifier\n*plot max(max(vs-vr,vs2-vr),0) // voltage across 1 rectifier diode\n*plot max(max(vs-vr,vs2-vr),0)*(vr-vbat)/0.1*2 // power in bridge rectifier\nplot max(max(vs-vr,vs2-vr),0)*(vr-vbat)/0.1*2 \n+avg(max(max(vs-vr,vs2-vr),0)*(vr-vbat)/0.1*2) \n// average power in bridge rectifier\nplot 10*avg(max(max(vs-vr,vs2-vr),0)*(vr-vbat)/0.1*2) \n// temperature rise in bridge rectifier\n.end
$Comp
L INDUCTOR L1
U 1 1 5AFC65AB
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
U 1 1 5AFC661C
P 1950 1450
F 0 "L2" H 1950 1550 50  0000 C CNN
F 1 "124mH " H 1950 1400 50  0000 C CNN
F 2 "" H 1950 1450 50  0001 C CNN
F 3 "" H 1950 1450 50  0001 C CNN
	1    1950 1450
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5AFC6729
P 4350 1300
F 0 "R1" V 4430 1300 50  0000 C CNN
F 1 "0.15" V 4350 1300 50  0000 C CNN
F 2 "" H 4350 1300 50  0001 C CNN
F 3 "" H 4350 1300 50  0001 C CNN
	1    4350 1300
	0    1    1    0   
$EndComp
Text GLabel 2400 1150 1    60   Input ~ 0
VS
Text GLabel 1700 750  2    60   Input ~ 0
VP
$Comp
L R R2
U 1 1 5AFC6D7E
P 1150 750
F 0 "R2" V 1230 750 50  0000 C CNN
F 1 "0.01R" V 1150 750 50  0000 C CNN
F 2 "" H 1150 750 50  0001 C CNN
F 3 "" H 1150 750 50  0001 C CNN
	1    1150 750 
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 750  1700 750 
$Comp
L D D1
U 1 1 5AFCA9D8
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
U 1 1 5B025455
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
U 1 1 5B0254C8
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
U 1 1 5B025534
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
L GND #PWR02
U 1 1 5B025643
P 2450 1400
F 0 "#PWR02" H 2450 1150 50  0001 C CNN
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
	3950 1300 4100 1300
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
Text GLabel 4100 1300 1    60   Input ~ 0
Vbat
Text GLabel 1950 1900 3    60   Input ~ 0
VS2
$Comp
L CP C1
U 1 1 5B025FCF
P 4100 1450
F 0 "C1" H 4125 1550 50  0000 L CNN
F 1 "200uF" H 4125 1350 50  0000 L CNN
F 2 "" H 4138 1300 50  0001 C CNN
F 3 "" H 4100 1450 50  0001 C CNN
	1    4100 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1600 4100 1800
Wire Wire Line
	4100 1800 4450 1800
Connection ~ 4100 1300
$Comp
L GND #PWR03
U 1 1 5AFC694D
P 900 2150
F 0 "#PWR03" H 900 1900 50  0001 C CNN
F 1 "GND" H 900 2000 50  0000 C CNN
F 2 "" H 900 2150 50  0001 C CNN
F 3 "" H 900 2150 50  0001 C CNN
	1    900  2150
	1    0    0    -1  
$EndComp
$Comp
L VSOURCE V2
U 1 1 5B02AC3F
P 5200 1450
F 0 "V2" H 5200 1350 50  0000 C CNN
F 1 "DC 12.3V // SOC 50%" H 5200 1550 50  0000 C CNN
F 2 "" H 5200 1450 50  0001 C CNN
F 3 "" H 5200 1450 50  0001 C CNN
	1    5200 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2150 4450 2150
Wire Wire Line
	4450 2150 4450 1800
Connection ~ 4100 1800
Wire Wire Line
	5200 750  4600 750 
Wire Wire Line
	4600 750  4600 1300
$Comp
L R R3
U 1 1 5B02AE67
P 3700 1300
F 0 "R3" V 3780 1300 50  0000 C CNN
F 1 "0.1" V 3700 1300 50  0000 C CNN
F 2 "" H 3700 1300 50  0001 C CNN
F 3 "" H 3700 1300 50  0001 C CNN
	1    3700 1300
	0    1    1    0   
$EndComp
Text GLabel 3450 1300 1    60   Input ~ 0
VR
Text Notes 2400 2350 0    60   ~ 0
SIMULATION RESULTS for GBJ1506\nAverage current into load is 3A\nAverage power in bridge rectifier 5W\nTemperature rise in bridge rectifier ~40C
$EndSCHEMATC
