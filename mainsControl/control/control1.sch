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
$Comp
L R R?
U 1 1 5B060301
P 7000 5250
F 0 "R?" V 7080 5250 50  0000 C CNN
F 1 "100K" V 7000 5250 50  0000 C CNN
F 2 "" V 6930 5250 50  0001 C CNN
F 3 "" H 7000 5250 50  0001 C CNN
	1    7000 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 5650 7100 5400
Text Notes 5900 5750 0    60   ~ 0
MAINS SUPPLY CONTROL \nSUB-CIRCUIT
Wire Wire Line
	10200 5900 9700 5900
$Comp
L IRF4905 Q?
U 1 1 5B06030F
P 7200 5200
F 0 "Q?" V 7400 5000 50  0000 L CNN
F 1 "IRF4905" V 7400 5200 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 7450 5125 50  0001 L CIN
F 3 "" H 7200 5200 50  0001 L CNN
	1    7200 5200
	0    1    -1   0   
$EndComp
Wire Wire Line
	800  7700 1450 7700
Wire Wire Line
	5700 5400 5200 5400
$Comp
L CP C3.?
U 1 1 5B060323
P 6150 5250
F 0 "C3.?" H 6175 5350 50  0000 L CNN
F 1 "100uF" H 6175 5150 50  0000 L CNN
F 2 "" H 6188 5100 50  0001 C CNN
F 3 "" H 6150 5250 50  0001 C CNN
	1    6150 5250
	1    0    0    -1  
$EndComp
$Comp
L CP C3.?
U 1 1 5B060324
P 6450 5250
F 0 "C3.?" H 6475 5350 50  0000 L CNN
F 1 "100uF" H 6475 5150 50  0000 L CNN
F 2 "" H 6488 5100 50  0001 C CNN
F 3 "" H 6450 5250 50  0001 C CNN
	1    6450 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5400 6450 5400
$Comp
L GNDPWR #PWR?
U 1 1 5B060325
P 6450 5400
F 0 "#PWR?" H 6450 5200 50  0001 C CNN
F 1 "GNDPWR" H 6450 5270 50  0000 C CNN
F 2 "" H 6450 5350 50  0001 C CNN
F 3 "" H 6450 5350 50  0001 C CNN
	1    6450 5400
	1    0    0    -1  
$EndComp
Connection ~ 6150 5100
Connection ~ 6450 5100
Wire Wire Line
	7400 5100 7500 5100
Wire Wire Line
	7100 5400 7000 5400
Wire Wire Line
	6000 5100 7000 5100
Wire Wire Line
	4900 4900 5000 4900
Wire Wire Line
	4900 5200 4900 4900
Wire Wire Line
	4900 4800 5000 4800
Wire Wire Line
	5200 5400 5200 4900
$Comp
L Screw_Terminal_01x02 J?
U 1 1 5B06035D
P 5000 4900
F 0 "J?" H 5000 5000 50  0000 C CNN
F 1 "12VAC Screw Terminal" H 5000 4700 50  0000 C CNN
F 2 "" H 5000 4900 50  0001 C CNN
F 3 "" H 5000 4900 50  0001 C CNN
	1    5000 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 5600 9250 5700
Text Notes 3350 5050 0    60   ~ 0
240\nVAC\nCARE!
$Comp
L Transformer_1P_1S T?
U 1 1 5B060334
P 4500 5000
F 0 "T?" H 4500 5250 50  0000 C CNN
F 1 "Mains Transformer" H 4500 4700 50  0000 C CNN
F 2 "" H 4500 5000 50  0001 C CNN
F 3 "" H 4500 5000 50  0001 C CNN
	1    4500 5000
	1    0    0    -1  
$EndComp
Text Notes 4650 5050 0    60   ~ 0
12V \nRMS
$Comp
L GNDPWR #PWR?
U 1 1 5B060322
P 3900 5000
F 0 "#PWR?" H 3900 4800 50  0001 C CNN
F 1 "GNDPWR" H 3900 4870 50  0000 C CNN
F 2 "" H 3900 4950 50  0001 C CNN
F 3 "" H 3900 4950 50  0001 C CNN
	1    3900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4900 4100 5200
Wire Wire Line
	3900 4900 4100 4900
Wire Wire Line
	4100 4800 3900 4800
$Comp
L Screw_Terminal_01x03 J?
U 1 1 5B060321
P 3700 4900
F 0 "J?" H 3700 5100 50  0000 C CNN
F 1 "Main voltage Screw Terminal" H 3700 4700 50  0000 C CNN
F 2 "" H 3700 4900 50  0001 C CNN
F 3 "" H 3700 4900 50  0001 C CNN
	1    3700 4900
	-1   0    0    1   
$EndComp
$Comp
L GNDPWR #PWR?
U 1 1 5B060320
P 5400 5100
F 0 "#PWR?" H 5400 4900 50  0001 C CNN
F 1 "GNDPWR" H 5400 4970 50  0000 C CNN
F 2 "" H 5400 5050 50  0001 C CNN
F 3 "" H 5400 5050 50  0001 C CNN
	1    5400 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4800 5200 4800
$Comp
L D_Bridge_+-AA D?
U 1 1 5B06031F
P 5700 5100
F 0 "D?" H 5750 5375 50  0000 L CNN
F 1 "2W01G" H 5750 5300 50  0000 L CNN
F 2 "" H 5700 5100 50  0001 C CNN
F 3 "" H 5700 5100 50  0001 C CNN
	1    5700 5100
	1    0    0    -1  
$EndComp
Connection ~ 8500 5500
Wire Wire Line
	9700 5600 9250 5600
Wire Wire Line
	9700 5900 9700 5600
Wire Wire Line
	9250 5500 10200 5500
Connection ~ 9250 5600
$Comp
L Battery BT?
U 1 1 5B0602F5
P 10200 5700
F 0 "BT?" H 10300 5800 50  0000 L CNN
F 1 "Battery_FLA_+12V_120AH" H 9850 6000 50  0000 L CNN
F 2 "" V 10200 5760 50  0001 C CNN
F 3 "" V 10200 5760 50  0001 C CNN
	1    10200 5700
	1    0    0    -1  
$EndComp
$Comp
L Fuse F?
U 1 1 5B0602F4
P 9100 5500
F 0 "F?" V 9180 5500 50  0000 C CNN
F 1 "Fuse_20A" V 9025 5500 50  0000 C CNN
F 2 "" V 9030 5500 50  0001 C CNN
F 3 "" H 9100 5500 50  0001 C CNN
	1    9100 5500
	0    -1   1    0   
$EndComp
$Comp
L GNDPWR #PWR?
U 1 1 5B0602E9
P 9250 5700
F 0 "#PWR?" H 9250 5500 50  0001 C CNN
F 1 "GNDPWR" H 9250 5550 50  0000 C CNN
F 2 "" H 9250 5650 50  0001 C CNN
F 3 "" H 9250 5650 50  0001 C CNN
	1    9250 5700
	-1   0    0    -1  
$EndComp
$Comp
L Screw_Terminal_01x02 J?
U 1 1 5B0602E8
P 9450 5500
F 0 "J?" H 9450 5600 50  0000 C CNN
F 1 "Battery" H 9450 5300 50  0000 C CNN
F 2 "" H 9450 5500 50  0001 C CNN
F 3 "" H 9450 5500 50  0001 C CNN
	1    9450 5500
	1    0    0    -1  
$EndComp
$Comp
L VSOURCE V?
U 1 1 5B061055
P 900 1450
F 0 "V?" H 900 1350 50  0000 C CNN
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
L GND #PWR?
U 1 1 5B061056
P 4100 1800
F 0 "#PWR?" H 4100 1550 50  0001 C CNN
F 1 "GND" H 4100 1650 50  0000 C CNN
F 2 "" H 4100 1800 50  0001 C CNN
F 3 "" H 4100 1800 50  0001 C CNN
	1    4100 1800
	1    0    0    -1  
$EndComp
Text Notes 7150 2550 0    60   ~ 0
+pspice\n.include ../../ComponentModels/gbj1506.spi\nK L1 L2 1\n.TRAN 0.0001 0.1 \n.control\nrun\n*plot VP VS\nplot i(v1)\n*plot vs vs2 vr\nplot avg(i(v2))\n*plot (vbat-12.3)/0.15 i(v2)\n*plot (vr-vbat)/1 i(v2) // current through rectifier\n*plot max(max(vs-vr,vs2-vr),0) // voltage across 1 rectifier diode\n*plot max(max(vs-vr,vs2-vr),0)*(vr-vbat)/0.1*2 // power in bridge rectifier\nplot max(max(vs-vr,vs2-vr),0)*(vr-vbat)/0.1*2 \n+avg(max(max(vs-vr,vs2-vr),0)*(vr-vbat)/0.1*2) \n// average power in bridge rectifier\nplot 10*avg(max(max(vs-vr,vs2-vr),0)*(vr-vbat)/0.1*2) \n// temperature rise in bridge rectifier\n.end
$Comp
L INDUCTOR L?
U 1 1 5B061057
P 1700 1450
F 0 "L?" H 1700 1550 50  0000 C CNN
F 1 "50H" H 1700 1400 50  0000 C CNN
F 2 "" H 1700 1450 50  0001 C CNN
F 3 "" H 1700 1450 50  0001 C CNN
	1    1700 1450
	0    1    1    0   
$EndComp
$Comp
L INDUCTOR L?
U 1 1 5B061058
P 1950 1450
F 0 "L?" H 1950 1550 50  0000 C CNN
F 1 "124mH " H 1950 1400 50  0000 C CNN
F 2 "" H 1950 1450 50  0001 C CNN
F 3 "" H 1950 1450 50  0001 C CNN
	1    1950 1450
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5B061059
P 4350 1300
F 0 "R?" V 4430 1300 50  0000 C CNN
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
L R R?
U 1 1 5B06105A
P 1150 750
F 0 "R?" V 1230 750 50  0000 C CNN
F 1 "0.01R" V 1150 750 50  0000 C CNN
F 2 "" H 1150 750 50  0001 C CNN
F 3 "" H 1150 750 50  0001 C CNN
	1    1150 750 
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 750  1700 750 
$Comp
L D D?
U 1 1 5B06105B
P 2850 1300
F 0 "D?" H 2850 1400 50  0000 C CNN
F 1 "GBJ1506" H 2900 1200 50  0000 C CNN
F 2 "" H 2850 1300 50  0001 C CNN
F 3 "" H 2850 1300 50  0001 C CNN
F 4 "2,1" H 2850 1300 60  0001 C CNN "Spice_Node_Sequence"
	1    2850 1300
	-1   0    0    1   
$EndComp
$Comp
L D D?
U 1 1 5B06105C
P 2850 1600
F 0 "D?" H 2850 1700 50  0000 C CNN
F 1 "GBJ1506" H 2800 1500 50  0000 C CNN
F 2 "" H 2850 1600 50  0001 C CNN
F 3 "" H 2850 1600 50  0001 C CNN
F 4 "2,1" H 2850 1600 60  0001 C CNN "Spice_Node_Sequence"
	1    2850 1600
	-1   0    0    1   
$EndComp
$Comp
L D D?
U 1 1 5B06105D
P 3300 1300
F 0 "D?" H 3300 1400 50  0000 C CNN
F 1 "GBJ1506" H 3400 1200 50  0000 C CNN
F 2 "" H 3300 1300 50  0001 C CNN
F 3 "" H 3300 1300 50  0001 C CNN
F 4 "2,1" H 3300 1300 60  0001 C CNN "Spice_Node_Sequence"
	1    3300 1300
	-1   0    0    1   
$EndComp
$Comp
L D D?
U 1 1 5B06105E
P 3300 1600
F 0 "D?" H 3300 1700 50  0000 C CNN
F 1 "GBJ1506" H 3350 1500 50  0000 C CNN
F 2 "" H 3300 1600 50  0001 C CNN
F 3 "" H 3300 1600 50  0001 C CNN
F 4 "2,1" H 3300 1600 60  0001 C CNN "Spice_Node_Sequence"
	1    3300 1600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5B06105F
P 2450 1400
F 0 "#PWR?" H 2450 1150 50  0001 C CNN
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
	3850 1300 4200 1300
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
L CP C?
U 1 1 5B061060
P 4100 1450
F 0 "C?" H 4125 1550 50  0000 L CNN
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
L GND #PWR?
U 1 1 5B061061
P 900 2150
F 0 "#PWR?" H 900 1900 50  0001 C CNN
F 1 "GND" H 900 2000 50  0000 C CNN
F 2 "" H 900 2150 50  0001 C CNN
F 3 "" H 900 2150 50  0001 C CNN
	1    900  2150
	1    0    0    -1  
$EndComp
$Comp
L VSOURCE V?
U 1 1 5B061062
P 5200 1450
F 0 "V?" H 5200 1350 50  0000 C CNN
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
L R R?
U 1 1 5B061063
P 3700 1300
F 0 "R?" V 3780 1300 50  0000 C CNN
F 1 "0.1" V 3700 1300 50  0000 C CNN
F 2 "" H 3700 1300 50  0001 C CNN
F 3 "" H 3700 1300 50  0001 C CNN
	1    3700 1300
	0    1    1    0   
$EndComp
Text GLabel 3450 1300 1    60   Input ~ 0
VR
Wire Wire Line
	900  750  1000 750 
Wire Wire Line
	3550 1300 3450 1300
Wire Wire Line
	4600 1300 4500 1300
$EndSCHEMATC
