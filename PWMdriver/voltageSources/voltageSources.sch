EESchema Schematic File Version 2
LIBS:NGspice
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
LIBS:voltageSources-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "NGspice models for voltage sources"
Date "2018-06-01"
Rev ""
Comp "farmerkeith"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L VSOURCE V2
U 1 1 5B0DDFC0
P 1650 1750
F 0 "V2" H 1650 1650 50  0000 C CNN
F 1 "+12V" H 1650 1850 50  0000 C CNN
F 2 "" H 1650 1750 50  0001 C CNN
F 3 "" H 1650 1750 50  0001 C CNN
	1    1650 1750
	1    0    0    -1  
$EndComp
Text GLabel 1650 1050 0    60   Input ~ 0
VA
Text GLabel 2500 1100 0    60   Input ~ 0
VSine
$Comp
L 0 #GND01
U 1 1 5B0E04BE
P 2500 1700
F 0 "#GND01" H 2500 1600 50  0001 C CNN
F 1 "0" H 2500 1630 50  0000 C CNN
F 2 "" H 2500 1700 50  0001 C CNN
F 3 "" H 2500 1700 50  0001 C CNN
	1    2500 1700
	1    0    0    -1  
$EndComp
$Comp
L 0 #GND02
U 1 1 5B0E04D6
P 1650 2450
F 0 "#GND02" H 1650 2350 50  0001 C CNN
F 1 "0" H 1650 2380 50  0000 C CNN
F 2 "" H 1650 2450 50  0001 C CNN
F 3 "" H 1650 2450 50  0001 C CNN
	1    1650 2450
	1    0    0    -1  
$EndComp
Text Notes 4400 2050 0    60   ~ 0
+PSPICE\n.TRAN 0.1m 40m\n.control\nrun\nplot VA VSine VC title 'DC and sine voltages'\nplot VPulse title 'pulse voltage'\nplot VA VSine VPulse VC title 'Waveforms'\n
Connection ~ 1650 1050
Connection ~ 2500 1100
$Comp
L R R2
U 1 1 5B0E065D
P 2750 1350
F 0 "R2" V 2830 1350 50  0000 C CNN
F 1 "10K" V 2750 1350 50  0000 C CNN
F 2 "" H 2750 1350 50  0001 C CNN
F 3 "" H 2750 1350 50  0001 C CNN
	1    2750 1350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5B0E0694
P 2100 1300
F 0 "R1" V 2180 1300 50  0000 C CNN
F 1 "10K" V 2100 1300 50  0000 C CNN
F 2 "" H 2100 1300 50  0001 C CNN
F 3 "" H 2100 1300 50  0001 C CNN
	1    2100 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1100 2500 1100
Wire Wire Line
	2100 1050 1650 1050
$Comp
L 0 #GND03
U 1 1 5B0E06D9
P 2100 1550
F 0 "#GND03" H 2100 1450 50  0001 C CNN
F 1 "0" H 2100 1480 50  0000 C CNN
F 2 "" H 2100 1550 50  0001 C CNN
F 3 "" H 2100 1550 50  0001 C CNN
	1    2100 1550
	1    0    0    -1  
$EndComp
$Comp
L 0 #GND04
U 1 1 5B0E06F0
P 2750 1600
F 0 "#GND04" H 2750 1500 50  0001 C CNN
F 1 "0" H 2750 1530 50  0000 C CNN
F 2 "" H 2750 1600 50  0001 C CNN
F 3 "" H 2750 1600 50  0001 C CNN
	1    2750 1600
	1    0    0    -1  
$EndComp
$Comp
L +5V V3
U 1 1 5B0E0B2A
P 2500 2250
F 0 "V3" H 2500 2200 50  0000 C CNN
F 1 "+5V" H 2500 2300 50  0000 C CNN
F 2 "" H 2500 2250 50  0001 C CNN
F 3 "" H 2500 2250 50  0001 C CNN
	1    2500 2250
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5B0E0B84
P 2750 2200
F 0 "R3" V 2830 2200 50  0000 C CNN
F 1 "10K" V 2750 2200 50  0000 C CNN
F 2 "" H 2750 2200 50  0001 C CNN
F 3 "" H 2750 2200 50  0001 C CNN
	1    2750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1950 2750 1950
$Comp
L 0 #GND05
U 1 1 5B0E0BAA
P 2500 2550
F 0 "#GND05" H 2500 2450 50  0001 C CNN
F 1 "0" H 2500 2480 50  0000 C CNN
F 2 "" H 2500 2550 50  0001 C CNN
F 3 "" H 2500 2550 50  0001 C CNN
	1    2500 2550
	1    0    0    -1  
$EndComp
Text GLabel 2500 1950 0    60   Input ~ 0
VC
$Comp
L 0V V4
U 1 1 5B0EA940
P 3000 2550
F 0 "V4" H 3000 2500 50  0000 C CNN
F 1 "0V" H 3000 2600 50  0000 C CNN
F 2 "" H 3000 2550 50  0001 C CNN
F 3 "" H 3000 2550 50  0001 C CNN
	1    3000 2550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5B0EA963
P 2750 2650
F 0 "#PWR06" H 2750 2400 50  0001 C CNN
F 1 "GND" H 2750 2500 50  0000 C CNN
F 2 "" H 2750 2650 50  0001 C CNN
F 3 "" H 2750 2650 50  0001 C CNN
	1    2750 2650
	1    0    0    -1  
$EndComp
Text GLabel 3700 1150 0    60   Input ~ 0
VPulse
$Comp
L 0 #GND07
U 1 1 5B10EAA6
P 3700 1750
F 0 "#GND07" H 3700 1650 50  0001 C CNN
F 1 "0" H 3700 1680 50  0000 C CNN
F 2 "" H 3700 1750 50  0001 C CNN
F 3 "" H 3700 1750 50  0001 C CNN
	1    3700 1750
	1    0    0    -1  
$EndComp
Connection ~ 3700 1150
$Comp
L R R4
U 1 1 5B10EAAD
P 3950 1400
F 0 "R4" V 4030 1400 50  0000 C CNN
F 1 "10K" V 3950 1400 50  0000 C CNN
F 2 "" H 3950 1400 50  0001 C CNN
F 3 "" H 3950 1400 50  0001 C CNN
	1    3950 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1150 3700 1150
$Comp
L 0 #GND08
U 1 1 5B10EAB4
P 3950 1650
F 0 "#GND08" H 3950 1550 50  0001 C CNN
F 1 "0" H 3950 1580 50  0000 C CNN
F 2 "" H 3950 1650 50  0001 C CNN
F 3 "" H 3950 1650 50  0001 C CNN
	1    3950 1650
	1    0    0    -1  
$EndComp
$Comp
L Vsine0VOffset17.1Vpeak50Hz1mSDelay0Damping0Phase V1
U 1 1 5B10EB8E
P 2500 1400
F 0 "V1" H 2500 1350 50  0000 C CNN
F 1 "Vsine0VOffset17.1Vpeak50Hz1mSDelay0Damping0Phase" H 2500 1900 50  0000 C CNN
F 2 "" H 2500 1400 50  0001 C CNN
F 3 "" H 2500 1400 50  0001 C CNN
	1    2500 1400
	1    0    0    -1  
$EndComp
$Comp
L Vpulse0VInit4.95Vpulsed2nSDelay0.2mSRise.2mSFall10.85mSWidth20mSPeriod0Phase V5
U 1 1 5B11028D
P 3700 1450
F 0 "V5" H 3700 1400 50  0000 C CNN
F 1 "Vpulse0VInit4.95Vpulsed2nSDelay0.2mSRise.2mSFall10.85mSWidth20mSPeriod0Phase" H 3700 1900 50  0000 C CNN
F 2 "" H 3700 1450 50  0001 C CNN
F 3 "" H 3700 1450 50  0001 C CNN
	1    3700 1450
	1    0    0    -1  
$EndComp
$Bitmap
Pos 2350 4450
Scale 2.000000
Data
89 50 4E 47 0D 0A 1A 0A 00 00 00 0D 49 48 44 52 00 00 01 E9 00 00 01 B0 08 02 00 00 00 02 2D 0A 
FF 00 00 00 03 73 42 49 54 08 08 08 DB E1 4F E0 00 00 20 00 49 44 41 54 78 9C ED DD 7F 8C 1D 55 
D9 C0 F1 33 A5 BB 45 68 0B BC 96 42 4A A1 F4 87 46 13 36 D2 A0 51 62 02 F1 45 C4 A2 24 AF 10 21 
81 68 D2 18 12 A3 7F 0B 96 04 BB 22 82 46 24 46 8D 09 4A A2 40 4B B0 7D 51 D7 4A B6 A6 12 63 E2 
9B 48 8A 59 11 C1 62 D9 2E 85 05 EA B6 B4 54 2C D8 6E BB F3 FE 31 DD E9 EC FC BA 73 EF 9D 99 73 
9E E7 7C 3F 21 E4 EE ED DD 7B CF 73 CF CC B3 E7 79 66 EE 5C 63 00 00 D2 04 C6 98 30 0C 6D 0F 03 
00 50 C9 F0 F0 F0 D7 BF FE F5 79 B6 87 01 00 E8 1A B9 1B 00 E4 99 DF CE CB 04 41 D0 CE 0B 01 F0 
84 E7 CD DE B2 DC FD CF A9 A9 E9 63 D3 55 9E 65 60 70 E0 BC A5 4B 6B 1A 12 00 A0 83 C2 DC BD F7 
E5 97 5F 79 FD E0 AB 07 DE AE F2 2C 17 9C 7B E6 DB 6F BF BD F2 E2 8B 6B 1B 17 00 A0 58 61 EE 3E 
72 E4 C8 3F DF 32 FF FB 7F AF 1A 63 4C 60 02 93 6A 7A CC F9 F1 A6 FF 5E B3 F8 8C 7F 47 B7 87 87 
87 87 87 87 6B 1E 26 00 94 B2 98 79 3A F6 84 B3 ED 9D E8 57 72 DB 3E 25 FF 94 54 D6 33 59 BD FC 
BF FE E7 CA F7 65 06 95 BC 23 8C 7E 5C 73 E1 D9 E6 D8 9B E5 AF 04 AD 06 06 06 EE BA EB AE 4F 7C 
E2 13 97 5D 76 99 AD 31 2C 59 B2 E4 A1 87 1E BA EC B2 CB B6 6D DB 76 EB AD B7 DA 1A 06 1C 17 04 
81 53 5D F2 EC 78 AA 1F 1A 2C CB DD AB 96 9D 7D E9 FB 2E AA F2 2C FF 3E 72 64 CF 04 B9 5B 92 4D 
9B 36 3D F6 D8 63 BF F9 CD 6F FA 7C 9E 0B 2F BC F0 57 BF FA D5 69 A7 9D 66 77 97 D8 B0 61 C3 C4 
C4 C4 A7 3F FD E9 C1 C1 41 8B C3 80 CB A2 B4 E8 48 FA 0E C3 30 3B 9E 38 71 57 19 61 59 EE 9E 09 
67 4E 9C 38 51 69 1C 33 33 55 1E 06 77 9C 77 DE 79 67 9E 79 66 FF CF 73 E4 C8 91 E1 E1 E1 99 99 
99 BB EF BE BB FF 67 EB D9 45 17 5D B4 7D FB F6 30 0C 8F 1E 3D 6A 71 18 70 56 DC 88 08 82 A0 89 
F4 5D F2 84 45 4B E9 54 FA EE 2A 71 9B F2 F3 BB 4F 9C 38 31 7D 7C BA CA 7F C7 4F 1C AF F2 62 70 
C4 B7 BF FD ED 2B AE B8 E2 81 07 1E 78 FD F5 D7 CF 3D F7 5C 63 CC C4 C4 C4 FA F5 EB FF F1 8F 7F 
3C F5 D4 53 8B 17 2F DE B4 69 D3 AB AF BE FA D6 5B 6F FD F6 B7 BF BD F0 C2 0B A3 DF 7A E1 85 17 
EE BA EB AE 17 5F 7C F1 E0 C1 83 3F FE F1 8F 4F 3B ED 34 63 CC C1 83 07 B7 6D DB 96 7C F2 73 CE 
39 E7 E5 97 5F BE E1 86 1B E2 7B 36 6C D8 10 3F E6 E3 1F FF F8 3B EF BC 33 34 34 14 FD F8 87 3F 
FC 61 DD BA 75 B9 AF 78 C7 1D 77 FC F2 97 BF 8C 9F E4 99 67 9E B9 FC F2 CB 8D 31 E7 9D 77 DE 2F 
7E F1 8B C9 C9 C9 E7 9E 7B EE 9A 6B AE 31 C6 FC F0 87 3F BC EE BA EB EE BF FF FE D7 5F 7F FD E6 
9B 6F 36 C6 2C 59 B2 64 F3 E6 CD FB F6 ED 9B 98 98 B8 FD F6 DB E3 BD 22 19 66 14 D1 3D F7 DC B3 
67 CF 9E A9 A9 A9 FB EE BB 6F DD BA 75 4F 3D F5 D4 C1 83 07 9F 7C F2 C9 0B 2E B8 20 FA 95 2F 7E 
F1 8B E3 E3 E3 53 53 53 4F 3F FD F4 25 97 5C 52 F3 4C A0 15 C9 0E 72 F4 7F 47 CE 5A EE 6D C5 3D 
E7 F7 B3 9E 7B FE F9 7F 4E ED 7B EB DF 87 AB FC B7 FF C0 FE 67 9E 7D 36 FA C5 8D 1B 37 66 9F AD 
F6 98 D1 A7 1D 3B 76 DC 74 D3 4D F1 8F 13 13 13 23 23 23 AB 57 AF 3E FB EC B3 83 20 B8 F1 C6 1B 
97 2D 5B B6 7C F9 F2 87 1F 7E F8 91 47 1E 89 1F F3 D5 AF 7E 75 C1 82 05 E7 9F 7F FE 2B AF BC F2 
F9 CF 7F 3E FE F5 4F 7D EA 53 63 63 63 D1 ED 81 81 81 9F FC E4 27 6B D7 AE 8D FF 75 CD 9A 35 47 
8E 1C 39 FD F4 D3 8D 31 F7 DD 77 DF 9E 3D 7B 6E BB ED 36 63 CC 59 67 9D 75 E0 C0 81 C1 C1 C1 DC 
57 5C B1 62 C5 91 23 47 CE 38 E3 0C 63 CC EA D5 AB C7 C7 C7 A3 67 FB FD EF 7F FF E5 2F 7F D9 18 
F3 A1 0F 7D 68 6A 6A EA DD EF 7E B7 31 66 EB D6 AD 5F F8 C2 17 92 D1 DD 79 E7 9D 03 03 03 43 43 
43 7B F7 EE FD DC E7 3E 97 0D 33 FA F1 F6 DB 6F 5F B0 60 C1 F2 E5 CB DF 78 E3 8D 91 91 91 A5 4B 
97 0E 0E 0E 8E 8C 8C FC F4 A7 3F 35 C6 BC E7 3D EF 39 7C F8 F0 9A 35 6B A2 F1 2C 58 B0 A0 D6 49 
40 5F 52 49 26 37 F3 C4 C9 A7 CA 9D 3D 2B 7F AA 8E 2F 54 14 51 91 8D 1B 37 9A F2 75 F7 F1 13 27 
A6 AB 39 C1 BA 5B BE AF 7D ED 6B E3 E3 E3 6F BE F9 66 18 86 5B B6 6C 79 ED B5 D7 26 27 27 1F 7C 
F0 C1 0F 7C E0 03 F1 63 46 47 47 8F 1E 3D BA 6F DF BE 91 91 91 64 76 4E 9A 9E 9E BE F5 D6 5B E3 
54 6E 8C 79 F1 C5 17 77 ED DA 75 E5 95 57 1A 63 3E F6 B1 8F 7D E5 2B 5F 59 B7 6E 9D 31 E6 EA AB 
AF DE BE 7D FB B1 63 C7 72 5F 71 EF DE BD 3B 77 EE FC E4 27 3F 69 8C B9 E1 86 1B 36 6F DE 6C 8C 
59 BD 7A F5 DA B5 6B 1F 7C F0 41 63 CC CE 9D 3B FF F2 97 BF 7C F0 83 1F 4C 0D 60 D5 AA 55 43 43 
43 DF FC E6 37 A7 A7 A7 9F 7D F6 D9 7B EE B9 27 5A 8C A7 C2 8C 7E DC BE 7D FB D1 A3 47 27 27 27 
47 47 47 77 EE DC 39 35 35 75 EC D8 B1 87 1F 7E F8 D2 4B 2F 35 C6 CC 9B 37 6F FE FC F9 43 43 43 
0B 16 2C D8 BB 77 2F 0D 19 B9 82 B9 6C 0F E7 94 E4 60 BA 1A 58 79 CF E4 F8 B1 E9 E9 2A FF 1D AF 
D6 16 87 14 37 DE 78 E3 8E 1D 3B 9E 7E FA E9 EF 7D EF 7B 03 03 03 D9 07 EC DF BF 7F FE FC 2E 3E 
94 BB 75 EB D6 6B AF BD 76 D9 B2 65 07 0F 1E FC F5 AF 7F 7D C9 25 97 2C 5A B4 E8 DA 6B AF 7D FC 
F1 C7 4B 5E 71 D3 A6 4D 9F F9 CC 67 8C 31 D7 5F 7F FD A3 8F 3E 6A 8C 59 B1 62 C5 E9 A7 9F FE A7 
3F FD 69 6C 6C 6C 6C 6C EC DC 73 CF 3D 76 EC 58 EA B5 2E BE F8 E2 C9 C9 C9 99 D9 63 30 CF 3F FF 
FC B2 65 CB 3A 8E 70 FF FE FD 51 17 C8 18 73 E0 C0 81 28 BA 17 5E 78 61 FD FA F5 77 DC 71 C7 D4 
D4 D4 77 BF FB DD 45 8B 16 55 0F 19 8E A8 B2 E0 B5 25 DB 2A A9 E7 3C 93 13 27 4E 1C 3F 9E DE 31 
0A 1E 69 FF 5D 40 B7 8A B6 92 B5 6B D7 DE 7B EF BD 1F F9 C8 47 F6 EF DF FF E1 0F 7F F8 67 3F FB 
59 FF AF B5 75 EB D6 D1 D1 D1 B1 B1 B1 27 9E 78 62 7A 7A FA C9 27 9F BC FA EA AB AF B8 E2 8A A8 
FB 51 F4 8A 5B B7 6E FD C6 37 BE B1 72 E5 CA 79 F3 E6 ED DA B5 CB 18 13 25 E5 CB 2F BF FC 3F FF 
F9 4F D1 6B ED DB B7 6F E5 CA 95 83 83 83 51 5A BF E8 A2 8B 26 26 26 7A 1E F9 96 2D 5B B6 6C D9 
B2 6A D5 AA 87 1E 7A E8 B6 DB 6E BB F3 CE 3B 7B 7E 2A 58 51 92 0D ED A6 EF 54 E2 0E F3 CE 3C 29 
51 DE 33 39 5E F1 58 25 3D 13 71 0E 1D 3A 14 1D FA CB 5A BA 74 E9 E2 C5 8B DF F5 AE 77 0D 0C 0C 
5C 75 D5 55 DD 3E F3 C0 C0 C0 8F 7E F4 A3 64 A7 C5 18 33 3E 3E FE AF 7F FD EB 4B 5F FA D2 13 4F 
3C 61 8C 19 19 19 D9 B0 61 C3 D8 D8 D8 3B EF BC 53 F2 8A 87 0F 1F FE E3 1F FF F8 FD EF 7F 3F 5A 
74 1B 63 76 EF DE FD E7 3F FF F9 07 3F F8 41 D4 25 7F EF 7B DF 9B 1D C0 AE 5D BB F6 EE DD FB AD 
6F 7D 6B 70 70 70 F9 F2 E5 1B 36 6C 78 E0 81 07 BA 8D 22 72 CE 39 E7 5C 75 D5 55 8B 16 2D 7A E5 
95 57 26 27 27 BB 2A 35 20 54 D0 49 5D AF 12 DD 48 F5 BB 53 FF 5A A2 43 CF A4 5A CB E4 18 E7 99 
88 73 EF BD F7 5E 73 CD 35 E3 E3 E3 1F FD E8 47 53 FF F4 BB DF FD 6E DB B6 6D 7F FB DB DF FE FE 
F7 BF 2F 5C B8 B0 FC 3C D1 65 CB 96 1D 3A 74 E8 E7 3F FF F9 D0 D0 D0 A1 43 87 D6 AF 5F BF 70 E1 
C2 EB AE BB 2E 9B 55 B7 6C D9 72 D6 59 67 ED DE BD DB 18 33 3A 3A 7A E9 A5 97 C6 0D 93 92 57 7C 
E4 91 47 D6 AD 5B F7 D8 63 8F 45 3F 86 61 F8 D9 CF 7E 76 E1 C2 85 BB 77 EF FE EB 5F FF 7A F7 DD 
77 67 5B 3A 33 33 33 D7 5F 7F FD FB DF FF FE D7 5E 7B 6D C7 8E 1D F7 DF 7F FF E8 E8 68 F7 EF 90 
31 C6 9C 7F FE F9 1B 37 6E 7C E9 A5 97 26 27 27 CF 38 E3 8C EF 7C E7 3B BD 3D 0F 2C 6A A7 67 D2 
5B AE CF 8E A1 FA A8 0A 3F 7C 39 F1 D2 4B FB DF 98 9A 3F BF D2 45 62 67 4E 84 E7 9C BD 64 F5 AA 
95 A6 E0 93 A9 4E 1D 1C 00 A0 40 2A 71 F9 73 35 8E E8 BB 17 0A 6B C0 8B 57 AC 98 99 99 39 7C F8 
F0 CC 4C 87 BF 03 F3 E6 05 67 9F B5 78 D5 CA 8B E3 E7 AD 6D 8C 00 50 8D 6F 99 A7 30 77 07 41 B0 
7A D5 AA 36 87 02 00 A8 A8 A5 63 2F 2E 9C 8E 03 00 6A F0 9D 67 00 20 4F 7A DD CD 41 45 00 70 50 
AA 7B 91 D3 33 A1 BF 01 00 4E C9 AE AA E9 99 00 80 3C E4 6E 00 90 87 DC 0D 00 F2 70 7D 06 00 F2 
F8 70 56 45 F9 A1 C7 0E B9 DB 87 37 08 80 08 A9 5C A6 FB AC 8A 8E B9 97 9E 09 00 C8 43 EE 06 00 
79 C8 DD 00 20 0F C7 2A 01 88 D7 FE 91 39 EB DD 76 72 37 00 0D DA 4C A6 2E 9C C4 41 CF 04 00 E4 
21 77 03 80 3C E4 6E 00 90 87 DC 0D C0 77 35 7E 01 7C 6B C8 DD 00 90 E6 7E 36 E7 3C 13 00 BE B3 
7E C2 5F 0F C8 DD 00 14 4A AD 9A C3 30 8C EE 89 D2 74 F6 B6 49 64 F0 F8 9E E4 C3 5C 43 CF 04 80 
36 71 CE AD 92 76 B3 8F 89 EF A9 F8 0C 56 90 BB 01 40 1E 72 37 00 C8 43 EE 06 A0 4D DC C8 EE FF 
5C 11 67 4F 38 E1 58 25 00 85 B2 07 1E A3 C3 95 A9 44 9C FC 31 79 64 32 F9 60 37 5B DE 3D E6 EE 
F8 A0 6D EA B6 26 A9 63 D0 00 A4 2B 39 2C 59 E5 C1 4E A1 67 52 88 AC 0D C0 59 AE F7 4C C2 CD 5D 
3C 38 B8 A5 B1 71 88 D6 D5 EA 81 3F 58 D0 C5 F1 E5 73 CF F4 AF BB 93 33 17 77 B2 62 45 8F 29 7A 
AA D4 F9 9E D9 7B 54 CA 7D 7F 3C 89 1D 70 53 8F EB EE 20 08 A2 36 77 D3 CD EE 86 96 D2 3D 34 EB 
B3 2D 7E 31 4D FF 06 C6 25 26 76 78 C3 B7 8D D0 F5 9E 89 3B A2 64 6D E6 9E 33 C4 AA D3 F8 B7 CF 
C0 41 1E EE 89 FA 73 77 8D 25 42 7C C2 50 EA 72 07 EA B5 56 66 01 A8 A8 F7 7E B7 E8 3D 39 EE D5 
66 2F 58 53 F2 2B D1 8D 78 01 5E F1 17 D5 F3 39 76 C0 16 FD EB 6E 93 F7 67 26 7B 7E 7E DC 0F 49 
1D C0 8C 7F 31 F9 4F 45 F7 28 96 7A 0F BD 8A 1D 70 50 5F B9 5B D0 4E DB 71 A8 D9 36 48 F6 57 AA 
DC A3 58 C9 07 D2 00 BB 74 6C 8D 5D 95 B0 5E AC BB 01 A8 27 BD 77 D7 ED 9F 1F FD E7 77 67 E9 F8 
13 0D C0 67 3E E6 6E 00 90 8E DC 0D 00 F2 90 BB 01 68 53 E3 45 B7 9D BD 7E 37 B9 1B 75 92 7E BC 
08 90 C2 F5 F3 4C B8 04 5E 1D DA 7B 17 DD 5C A1 00 FA B8 9E BB FB 97 7B D5 24 3E 57 D2 95 8A EF 
61 EA DB 2A E2 8F D1 67 1F 63 78 E7 D1 BC F2 AD 2E F7 CB 55 CA B7 CF EC AF 57 7F CE E4 5E 53 CB 
D7 F1 B8 9E BB 1B DA BF 3D BB 06 5E FD 01 E6 66 F3 EC D5 02 92 89 5E D2 95 17 A1 42 F2 E2 71 F1 
C7 A4 A3 7F 4A DE 99 7D 64 36 CF 9A 4C F2 CD 7D 64 C9 73 D6 1E 9D EB B9 BB 21 B4 65 FB 94 7B 55 
C5 DC 87 A5 EE E1 9D 87 45 E5 CB 85 EA 1B A7 0B 9B B1 FE DC 9D BD 06 5E 6A F5 67 75 74 32 E4 5E 
47 30 FB 66 56 7C AA 46 86 08 74 92 BB 9A 96 CB EB F3 4C 48 DC 3D 2B BF AA 62 57 CF 00 88 53 E5 
C4 C1 F8 31 C9 76 4D 8D 67 1C EA 5F 77 9B E2 6B E0 35 D4 87 52 A9 CA 75 04 53 57 5E 2C 7A 92 D4 
6F 01 ED 88 B6 CC 2A 1B 5E EE 23 53 77 26 B7 F6 DC 3A BE E4 4A D1 B5 6C FC 5E E4 6E 53 7C 0D 3C 
32 48 75 45 EF 61 95 07 F0 86 A3 4D 45 39 B4 FA 95 F7 73 EF AF 7E 67 56 2D E7 96 24 79 DD 33 01 
80 76 A4 7A 26 FD 27 71 5F D6 DD 00 D0 8E AE D6 F2 3D 63 DD 0D 00 F2 B0 EE 06 A0 81 6F 87 52 C8 
DD 00 C4 F3 F0 84 31 7A 26 00 20 0F B9 1B 00 E4 21 77 03 80 3C E4 6E 00 90 87 DC 0D 00 F2 90 BB 
01 40 1E 72 37 00 C8 53 73 EE 0E 67 A5 EE AC F2 8B F5 8E 04 00 14 AB 33 77 C7 97 43 4C 7D F1 4F 
C7 4B AD 56 79 0C 00 20 D6 6C CF A4 E4 9B 0C BB 7A 0C 00 20 A9 CE DC DD C4 F5 04 52 5F DC C9 0D 
6E 70 A3 E5 1B 70 53 23 EB EE B0 A6 AF 00 67 EB 01 80 5C F5 E7 EE BA 12 77 4A F6 8B 57 B8 C1 0D 
6E B4 70 03 6E AA FF 3C 13 A6 BC BA EC 39 39 CA 10 A0 74 EA 03 94 AB CE 6B C0 66 13 77 30 FB 05 
B5 A9 7F 0A 33 DF 5A 9B 7D 8C 0F D4 C7 4B 80 D2 A9 0F 50 AE 9A AF DF 9D FC 13 9D 3C 7B 24 95 B8 
4D 41 FA AE 77 30 00 A0 55 9D B9 BB 28 F9 16 2D C6 AB FC AE 6E E1 EC D7 8F DA 1E 48 53 08 50 3A 
F5 01 CA 65 E7 7B 73 D8 14 22 EA DF 07 02 94 4E 7D 80 72 71 3D 13 00 90 87 EF AB B4 49 7D 41 4A 
80 D2 B9 1C A0 9B A3 6A 0D B9 DB 26 F5 1B 1F 01 4A E7 6C 80 9C B9 48 CF 04 00 E4 21 77 DB A4 FE 
83 0F 04 28 9D FA 00 E5 A2 67 62 93 B3 05 69 5D 08 50 3A F5 01 CA C5 BA 1B 00 E4 21 77 DB A4 BE 
20 25 40 E9 D4 07 28 17 3D 13 9B D4 17 A4 04 28 9D FA 00 E5 62 DD 0D 00 F2 90 BB 6D 52 5F 90 12 
A0 74 EA 03 94 8B 9E 89 4D EA 0B 52 02 94 4E 7D 80 72 91 BB 3B 4A 2E 3A D8 8E 85 8A 27 91 19 84 
12 E4 EE 72 61 DE 8F B5 ED FF 2E 5F 2C A2 16 B6 03 CC 16 FB CC 60 77 D4 07 28 17 B9 BB 48 EE 72 
3B 9C FD 7F 3D 9B B2 FA 5D C2 6A 80 A9 C4 1D 24 EE AC 2D 83 33 83 B0 85 DC 9D AB A8 4F 12 D4 BE 
F3 A3 49 D9 09 4A 66 70 40 30 CE 33 C9 4A F6 46 73 77 FE 3A 2B 6E DD 07 F1 ED 05 98 FC 13 9B 55 
5B 06 67 06 61 0B EB EE 5C 1D B3 73 B4 00 EF B7 79 A2 BE 20 B5 14 60 F5 23 93 CC 60 07 EA 03 94 
8B 75 77 4A F9 7A AD E8 F1 70 47 C5 C4 9D 3A 86 01 08 43 EE 4E EA EA 4C B2 1A 76 7E F5 05 A9 A5 
00 2B F6 B5 6A 58 51 32 83 B0 85 9E 49 56 F5 5D 3A E8 73 D5 A6 BE 20 6D 3D C0 6E 4F 04 EA B7 F7 
C5 0C C2 16 D6 DD 31 16 17 D2 F5 F3 01 1C 66 1F C2 90 BB 93 7A 38 87 A4 AF 33 16 D4 17 A4 36 02 
EC 6D 06 7B C4 0C C2 16 7A 26 91 FE 3F 74 D3 CB EF AA 2F 48 5B 0C B0 FF FC C2 0C E6 50 1F A0 5C 
AC BB 93 7A DB 4C D9 B8 1D D1 F3 A9 F7 CC 20 E4 21 77 9B FA 7A 9D 5D 3F 8F FA 82 B4 DD 00 2D BC 
93 CC 20 6C A1 67 12 EB 67 F1 D5 E3 09 27 EA 0B D2 B6 02 EC 3F B9 F4 78 C2 09 33 08 5B 58 77 B3 
A6 50 83 2C 03 8F 90 BB 23 76 76 7B F5 05 69 2B 01 D6 FB FC DD 3D 1B 33 08 5B E8 99 98 9A 12 77 
2F 45 B7 FA 82 B4 F9 00 6B FC 52 85 A0 87 D3 8D 98 41 D8 E2 F9 BA BB DB AB 97 54 7F 4E B4 A9 AE 
FC 42 9E 82 18 9E E7 EE 88 B5 3D 5F 7D 41 DA 4A 80 36 13 2E 33 08 5B 7C EE 99 34 B7 45 56 2D BA 
D5 17 A4 AD 04 58 DB D7 18 F5 80 19 84 2D AC BB EB DD 34 D9 D0 DB D4 C4 5F 5F BE 58 07 32 78 9B 
BB 9D D8 39 D5 17 A4 F4 4C A4 53 1F A0 5C 3E F7 4C 8C F5 65 B2 FA 82 94 00 A5 53 1F A0 5C DE AE 
BB 21 9D AC D3 C6 81 9A F9 9C BB 1B 5A 50 74 D1 30 55 5F 90 36 1F 60 13 93 D8 C5 73 32 83 B0 C5 
E7 9E 89 CD F3 13 22 EA 0B D2 C6 02 6C 27 9B 74 DE 42 98 41 D8 E2 E7 BA BB B5 3D 1F 8D 6A 2E AD 
90 B0 E0 3A 3F 73 77 C4 FE 9E AF BE 20 6D 32 40 27 D2 2B 33 08 5B 3C EC 99 B4 B9 21 76 28 BA D5 
17 A4 4D 06 68 BF E5 65 98 41 D8 E3 ED BA BB E9 2D 92 2D BE 39 ED FC F5 E5 43 3A 70 9A B7 B9 DB 
09 EA 0B 52 7A 26 D2 A9 0F 50 2E DF 7A 26 6E 6D 85 EA 0B 52 02 94 4E 7D 80 72 F9 B9 EE 66 73 94 
AB FD BF BE 6E FD BD 07 22 1E E6 EE D6 12 77 E7 86 A9 FA 82 B4 B1 00 DB 99 C4 CE AF C2 0C C2 16 
E7 7B 26 41 50 EB 86 D3 F2 8A BB D3 CB 05 81 D1 BD AE AB 3F 40 66 B0 5D 34 4D 5C E5 E1 BA 1B 00 
C4 73 7E DD 1D 86 F5 FD E1 AF F1 BB 0D EB 79 C5 A8 1A 55 BC B2 A9 3B C0 E8 FD 6C F9 ED 2A 7B 51 
1F 66 30 54 1D A0 5C CE E7 EE FA B5 B9 15 06 E5 F5 B4 FA 5D A2 81 00 DD 7A C7 98 41 D8 42 CF 04 
B2 68 EE 2D 03 D5 F9 93 BB ED EE F3 F9 AF AE FE 20 3E 01 4A A7 3E 40 B9 7C EB 99 B4 5F 00 96 B5 
4D D4 17 A4 B5 06 68 2B 83 44 33 98 7F F9 14 66 10 B6 78 B2 EE 66 E1 A0 06 A9 04 30 C6 9B DC 1D 
71 6E B7 57 5F 90 12 A0 74 EA 03 94 CB B7 9E 89 5B D4 17 A4 0D 9C DF 69 51 4E DB 84 19 84 2D FE 
AC BB 2D 6E 82 5C 4D B4 2E B6 26 91 FC 05 E7 D4 9F BB B3 15 56 95 9A AB F9 BA CC C5 D4 A9 BE 20 
25 40 E9 D4 07 28 57 CD 3D 93 DC C4 1D 04 41 58 FA F1 C8 2A 8F 51 49 7D BC 35 05 E8 4E EE 48 B7 
4D 98 41 D8 52 E7 BA 3B 9B 7C E3 7B A2 D4 5C FE 5B 25 8F E9 73 5C 0D 3C 67 6F DC 19 89 44 76 93 
08 29 0C 6E A9 33 77 37 FA 27 3A 4E EB BD DE A8 EB 79 EA 7C F5 64 41 AA F2 06 01 4A BF 41 CF C4 
59 FE 1C AB 74 91 FA 82 B4 BE 00 1D 7D A3 7C 98 41 F5 31 0A 25 26 77 C7 1B 50 97 37 FA FC F5 DA 
6F B8 36 1E 29 37 42 37 86 E1 E3 0D B8 49 4C EE EE 8F 0B 5B 61 CE 18 D4 17 A4 04 28 9D FA 00 E5 
6A F6 B3 39 F1 D9 23 E1 DC C3 98 C9 1F 8B 1E E3 03 F5 F1 D6 11 A0 3B 89 23 30 99 0B 9B 30 83 B0 
A5 E6 F3 4C B2 C7 37 72 13 B7 49 1C 12 C9 7D 4C 5D 23 AA FB 09 61 0B 19 04 98 A3 CE 75 77 51 F2 
4D DD 9F 9B A9 9B FC F3 EE EE 6E 1F 7A F0 AD 2B 86 00 25 53 1F A0 5C 76 AE 67 C2 A6 10 51 FF 3E 
F4 1D A0 9B 95 D3 A9 B6 09 33 08 5B D4 1F AB 74 6A CB 3B 79 CA 84 E5 51 C8 E3 CE 24 BA 33 12 F8 
4E 7D EE 76 3A 51 AA 3F 88 4F 80 D2 A9 0F 50 2E AE 01 6B 93 FA 82 B4 BF 00 5D 4E 19 27 DB 26 CC 
20 6C 51 BF EE 86 74 AE E5 0E D7 C6 03 4F 29 CE DD 8E AF DA 8C F1 A0 20 25 40 E9 D4 07 28 97 FA 
9E 89 6B AB A4 20 F9 47 45 7D 41 DA 77 80 AE BF 3F CC 20 6C 51 BC EE 86 02 AC F8 80 7C 5A 73 B7 
FB FB BC 17 17 D8 24 40 E9 D4 07 28 97 EE 9E 89 9B E5 DE A9 B6 89 FA 82 B4 8F 00 5D CE 17 A7 2E 
6C C2 0C C2 16 AD EB 6E E8 40 E2 00 F2 A9 CC DD 2E 2F D9 E6 50 5F 90 12 A0 74 EA 03 94 4B 71 CF 
44 C0 92 4D 7D 41 4A 80 D2 A9 0F 50 2E 95 EB 6E 48 27 65 A1 27 65 9C 50 48 6B EE 76 7C B1 70 F2 
A2 54 EA 0B D2 FE 02 74 79 12 4F 8E 8D 19 84 2D 5A 7B 26 A1 DB 7B FE 49 EA 0B 52 02 94 4E 7D 80 
72 69 5D 77 43 2E 59 AB 3C 59 A3 85 1E E4 6E 9B D4 17 A4 7D 04 E8 FE 72 EF 54 DB C4 EE 38 1A A5 
7E 13 95 4B 5F CF 44 D2 76 16 04 46 42 92 EA 9D 0F 15 B7 EE 18 75 47 27 9A D6 75 B7 FB 1B 9C FB 
23 04 E0 2E AD B9 5B 0C DD 05 69 AF 15 B7 A4 3F 6C CC 20 AC 50 D6 33 91 B7 91 E9 2E 49 7B AD B8 
65 9C 26 14 D1 DD 55 D0 1D 9D 68 2A D7 DD 52 B6 36 29 E3 04 E0 1C 95 B9 1B AE E8 BE E2 96 55 39 
9D FC 8C 95 E5 51 34 89 9E 89 B3 94 F5 4C E0 96 5E 2B 6E 2A 12 57 D0 33 71 96 A6 75 37 AB 03 00 
BE D0 94 BB 23 2C 13 1C 42 C5 2D 1D 33 E8 2C D7 7B 26 81 09 AA AE A7 25 F6 1E 25 8E B9 1B 41 14 
61 D5 19 9C 7D 9C A0 37 64 F6 C3 95 26 D4 B9 68 08 66 E7 10 AE 71 3D 77 47 C2 47 3B 3F 26 30 26 
DC 1C 98 0A 8F 74 C8 E6 20 B8 25 34 41 18 6E 4E EF 1F C1 CD 56 06 D4 94 8A 33 68 C4 4D 62 34 83 
79 01 2A 9B 41 B8 C6 F5 9E 49 68 C2 2A BB 7D 24 DA 8B 74 08 1F 35 26 10 FF 5F 68 C2 AE 66 50 13 
3D 33 48 CF C4 49 32 D6 DD C6 98 E0 96 3A 1F E6 9A D4 B0 C3 CD 96 C6 51 B7 E8 2C 85 28 9C 4E 53 
33 FB FD CB 52 67 70 CE E7 89 94 CD 20 1C E4 FA BA 1B 9E 91 98 29 24 8E 19 E2 A9 C9 DD 22 CB BA 
44 35 2A 72 FC 1D A9 3F 4B 81 00 61 8B 9A DC 1D 11 B6 02 0A 82 40 DC 98 BB 12 04 81 EE A2 9B 00 
61 8B B2 DC 0D D1 C8 11 40 55 3A 72 B7 D4 9A 6E 6E 41 2A 35 8A 12 5D 56 DC F2 DE 01 F5 2D 05 F5 
01 CA A5 23 77 47 E4 AD DA 66 0B 52 79 23 AF 48 7D C5 4D 80 B0 45 53 EE 86 5C D2 57 76 51 76 3B 
15 45 74 A6 A3 9A 33 05 E1 20 72 B7 4D EA 0B D2 2E 03 94 B7 BE 63 06 61 8B 82 DC 2D 78 C3 52 5F 
90 12 A0 74 EA 03 94 CB F9 DC FD 68 C5 ED 86 CD 0B 80 47 9C CF DD C6 18 B1 9F 93 EE A8 A8 20 55 
D3 2D AD 56 71 0B AE 9C 32 01 0A 8E 25 17 3D 13 67 C9 C8 DD 5A A9 2F 48 BB 09 50 E4 FB 90 08 50 
E4 F8 3B 52 BF 89 CA A5 23 77 2B D8 B6 D2 27 2A 00 40 09 1D B9 5B 6A CA 53 5F 90 12 A0 74 EA 03 
94 4B 47 EE 96 4A 7D 41 5A 21 40 D9 79 21 2F 40 D9 11 A5 A8 DF 44 E5 92 9E BB 55 ED 27 C6 18 7D 
11 55 3B E2 AA 23 3B E8 88 02 32 48 CF DD 11 A9 FB CC DC 82 54 6A 14 25 E2 E8 7C 3B 53 48 0D F5 
01 CA A5 23 77 4B A5 BE 20 AD 16 9D E0 77 C0 87 19 D4 1D A0 5C E4 6E 58 C7 B2 0E E8 9A E8 DC 2D 
7E 9F 2F 28 48 C5 C7 15 53 5F 6E AB 6F 29 A8 0F 50 2E D1 B9 3B 22 B8 A0 CB 14 A4 82 63 C9 A5 BE 
DC 56 DF 52 50 1F A0 5C 02 72 B7 D6 C3 5C D0 54 61 CC E2 33 56 68 89 80 DC AD E0 B2 1E 45 D4 17 
A4 D5 A2 13 BC AC F3 61 06 75 07 28 97 80 DC 5D 40 C3 F6 D4 B1 20 95 FE 77 4B 7D B9 ED C3 0C AA 
9F 44 A1 E4 E6 EE 88 DA AD 8A 4E 91 74 CC 20 1A 25 3D 77 CB A6 BE 20 2D 8D 4E 43 E0 C5 33 A8 21 
3A E3 C1 26 2A 97 DB B9 BB C3 17 2F 88 5F 74 E7 15 A4 AA 0E 76 55 28 B7 65 4F 62 F1 0C 2A 41 CF 
C4 59 6E E7 6E 63 4C 59 ED A9 24 C1 01 40 B7 5A CA DD 55 CA 2E 0F 4B 33 F5 05 69 71 74 4A A2 2E 
9D 41 0D 31 AA DF 44 E5 6A 23 77 87 61 18 04 41 F9 16 50 E5 31 FA A8 2F 48 3B 45 27 3E F6 82 19 
14 1F 57 4C FD 26 2A 57 E3 B9 3B 4A CA C6 98 92 D4 5C E5 31 A9 DF A8 73 88 8E F2 21 46 00 3D 9A 
6F 7B 00 1D 04 B7 14 A6 B0 30 34 5A 13 5C 72 A1 23 FD 04 E1 48 EA 4F 72 14 A0 E2 32 4B D5 0C DE 
1C B2 F4 76 90 DB C7 2A 6F 56 BB 6F 43 6F DE D6 86 C4 ED 26 D7 D7 DD 61 58 B8 E9 A8 DE A2 42 A3 
EC C3 1D B7 A4 BF 18 2C 6A 92 59 19 4B 2B D4 CD 20 1C E3 F6 BA 5B 3B F5 07 F1 09 50 3A F5 01 CA 
D5 F8 BA 3B 3A FC 18 FF 3F BE 3F F9 63 D1 63 D4 53 1F 2C 01 4A A7 3E 40 B9 DA 58 77 E7 26 6E 33 
F7 50 95 87 89 BB 94 AA 4F 57 66 68 8D 2B 49 F7 0C C2 BE 96 7A 26 A9 A4 1C 9F 11 58 F2 18 1F A8 
2F 48 4B 03 D4 30 DD 7E CF 20 6C B2 76 AC D2 C3 4C 9D A5 FE 4D 20 40 E9 D4 07 28 17 C7 2A 1D A7 
6F C9 A3 2F A2 72 BE C5 8B 96 90 BB 6D F2 B8 A5 A0 21 3A E3 F5 0C C2 32 D7 CF EF D6 4D 7D 41 4A 
80 D2 A9 0F 50 2E D6 DD 00 20 0F B9 DB A6 6A 05 A9 E0 8A 35 13 A0 E0 58 72 F9 37 83 70 05 3D 13 
9B 2A 5C 22 55 F6 6E 53 10 A0 9E 32 DC D7 19 84 7D AC BB 01 40 1E 72 B7 4D EA 0B 52 02 94 4E 7D 
80 72 D1 33 B1 49 7D 41 AA FB 3B 65 8C A7 33 08 27 B0 EE 46 CB 58 C4 01 35 20 77 DB A4 BE 20 25 
40 E9 D4 07 28 17 3D 13 9B 2A 14 A4 D1 89 0A A1 D0 56 C3 DC 00 15 A6 00 CF 66 10 0E 61 DD 8D 96 
91 0B 80 1A 90 BB 6D 52 5F 90 12 A0 74 EA 03 94 8B 9E 89 4D EA 0B 52 02 94 4E 7D 80 72 B1 EE 96 
42 FA DA 47 FA F8 FB C7 3B 80 3A 91 BB 6D AA 56 90 0A 5E F8 64 02 14 1C 4B 2E FF 66 10 AE A0 67 
62 93 FA 82 94 00 A5 53 1F A0 5C AC BB 01 40 1E 72 B7 4D 5D 16 A4 F2 4A D7 D9 00 E5 8D BC 22 6F 
66 10 CE A1 67 62 53 E5 82 54 EA A5 44 67 03 8C 06 AF B0 FA F6 66 06 E1 1C D6 DD 00 20 0F EB 6E 
9B A2 6A 54 F1 D2 66 36 40 A3 72 D1 6D 3C 9A 41 B5 01 CA 45 EE B6 49 FD 2E 91 E8 99 48 BD A0 47 
39 6F 66 10 CE A1 67 02 00 F2 B0 EE B6 49 7D 41 9A E8 99 E8 E4 CD 0C AA 0D 50 2E 72 B7 4D DD EC 
12 22 2F 25 1A 04 52 CF AF A8 C8 8F 19 84 8B E8 99 A0 1D A4 00 A0 4E E4 6E 9B D4 7F F0 41 77 74 
C6 8F 19 D4 1D A0 5C F4 4C 6C EA A9 20 95 54 74 AB 2F B8 FD 98 41 31 A3 F5 0A EB 6E 41 E4 EE 42 
72 47 5E 2F A1 EF 03 EB 6E 17 91 BB 6D A2 20 95 8E 19 84 2D F4 4C 6C E2 20 BE 74 CC 20 6C 61 DD 
2D 91 94 85 9E 94 71 B6 4F CA 3B 23 65 9C 3E 22 77 DB D4 7D C5 2D 6F 95 A7 BB A3 C0 0C C2 16 7A 
26 36 F9 50 71 EB 8E 51 77 74 11 1F 62 94 88 75 37 1A C5 6E 2F 1D 33 E8 28 72 B7 4D 1E 9C A5 A0 
3C 40 66 10 B6 D0 33 B1 C9 87 6A 54 77 8C BA A3 8B F8 10 A3 44 AC BB 01 40 1E 72 B7 4D 3D 55 DC 
C9 6F 80 74 D9 C9 11 EA AE B8 99 41 D8 42 CF C4 26 0F AA 51 E5 21 2A 0F CF 18 2F 42 94 89 75 37 
00 C8 43 EE B6 A9 BF B3 14 5C AE 64 4F 95 DB BA 2B 6E 66 10 B6 D0 33 B1 A9 D7 72 54 CA 97 D1 E8 
2F B7 99 41 D8 C2 BA 1B 00 E4 21 77 DB A4 BE 20 25 40 E9 D4 07 28 17 3D 13 9B FA AE 48 DD FC 06 
96 53 BB BA FA 92 9B 19 84 2D AC BB 85 72 7F 8F 72 7F 84 76 B9 FF FE B8 3F 42 AF 91 BB 6D 52 5F 
90 12 A0 74 EA 03 94 8B 9E 89 4D 7A 0B D2 93 71 E9 0D F0 24 BD 01 FA 32 83 72 B1 EE 46 13 58 A9 
49 C7 0C BA 8E DC 6D 93 FA 82 94 00 A5 53 1F A0 5C F4 4C 6C EA AF 20 8D 3E DF E1 DA 89 0A 73 F6 
73 F5 15 37 33 08 5B 58 77 A3 09 EC F0 D2 31 83 AE 23 77 DB A4 BE 20 25 40 E9 D4 07 28 17 3D 13 
9B 6A 2A 48 DD 29 BA D3 3B B9 FA 8A 9B 19 84 2D AC BB 45 73 73 BF 72 73 54 6E 72 F3 BD 72 73 54 
98 A3 E6 DC 9D 2D AF AA 14 5C DE 16 65 EA 0B 52 02 94 4E 7D 80 72 D5 D9 33 C9 4D DC 41 10 44 FF 
2F F9 AD 8E 8F D1 AA BE 90 5D 28 BA 73 F6 70 F5 73 CA 0C C2 96 DA D6 DD D9 E4 1B DF 13 A5 E6 F2 
DF 2A 79 0C 4A B9 B6 6B B9 36 1E F7 B9 F6 8E B9 36 1E E4 AB 2D 77 37 FD F7 39 CE EC 9A 6E 24 0B 
52 95 37 08 50 FA 0D 7A 26 CE EA B1 67 92 9A 4E 0A AB DE A8 AB 36 D2 5F 07 A3 2E C0 34 75 01 E6 
CC A0 AD A1 A0 5C 8F B9 BB FD 19 8D 5F 91 1B 99 1B A1 33 C3 08 1D 18 86 C4 1B 4E CF 20 DC C4 39 
82 36 A9 2F 48 09 50 3A F5 01 CA D5 60 EE 8E CB C9 70 EE 61 CC E4 A6 50 F4 18 4F 04 41 50 47 D4 
D1 33 D8 DD C1 F2 5F BD A6 00 DD C5 0C C2 96 3A CF 33 C9 1E DC 08 32 27 FF C5 8F 89 EF C9 3E 06 
62 31 89 D2 31 83 62 D4 76 7E 77 51 F2 4D DD 9F 9B A9 BD 4D DC D1 DF 30 C5 E1 13 A0 74 EA 03 94 
CB C2 F5 4C D8 0E 62 75 BF 15 A1 A5 75 53 61 B1 AF 7E AE 99 41 D8 C2 B1 4A 1D 5C D8 C1 5C 18 83 
5C 2E BC 7B 2E 8C 01 55 91 BB 6D 52 7F 10 9F 00 A5 53 1F A0 5C 5C 03 D6 A6 06 0A D2 F6 8B EE B2 
1D 5B 7D C5 CD 0C C2 16 D6 DD 6A D8 DD C7 D8 C3 FB C7 0C A2 0B E4 6E 9B D4 17 A4 04 28 9D FA 00 
E5 A2 67 62 93 96 82 B4 30 0A 2D 01 16 D2 12 A0 BF 33 28 17 EB 6E F4 8F 75 99 74 CC A0 3C E4 6E 
9B EA 2E 48 DB FF 68 75 87 D7 52 5F 71 33 83 B0 85 9E 89 4D 5A 0A 52 7F 2B 6E 2D 01 FA 3B 83 72 
B1 EE 06 00 79 C8 DD 36 35 56 90 B6 53 E4 76 7E 15 F5 15 37 33 08 5B E8 99 D8 D4 40 41 1A B4 7E 
DC A9 2C 04 F5 15 37 33 08 5B 58 77 03 80 3C E4 6E 9B 9A 2C 48 9B 5E BB 55 7A 7E F5 15 37 33 08 
5B E8 99 D8 D4 4C 41 DA 66 D1 DD 61 FC EA 2B 6E 66 10 B6 B0 EE 46 CF D8 AB A5 63 06 05 23 77 DB 
24 BC 20 E5 2C 05 E9 01 32 83 82 D1 33 B1 A9 B1 82 34 2A BA 9B BB 9A 68 D5 9D 59 7D C5 CD 0C C2 
16 D6 DD E8 19 7B B5 74 CC A0 60 E4 6E 9B 9A 2F 48 2D 7F 6C 44 7D C5 CD 0C C2 16 7A 26 36 35 59 
90 36 7D AE 42 A5 91 AB AF B8 99 41 D8 C2 BA 1B 00 E4 21 77 DB D4 4A 41 5A EF F3 77 F7 6C EA 2B 
6E 66 10 B6 D0 33 B1 A9 E1 82 B4 B9 A2 BB EA B0 D5 57 DC CC 20 6C 61 DD 8D 6E B1 33 4B C7 0C 6A 
40 EE B6 49 66 41 CA 59 0A A7 C8 0C 90 19 D4 80 9E 89 4D CD 17 A4 F5 7E C4 A3 EB 7D 58 7D C5 CD 
0C C2 16 D6 DD 9E E8 7F E9 14 3F 03 3B B3 15 CC 20 E6 20 77 DB D4 4A 41 5A EF 8E DA DD B3 A9 AF 
B8 99 41 D8 42 CF C4 A6 76 0B D2 7E EA EE 1E F7 5E F5 15 37 33 08 5B 58 77 FB A0 AE DD 8F DD D8 
16 66 10 69 E4 6E 9B 44 15 A4 BD EC F6 A2 02 EC 85 A8 00 99 41 55 E8 99 D8 D4 62 41 DA CF E9 0A 
E1 EC FF BB FE 5D F5 15 37 33 08 5B 58 77 A3 22 F6 61 E9 98 41 55 C8 DD 36 D9 28 48 BB 7D B9 BE 
86 A7 BE E2 66 06 61 0B 3D 13 9B DA 2D 48 83 EE 6B E7 7E CF 08 56 5F 71 33 83 B0 85 75 B7 57 7A 
D8 0F 03 6A 6D 97 30 83 38 89 DC 6D 93 8D 82 34 DA 8D AB BC 68 98 F8 7F 8F D4 57 DC CC 20 6C A1 
67 62 93 D5 82 B4 BC EE AE E7 F3 D3 EA 2B 6E 66 10 B6 B0 EE F6 50 BC 37 16 AD A7 B8 F0 85 E3 98 
41 90 BB AD B2 57 90 16 ED FC E1 EC 3D F5 34 49 D5 57 DC CC 20 6C A1 67 62 93 D5 82 34 28 ED 87 
D6 73 D1 51 F5 15 37 33 08 5B C8 DD 3E CB 1E F5 62 47 95 85 19 F4 17 B9 DB A6 A8 1A B5 BD B4 69 
F0 D5 DD 08 B0 41 6E 04 C8 0C FA 88 DC 6D 93 FA 5D 82 00 A5 53 1F A0 5C 1C AB 04 00 79 C8 DD 36 
A9 3F 88 4F 80 D2 A9 0F 50 2E 7A 26 36 A9 2F 48 09 50 3A F5 01 CA C5 BA 1B 00 E4 21 77 DB A4 BE 
20 25 40 E9 D4 07 28 17 3D 13 9B D4 17 A4 04 28 9D FA 00 E5 62 DD 0D 00 F2 90 BB 6D 52 5F 90 12 
A0 74 EA 03 94 8B 9E 89 4D EA 0B 52 02 94 4E 7D 80 72 B1 EE 06 00 79 C8 DD 36 A9 2F 48 09 50 3A 
F5 01 CA 45 CF C4 26 F5 05 29 01 4A A7 3E 40 B9 58 77 03 80 3C 75 E6 EE 70 56 EA CE 2A BF 58 E3 
30 04 51 5F 90 12 A0 74 EA 03 94 AB B6 9E 49 18 86 71 79 15 DF 8E 6E 24 FF A9 E8 17 CB 1F A3 95 
FA 90 09 50 3A F5 01 CA D5 60 CF 24 4E C7 51 6A EE F9 31 00 80 94 DA 72 77 D3 7F 9F E3 CC AE E9 
46 B2 20 55 79 83 00 A5 DF A0 67 E2 AC 1E 73 77 38 57 EA 9F EA CA E3 EA EB 35 02 94 CE 87 00 D5 
C7 28 54 8F FD EE A2 E9 AC 31 71 A7 5E 88 1B DC E0 86 95 1B 70 53 CD E7 99 30 DF 00 D0 82 DA 72 
77 36 71 C7 87 1F 53 FF 94 EC B1 14 3D 06 00 50 A2 CE CF 55 A6 92 B2 99 4D CD D9 C4 9D BC 33 FB 
18 00 40 B9 DA 72 77 51 F2 CD 5D 8C 67 EF AC 6B 18 00 E0 03 0B 9F 89 27 53 03 40 9F B8 9E 09 00 
C8 43 EE 06 00 79 C8 DD 00 20 8F 2B B9 BB CA E7 6E C5 7D 36 37 3B 60 4D 61 16 7D AA B6 CA 2F 36 
36 A8 DA 14 7D 72 58 4D 80 31 AD 33 A8 9E 13 B9 3B 9C BD 94 60 9F 8F 71 DC D5 83 1B 00 00 02 3E 
49 44 41 54 4A 6E E2 56 13 66 34 CE 48 F2 0A 18 6A 02 0C 12 E2 3B 35 05 98 4B 7D 80 9A D8 CF DD 
A1 C6 CB 0D 66 CF 83 54 19 66 92 D6 00 E3 31 AB 0C 30 55 52 E8 0B 50 31 FB B9 5B 25 F5 E7 41 AA 
0F 30 A2 FB 53 63 BA A3 53 8F DC 8D BE 28 DE FF E3 CF 00 DB 1E 08 90 83 EF 1A 46 EF 14 27 6E 93 
A8 2D 54 86 A9 32 28 AF B0 EE 46 8F D8 F9 A5 8B 4F A1 A1 B6 90 C8 7E EE F6 E4 72 83 CA C2 54 7F 
D9 C8 6C 3A 53 16 60 F2 2C 9A D4 E1 47 1D 01 AA 67 3F 77 9B D2 CB 0D 96 3C C6 65 C9 15 4D 1C 85 
B2 30 B3 A7 3F 6B 0A 30 1A 67 A4 E4 9A 97 72 03 CC A5 3E 40 4D 5C E9 77 2B BB DC A0 FA AB 2A AA 
0F D0 14 8C 53 53 80 91 F2 C1 2B 08 50 2B 27 D6 DD B9 3C D9 3E D4 87 49 80 D2 A9 0F 50 28 77 73 
37 00 A0 08 B9 1B 00 E4 21 77 03 80 3C E4 6E 00 90 87 DC 0D 00 F2 90 BB 01 40 1E 72 37 00 C8 43 
EE 06 00 79 C8 DD 00 20 0F B9 1B 00 E4 21 77 03 80 3C E4 6E A9 72 AF B9 CC 85 98 01 4F 90 BB 55 
E1 B2 41 80 27 C8 DD 22 65 2F 0E 5E F2 63 F6 4E 1F 96 E7 9E 87 0F F5 C8 DD 22 C5 5F 74 92 5C 68 
67 17 DD F1 C5 97 93 DF 75 12 F1 21 7F 79 1E 3E 74 73 E5 BB 17 D0 0E 9F 73 56 9C B2 53 7F F3 00 
89 C8 DD 7E F1 3C 67 45 E1 F3 95 5D 50 80 9E 89 78 BD 2D A5 3D 5C 80 A7 BE 57 D3 EE 60 80 3E B1 
EE 96 2A D9 01 88 EE C9 FD 02 EF D4 ED 64 FE 6A 6F AC F6 78 1E 3E 14 23 77 0B D6 F1 5B 62 B3 B7 
FD C9 59 9E 87 0F F5 E8 99 00 80 3C E4 6E 00 90 87 DC 0D 00 F2 90 BB 01 40 1E 72 37 00 C8 43 EE 
06 00 79 C8 DD 00 20 0F B9 1B 00 E4 21 77 03 80 3C E4 6E 00 90 87 DC 0D 00 F2 90 BB 01 40 1E 72 
37 00 C8 43 EE 06 00 79 C8 DD 00 20 0F B9 1B 00 E4 E9 F0 DD 0B 7C 35 14 00 38 88 75 37 00 C8 43 
EE 06 00 79 C8 DD 00 20 0F B9 1B 00 E4 21 77 03 80 3C 39 E7 99 04 41 D0 FE 38 00 00 D5 A5 73 37 
27 05 02 80 FB E8 99 00 80 3C E4 6E 00 90 67 BE 31 66 78 78 D8 F6 30 00 00 00 00 D5 FE 1F 11 F5 
AB 63 3D 24 31 10 00 00 00 00 49 45 4E 44 AE 42 60 82 
EndData
$EndBitmap
$EndSCHEMATC
