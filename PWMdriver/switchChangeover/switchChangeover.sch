EESchema Schematic File Version 2
LIBS:NGspice
LIBS:switchChangeover-rescue
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
LIBS:pspice
LIBS:switchChangeover-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Changeover Switch for ngSpice models"
Date "2018-05-29"
Rev ""
Comp "farmerkeith"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR3
U 1 1 5B0DBA73
P 3650 2800
F 0 "#PWR3" H 3650 2550 50  0001 C CNN
F 1 "GND" H 3650 2650 50  0000 C CNN
F 2 "" H 3650 2800 50  0001 C CNN
F 3 "" H 3650 2800 50  0001 C CNN
	1    3650 2800
	1    0    0    -1  
$EndComp
$Comp
L VSOURCE V2
U 1 1 5B0DBA74
P 2700 2100
F 0 "V2" H 2700 2000 50  0000 C CNN
F 1 "pulse 0V 5V 2ns 3us 3us 7us 20us  " H 3300 2250 50  0000 C CNN
F 2 "" H 2700 2100 50  0001 C CNN
F 3 "" H 2700 2100 50  0001 C CNN
	1    2700 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 5B0DBA75
P 2700 2800
F 0 "#PWR2" H 2700 2550 50  0001 C CNN
F 1 "GND" H 2700 2650 50  0000 C CNN
F 2 "" H 2700 2800 50  0001 C CNN
F 3 "" H 2700 2800 50  0001 C CNN
	1    2700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1400 2700 1400
Text GLabel 4950 3100 2    60   Input ~ 0
OUT
Text GLabel 2700 1400 0    60   Input ~ 0
IN
Text Notes 4650 1900 0    60   ~ 0
+PSPICE\n.tran 5us 41us\n.control \nrun\nplot in out  title 'Switching action'\n
Wire Wire Line
	3650 1400 3650 2200
$Comp
L VSOURCE V1
U 1 1 5B0DBA79
P 1750 1850
F 0 "V1" H 1750 1750 50  0000 C CNN
F 1 "12V " H 1750 2000 50  0000 C CNN
F 2 "" H 1750 1850 50  0001 C CNN
F 3 "" H 1750 1850 50  0001 C CNN
	1    1750 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 5B0DBA7A
P 1750 2550
F 0 "#PWR1" H 1750 2300 50  0001 C CNN
F 1 "GND" H 1750 2400 50  0000 C CNN
F 2 "" H 1750 2550 50  0001 C CNN
F 3 "" H 1750 2550 50  0001 C CNN
	1    1750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1150 4000 2200
Wire Wire Line
	4000 1150 1750 1150
Connection ~ 3650 2100
Wire Wire Line
	3300 2100 3650 2100
Text Notes 800  1000 0    60   ~ 0
ngspice changeover switch made from NO and NC switches\nNO switch is ON with Vc>Vt+Vh transition and OFF with Vc<Vt-Vh transition\nNC switch is OFF with Vc>Vt+Vh transition and ON with Vc<Vt-Vh transition\nDrive impedance is put in external resistors to give visibility and control
Wire Wire Line
	3650 3250 3300 3250
Wire Wire Line
	3300 3250 3300 2100
$Comp
L GND #PWR5
U 1 1 5B0DBC43
P 3650 3850
F 0 "#PWR5" H 3650 3600 50  0001 C CNN
F 1 "GND" H 3650 3700 50  0000 C CNN
F 2 "" H 3650 3850 50  0001 C CNN
F 3 "" H 3650 3850 50  0001 C CNN
	1    3650 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 5B0DBC60
P 4000 3850
F 0 "#PWR6" H 4000 3600 50  0001 C CNN
F 1 "GND" H 4000 3700 50  0000 C CNN
F 2 "" H 4000 3850 50  0001 C CNN
F 3 "" H 4000 3850 50  0001 C CNN
	1    4000 3850
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-switchChangeover C1
U 1 1 5B0DBE2F
P 4950 3350
F 0 "C1" H 4975 3450 50  0000 L CNN
F 1 "10nF" H 4975 3250 50  0000 L CNN
F 2 "" H 4988 3200 50  0001 C CNN
F 3 "" H 4950 3350 50  0001 C CNN
	1    4950 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 5B0DBE76
P 4950 3650
F 0 "#PWR4" H 4950 3400 50  0001 C CNN
F 1 "GND" H 4950 3500 50  0000 C CNN
F 2 "" H 4950 3650 50  0001 C CNN
F 3 "" H 4950 3650 50  0001 C CNN
	1    4950 3650
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5B0DCBAC
P 4150 2900
F 0 "R1" V 4230 2900 50  0000 C CNN
F 1 "15" V 4150 2900 50  0000 C CNN
F 2 "" V 4080 2900 50  0001 C CNN
F 3 "" H 4150 2900 50  0001 C CNN
	1    4150 2900
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5B0DCBD7
P 4150 3100
F 0 "R2" V 4230 3100 50  0000 C CNN
F 1 "15" V 4150 3100 50  0000 C CNN
F 2 "" V 4080 3100 50  0001 C CNN
F 3 "" H 4150 3100 50  0001 C CNN
	1    4150 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 2800 4000 2900
Wire Wire Line
	4000 3100 4000 3250
Wire Wire Line
	4300 2900 4300 3100
Wire Wire Line
	4300 3100 4950 3100
Wire Wire Line
	4950 3600 4950 3650
$Bitmap
Pos 2500 5750
Scale 2.000000
Data
89 50 4E 47 0D 0A 1A 0A 00 00 00 0D 49 48 44 52 00 00 02 0F 00 00 01 D0 08 02 00 00 00 A9 C7 1E 
92 00 00 00 03 73 42 49 54 08 08 08 DB E1 4F E0 00 00 20 00 49 44 41 54 78 9C ED DD 5F 8C 1D 65 
FD C7 F1 99 D2 6D 15 68 A1 BF 40 A9 0B DB 2C 2D 1A A1 DD 40 55 34 FE 49 89 FC AB 6D A2 56 09 90 
00 37 BD 30 2A 17 EA 8D 92 62 22 6B A3 60 35 1A AF 4C 30 5E 68 AC 01 DB 1F 09 B4 42 21 C0 85 26 
9A 98 90 10 22 4A 2B DB 2E 85 A5 DB 7F BF 2D 5A 5A 68 B7 DD F9 5D 0C 3B CC CE CC 99 67 CE 39 F3 
3C F3 7D BE F3 7E A5 69 A6 A7 67 CF 3E 9F F3 CC 9E EF 7C 9F 99 3D 27 08 00 00 30 09 83 20 88 A2 
A8 E9 61 00 00 84 1A 1D 1D FD E1 0F 7F 38 AF E9 61 00 00 3C 40 B5 00 00 98 CD 77 F3 6D C2 30 74 
F3 8D 00 C0 92 96 2F DA 97 55 8B C3 47 8E 4C 9F 99 AE F2 28 03 0B 06 2E 5B BA B4 A6 21 01 00 C4 
E9 58 2D 0E BC FE FA 1B 93 53 6F 1E 3B 55 E5 51 2E BF F4 82 53 A7 4E 5D 39 3C 5C DB B8 00 00 92 
74 AC 16 27 4F 9E 3C 7C 22 F8 DF BF BE 19 04 41 10 06 61 90 59 4A 9A F3 CF 3B 6F BC 6A F1 F9 6F 
C7 DB A3 A3 A3 A3 A3 A3 35 0F 13 00 84 69 F0 B5 CE B8 B6 9F 5F 34 8B BF A4 70 31 AD E4 BF D2 CA 
56 A2 56 5E F1 3F 1B 6F F8 68 6E 50 E9 1B A2 F8 9F 57 0D 5D 1C 9C 79 AB FC 3B A1 0D 06 06 06 B6 
6C D9 72 EB AD B7 7E FC E3 1F AF EB 31 E7 CD 9B 37 36 36 F6 9D EF 7C 67 E7 CE 9D C6 3B 8F 8F 8F 
6F DC B8 F1 A5 97 5E EA F9 11 6A D4 D4 F7 85 1C 61 18 8A 3A DB 91 1F 4F F5 93 CA 65 D5 62 C5 E0 
C5 D7 7D 74 79 95 47 79 FB E4 C9 FD E3 54 0B 5F 6D DB B6 ED D1 47 1F FD D3 9F FE D4 E7 E3 0C 0D 
0D 3D FE F8 E3 E7 9D 77 5E BD 3F 1E 33 33 33 5B B7 6E 7D F1 C5 17 83 5E 87 9A 7E 04 DB D2 23 74 
F9 7D 21 50 FC 42 2C A4 60 44 51 94 1F 4F 52 2A AA 8C B0 AC 5A CC 44 33 E7 CE 9D AB 34 8E 99 99 
2A 77 83 4C 97 5D 76 D9 05 17 5C D0 FF E3 9C 3C 79 72 74 74 74 66 66 E6 47 3F FA 51 FF 8F 96 F6 
F0 C3 0F C7 1B 3D 0F 35 79 04 DB 32 23 74 F6 7D 21 4D B2 BC 13 86 A1 8D 82 51 F2 80 9D DA 85 4C 
C1 E8 AA 54 04 E5 BF 6F 71 EE DC B9 E9 B3 D3 55 FE 9C 3D 77 B6 CA 37 83 40 5B B7 6E 5D BB 76 ED 
C3 0F 3F 3C 39 39 79 E9 A5 97 06 41 30 3E 3E BE 69 D3 A6 7F FF FB DF 7F FF FB DF 17 2F 5E BC 6D 
DB B6 37 DF 7C F3 C4 89 13 CF 3C F3 CC D0 D0 50 FC 55 7B F7 EE DD B2 65 CB D8 D8 D8 D4 D4 D4 AF 
7F FD EB F3 CE 3B 2F 08 82 A9 A9 A9 5D BB 76 A5 1F 7C C9 92 25 AF BF FE FA 6D B7 DD 96 BE F1 1B 
DF F8 C6 BE 7D FB 8E 1C 39 F2 C2 0B 2F AC 5E BD 7A F3 E6 CD C9 57 DD 7C F3 CD EF BC F3 CE C8 C8 
48 FC CF 3F FF F9 CF EB D7 AF 0F 82 E0 95 57 5E F9 D4 A7 3E 95 1F EA C5 17 5F FC DB DF FE 76 72 
72 72 EF DE BD DF FA D6 B7 E2 AF FA F6 B7 BF 9D 19 58 F2 08 9D 46 1E 04 C1 B2 65 CB 1E 7F FC F1 
63 C7 8E ED D9 B3 67 DB B6 6D 0F 3C F0 40 7A CC 9D 9E 87 CC 00 F2 23 4C BE EF 25 97 5C F2 87 3F 
FC E1 D0 A1 43 E3 E3 E3 F7 DD 77 5F F2 83 DA 69 3C F0 5A FA 4C 40 FC B7 90 DF 22 E8 AD AB 88 95 
57 8B B3 67 CF 9E A9 F2 A7 62 0B 02 81 EE BB EF BE BF FC E5 2F 5F FF FA D7 3F F4 A1 0F 1D 3D 7A 
34 BE 71 E3 C6 8D EB D7 AF 5F B7 6E DD 89 13 27 76 EE DC 79 FD F5 D7 5F 7D F5 D5 87 0F 1F 7E F0 
C1 07 E3 3B 2C 58 B0 E0 D4 A9 53 AB 56 AD BA E6 9A 6B D6 AF 5F 7F F7 DD 77 17 3E F8 DB 6F BF FD 
CC 33 CF EC DF BF 3F B9 E5 C3 1F FE F0 D6 AD 5B D7 AD 5B B7 74 E9 D2 DB 6E BB ED D5 57 5F DD B1 
63 C7 8D 37 DE F8 81 0F 7C 20 08 82 2F 7C E1 0B 93 93 93 71 85 B8 E8 A2 8B 56 AD 5A F5 FC F3 CF 
97 0C F5 77 BF FB DD C4 C4 C4 F0 F0 F0 DA B5 6B 77 EF DE 1D DF 6D 7C 7C 7C F5 EA D5 9D 06 D6 69 
E4 8F 3E FA E8 4B 2F BD 34 38 38 B8 61 C3 86 6B AF BD 36 F3 55 9D 9E 87 CC 00 0A 9F CC D8 23 8F 
3C B2 67 CF 9E A1 A1 A1 2F 7D E9 4B F7 DE 7B EF 3D F7 DC D3 D5 33 09 8F E4 4F 1A CB 2C 18 41 97 
BF 41 52 56 2D CE 9E 3B 37 5D CD 39 7A 0B 5D 7E F0 83 1F EC DB B7 EF AD B7 DE 8A A2 68 FB F6 ED 
07 0F 1E 9C 98 98 F8 CD 6F 7E 93 7E 19 DD BD 7B F7 E9 D3 A7 0F 1D 3A F4 C4 13 4F AC 59 B3 A6 F0 
71 A6 A7 A7 BF F6 B5 AF A5 17 EE E7 CD 9B 37 7F FE FC 91 91 91 85 0B 17 1E 38 70 E0 F4 E9 D3 63 
63 63 7B F6 EC B9 E1 86 1B 82 20 F8 FC E7 3F FF DD EF 7E 37 AE 16 B7 DC 72 CB D3 4F 3F 7D E6 CC 
99 4E 83 1C 1A 1A FA DC E7 3E 37 3A 3A 7A FA F4 E9 C3 87 0F BF FA EA AB F1 ED 3B 77 EE 7C F7 DD 
77 4B 06 96 1F F9 F0 F0 F0 35 D7 5C B3 65 CB 96 33 67 CE EC DF BF FF B9 E7 9E CB 7C 49 E1 F3 D0 
69 00 79 2B 56 AC 18 19 19 F9 F1 8F 7F 3C 3D 3D FD 8F 7F FC E3 C1 07 1F BC EB AE BB BA 7A 26 E1 
9D 70 AE A6 87 F3 BE F4 60 BA 1A 98 A1 B7 38 33 3D 5D E5 CF 59 7A 0B BD EE B8 E3 8E 67 9F 7D F6 
85 17 5E F8 E5 2F 7F 39 30 30 90 BF C3 D1 A3 47 E7 CF AF FA A6 00 7B F7 EE DD B4 69 D3 FD F7 DF 
7F E4 C8 91 9F FF FC E7 8B 16 2D 0A 82 60 C7 8E 1D 1B 36 6C 18 1C 1C 9C 9A 9A DA B9 73 E7 EA D5 
AB 17 2D 5A B4 61 C3 86 C7 1E 7B AC E4 A1 AE BA EA AA 83 07 0F 9E 3D DB F1 48 C5 38 B0 E4 0E CB 
97 2F 3F 78 F0 60 79 8B 9C 7F 1E 8C 03 48 0C 0F 0F 4F 4C 4C CC CC 9E DE FB D7 BF FE 35 38 38 D8 
C3 80 E1 85 A8 B3 A6 87 56 B0 00 55 BD 60 18 CE 5B 54 5E 89 A2 B7 F0 5B A7 3D 66 CD 9A 35 0F 3D 
F4 D0 5D 77 DD F5 89 4F 7C E2 9B DF FC 66 2D DF 6B FB F6 ED D7 5F 7F FD 9A 35 6B 3E F9 C9 4F 7E 
EF 7B DF 0B 82 60 C7 8E 1D EB D7 AF BF F5 D6 5B 9F 7C F2 C9 E9 E9 E9 E7 9F 7F FE 96 5B 6E 59 BB 
76 ED D3 4F 3F 5D 32 D4 E3 C7 8F 5F 7E F9 E5 B5 BC BC 4E 4E 4E 0E 0F 0F 2F 5C B8 B0 D3 1D 0A 9F 
87 4E 03 C8 3F 99 87 0E 1D BA F2 CA 2B 17 2C 58 10 FF 73 F9 F2 E5 E3 E3 E3 FD 0F 1B 32 85 9D 35 
3E B0 78 23 7D 42 25 A8 5C 30 CA 57 A2 CE 56 3C CB 4D B5 F0 DA F1 E3 C7 3F FD E9 4F 17 FE D7 D2 
A5 4B 17 2F 5E FC C1 0F 7E 70 60 60 E0 A6 9B 6E EA F6 91 07 06 06 7E F5 AB 5F A5 D7 AF 96 2C 59 
72 D3 4D 37 2D 5A B4 E8 8D 37 DE 98 98 98 88 5F 6A F7 ED DB F7 DF FF FE F7 DE 7B EF 7D F2 C9 27 
83 20 78 E2 89 27 36 6F DE FC E2 8B 2F BE F3 CE 3B 25 43 FD E7 3F FF 39 35 35 F5 FD EF 7F 3F 0C 
C3 45 8B 16 0D F7 F1 56 02 63 63 63 63 63 63 3F FD E9 4F 17 2E 5C B8 74 E9 D2 CF 7C E6 33 99 3B 
14 3E 0F 85 03 28 7C 32 F7 EC D9 73 E0 C0 81 9F FC E4 27 0B 16 2C B8 E2 8A 2B 36 6F DE CC B5 52 
48 94 54 97 1A 6B 4C E1 69 ED AE 0A 86 61 25 AA DA 42 D4 19 AE 89 F2 DA 43 0F 3D B4 6E DD BA 7D 
FB F6 7D F6 B3 9F CD FC D7 73 CF 3D B7 6B D7 AE 97 5F 7E F9 95 57 5E B9 F0 C2 0B CB D7 6A 06 07 
07 8F 1F 3F FE C7 3F FE 71 64 64 E4 F8 F1 E3 9B 36 6D BA F0 C2 0B BF F8 C5 2F 7E E4 23 1F 49 EE 
B3 6C D9 B2 07 1E 78 E0 B5 D7 5E 9B 98 98 38 FF FC F3 7F F6 B3 9F C5 B7 6F DF BE FD A2 8B 2E 8A 
97 FE 77 EF DE 7D DD 75 D7 15 2E 43 A5 87 3A 3D 3D FD 95 AF 7C E5 E6 9B 6F 9E 9C 9C 7C F9 E5 97 
BF FC E5 2F F7 FC 0C 44 51 74 FB ED B7 AF 5A B5 6A 72 72 F2 A9 A7 9E 7A F7 DD 77 67 E6 5E 14 5E 
F8 3C 14 0E A0 F0 C9 9C 99 99 F9 EA 57 BF 7A F5 D5 57 1F 3C 78 F0 D9 67 9F FD C5 2F 7E 91 9C 93 
87 3E 6E 56 A2 7A AB 2E F9 31 54 1F 55 C7 5F F8 1E 7F ED B5 A3 FF 77 64 FE FC 4A 6F 69 3E 73 2E 
5A 72 F1 25 2B 57 5C 19 74 F8 6D F8 C6 5B 30 A0 BA 47 1E 79 E4 A9 A7 9E FA FD EF 7F DF F4 40 20 
4B E6 A5 B2 3D EF 72 14 7F 1A 52 C7 6A 11 45 D1 FE F1 F1 FF FC E7 3F 33 33 86 CA 33 6F 5E B8 78 
F1 E2 95 2B 56 94 94 04 AA 05 84 1B 1A 1A 1A 18 18 D8 BF 7F FF B5 D7 5E BB 6B D7 AE 8F 7D EC 63 
C7 8E 1D 6B 7A 50 90 45 C2 69 EA 46 C4 D5 A2 E3 19 C2 30 0C 57 AE 58 E1 72 40 40 83 46 46 46 EE 
BF FF FE 95 2B 57 1E 38 70 E0 CE 3B EF A4 54 00 19 8E 2E D7 6B 6D 4D 86 77 96 2D 5B F6 B7 BF FD 
AD E9 51 00 E2 F0 49 AB 00 00 33 F3 A5 E2 00 80 16 CA AC 09 15 AC 44 B1 6A 04 00 2D 97 EF 1C 58 
89 02 00 98 51 2D 00 00 66 54 0B 00 80 19 6F 78 09 00 66 6D B8 02 A8 FC A4 B5 B9 5A B4 E1 39 02 
80 BC CC AB A7 EE 2B 80 8C 2F F5 AC 44 01 00 CC A8 16 00 00 33 AA 05 00 C0 8C B3 DC 00 D0 35 F7 
27 74 1B 3F 6B 42 B5 00 80 5E B8 7C F9 96 70 B5 11 2B 51 00 00 33 AA 05 00 C0 8C 6A 01 00 30 A3 
5A 00 80 6B 61 18 4A 38 15 D1 15 AA 05 00 34 4F 7E FD E0 9A 28 00 70 AD F1 CB 61 7B 40 B5 00 80 
1A 64 3A 83 28 8A E2 5B E2 C2 90 DF 0E 52 35 23 B9 25 7D 37 69 58 89 02 80 7E 25 AF F2 55 5E E8 
F3 F7 49 6E A9 F8 08 8D A0 5A 00 00 CC A8 16 00 00 33 AA 05 00 F4 2B 39 21 D1 FF 75 4D 62 2F 8E 
E2 2C 37 00 D4 20 7F CA 3A 3E D1 9D 79 E9 4F FF 33 7D 4E 3B 7D 67 99 A7 2E 7A AF 16 C9 19 FF CC 
36 00 20 56 72 42 BB CA 9D 45 69 DD 4A 94 F0 F9 00 13 04 C8 E4 C1 4A 54 0F 2F 1E 25 6D 0E 3D 50 
F7 EA 9D 01 40 39 AD 47 3C ED EA 2D 32 D7 32 27 CB 85 5A 67 57 9A 68 56 F2 CF F4 7F 05 CC 08 20 
58 EF BD 45 18 86 F1 E9 0A DB 27 2D 6A 7C E8 78 B4 E9 5B D2 BF 6F 49 DB D1 41 3D 4F 4B 95 13 5D 
0E 76 27 A0 2E 6D DB 51 3D 58 89 B2 AA 6D F3 0D A0 16 2D 6C 7F DB B5 12 05 00 E8 4D 5F D5 82 75 
03 D4 A2 F0 30 AD 85 C7 6E 80 64 ED 5A 89 4A FF 16 4C D3 63 69 9D F4 49 A3 F8 F9 4F 6E C9 FC 57 
E6 7D 3A 01 48 D0 6F B5 F0 EB 47 DA F8 4B 95 B0 2A FF 24 67 DE A8 B9 D3 DD 00 69 74 EC A5 5D 75 
F0 ED EA 2D 00 A0 2E BE 2F 96 76 5B F0 38 CB 0D 00 30 A3 5A 00 00 CC A8 16 00 00 33 AA 05 00 F4 
AB C6 0F A5 10 FB F9 16 54 0B 00 80 19 D5 02 00 60 C6 15 B4 00 50 8F F4 FB 66 66 6E 49 6E CC AC 
32 15 DE 33 FF 80 3D 3C 66 FA 63 F8 6A F9 48 3E 7A 0B 00 A8 47 F2 66 FB E9 B2 91 BF 31 7F CF E4 
D5 3C FD 82 9E B9 B1 F0 9E 25 8F 59 3B 7A 0B 00 B0 A5 FC 85 BB FA C1 BE 84 DF 04 A4 B7 00 00 2B 
0A 3B 06 7F D1 5B 00 80 74 55 4E 3C 64 CE 9A C4 6F 9F 5A E3 AA 14 D5 02 00 AC A8 FE 7A 5D 78 CF 
CC 8D 85 35 20 FF 71 C5 99 47 88 37 6A A9 19 54 0B 00 E8 57 A7 57 ED 92 57 F0 2A B7 F7 F3 D1 2F 
B5 5C 07 95 C6 79 0B 00 50 28 B9 3E AA AE B2 41 6F 01 00 7E EB AA 5F E9 19 BD 05 00 C0 8C DE 02 
00 7A 21 F3 BD FF EC A1 5A 00 40 D7 74 FC 0A 45 57 58 89 02 00 98 51 2D 00 00 66 54 0B 00 80 19 
D5 02 00 60 46 B5 00 00 98 51 2D 00 00 66 54 0B 00 80 19 D5 02 00 60 46 B5 00 00 98 59 A9 16 99 
DF 72 4C 7F 32 6D F5 AF 02 00 C8 51 7F B5 C8 97 8A 70 56 49 3D 88 EF 46 C1 00 00 99 6A AE 16 F1 
8B 7E CF 5F 45 C1 00 00 99 6A AE 16 F9 52 D1 FF DB 34 26 F5 A3 BF 8D 48 DA 9F 9A 72 79 BD D1 FC 
2C 14 FD 69 FC 69 61 63 CE 06 84 70 77 96 BB E7 B6 A3 96 6F 5E C7 83 D4 2C FE 3C AB A6 47 D1 20 
B1 D9 23 C1 63 03 1A E3 E8 1D CB 7B 2B 15 19 C9 23 74 B9 F1 FE 03 F4 39 80 BA BD F7 92 D4 6B 2E 
AF 37 92 27 41 DA A4 04 F1 BC 34 FD FC B0 D1 BA 4F 8F 90 CF 45 6F 51 4B A9 E8 F9 9B CF 6E 34 BF 
E7 55 B9 30 CC 17 FD 65 11 34 29 01 F3 22 95 A6 2C 3A 58 EF 2D 3A 95 8A F4 ED F1 C9 ED E4 EF 1A 
BF 79 FC F0 F5 3D 60 5F 34 1D 2B D5 91 45 CA B3 C1 BC C8 A4 29 8B 0E 35 57 8B CC 19 AA 78 BE D3 
07 08 E9 5B 0A 0B 46 BD E3 01 00 D4 A2 E6 6A 51 F1 9A A8 C2 DA A0 BE 54 A4 2B A8 EF C8 22 13 59 
60 4F 63 9F CB DD C2 9D 40 53 E4 3E B2 88 5B 89 66 5E 64 D2 94 45 07 DE 27 0A 8D E0 85 00 F0 8C 
FA 6A 21 E8 55 49 D3 35 1E 64 91 89 2C B0 A7 B1 95 28 57 22 39 05 43 53 67 4D 16 99 C8 02 7B D4 
F7 16 00 80 1A 50 2D DC D1 D4 59 93 45 26 B2 C0 1E F5 2B 51 82 68 EA AC C9 22 13 59 AC 12 38 24 
97 A8 16 00 60 46 A3 C3 4A 94 3B 9A 3A 6B B2 C8 44 16 D8 43 6F E1 8E A6 36 96 2C 32 91 05 F6 D0 
5B 00 00 CC A8 16 EE 68 EA AC C9 22 13 59 60 0F 2B 51 EE 68 EA AC C9 22 13 59 60 0F BD 05 00 C0 
8C 6A E1 8E A6 CE 9A 2C 32 91 05 F6 B0 12 E5 8E A6 CE 9A 2C 32 91 05 F6 28 EE 2D 38 2A 01 80 DA 
28 AE 16 31 41 87 27 9A 3A 6B B2 C8 44 16 D8 C3 4A 94 3B 9A 3A 6B B2 C8 44 16 D8 A3 BE B7 00 00 
D4 80 6A E1 8E A6 CE 9A 2C 32 91 05 F6 B0 12 E5 8E A6 CE 9A 2C 32 91 05 F6 D0 5B 00 00 CC A8 16 
EE 68 EA AC C9 22 13 59 60 0F 2B 51 EE 68 EA AC C9 22 13 59 60 0F BD 05 00 C0 8C 6A E1 8E A6 CE 
9A 2C 32 91 05 F6 B0 12 E5 8E A6 CE 9A 2C 32 91 05 F6 D0 5B 00 00 CC A8 16 EE 68 EA AC 7B CD 22 
31 3E F3 22 93 A6 2C 3A B0 12 E5 8E A6 CE BA BF 2C B2 9E 07 E6 45 26 4D 59 74 A0 B7 00 00 98 51 
2D DC D1 D4 59 93 45 26 B2 C0 1E 56 A2 DC D1 D4 59 93 45 26 B2 C0 1E 7A 0B 00 80 19 D5 C2 1D 4D 
9D 35 59 64 22 0B EC 61 25 CA 1D 4D 9D 35 59 64 22 0B EC A1 B7 00 00 98 51 2D DC D1 D4 59 93 45 
26 B2 C0 1E 56 A2 DC D1 D4 59 93 45 26 B2 C0 1E 7A 0B 00 80 99 95 6A 91 EF 1F AB 74 94 EA BB 4E 
4D 9D 35 59 64 22 0B EC A9 7F 25 AA B0 54 84 61 18 FF 5D F2 55 C6 FB F8 4E 53 34 B2 C8 44 16 D8 
53 73 6F 91 7F B9 4F 6E 89 8B 41 F9 57 95 DC 07 00 D0 A0 9A AB 85 D5 C3 81 A4 90 54 D9 E8 ED AB 
AC 6E 24 C4 8E B0 DB 38 DD 7E 95 CC C8 E9 49 F1 7D 23 B3 8F F9 BE 91 DF 73 D0 20 CE 72 BB 13 86 
A1 A6 E6 5A 4D 16 35 41 02 F6 31 D8 E4 53 B5 48 76 9D 2A 1B BD 7D 95 CB 0D F9 23 24 32 1B 12 36 
20 84 4F D5 C2 77 9A 3A 6B B2 C8 44 16 D8 63 FD B7 F3 C2 D9 2B 9D A2 B9 27 C0 D3 FF EC 74 1F 65 
34 45 23 8B 4C 64 81 3D F5 5F 13 95 3F 73 58 58 2A 82 D4 E9 AC C2 FB 00 00 E4 A8 B9 B7 E8 F4 72 
9F B9 BD B0 36 A8 2F 15 71 75 D4 11 93 2C 32 91 05 F6 34 F6 3E 51 2D DC 09 34 45 26 8B 4C 64 81 
3D 9C E5 06 00 98 51 2D DC D1 74 8D 07 59 64 22 0B EC E1 1D CB DD D1 D4 59 93 45 26 B2 C0 1E AD 
BD 05 87 24 00 50 27 AD D5 22 26 EB D8 44 53 67 4D 16 99 C8 02 7B 58 89 72 47 53 67 4D 16 99 C8 
02 7B 74 F7 16 00 80 7A 50 2D DC D1 D4 59 93 45 26 B2 C0 1E 56 A2 DC D1 D4 59 93 45 26 B2 C0 1E 
7A 0B 00 80 19 D5 C2 1D 4D 9D 35 59 64 22 0B EC 61 25 CA 1D 4D 9D 35 59 64 22 0B EC A1 B7 00 00 
98 51 2D DC D1 D4 59 93 45 26 B2 C0 1E 56 A2 DC D1 D4 59 93 45 26 B2 C0 1E 7A 0B 00 80 19 D5 C2 
1D 4D 9D 35 59 64 22 0B EC 61 25 CA 1D 4D 9D 35 59 64 22 0B EC A1 B7 00 00 98 51 2D DC D1 D4 59 
93 45 26 B2 C0 1E 56 A2 DC D1 D4 59 93 45 26 B2 C0 1E 7A 0B 00 80 19 D5 C2 1D 4D 9D 35 59 64 22 
0B EC 61 25 CA 1D 4D 9D 35 59 64 22 0B EC A1 B7 00 00 98 51 2D DC D1 D4 59 93 45 26 B2 C0 1E 56 
A2 DC D1 D4 59 93 45 26 B2 C0 1E 7A 0B 00 80 19 D5 C2 1D 4D 9D 35 59 64 22 0B EC 61 25 CA 1D 4D 
9D 35 59 64 22 0B EC A1 B7 00 00 98 51 2D DC D1 D4 59 93 45 26 B2 C0 1E 56 A2 DC D1 D4 59 93 45 
26 B2 C0 1E 7A 0B 00 80 19 D5 C2 1D 4D 9D 35 59 64 22 0B EC 61 25 CA 1D 4D 9D 35 59 64 22 0B EC 
A1 B7 00 00 98 51 2D DC D1 D4 59 93 45 26 B2 C0 1E 56 A2 DC D1 D4 59 93 45 26 B2 C0 1E 7A 0B 00 
80 99 A3 6A 11 CD 32 DE CD CD 78 1A A1 A9 B3 26 8B 4C 64 81 3D 2E 56 A2 A2 28 4A 9A CA F4 76 E1 
DD 4A EE E0 3B 4D B9 C8 22 13 59 60 8F 94 95 A8 A4 48 C4 05 A3 E9 E1 00 00 E6 90 52 2D AA 48 AA 
48 95 8D DE BE CA EA 46 A7 E5 B8 C6 07 D6 73 9C 6E BF 4A 66 E4 F4 A4 F8 BE 91 D9 C7 7C DF C8 EF 
39 68 90 8B 95 A8 74 BB D0 E6 EE 32 CE AE E6 07 40 CD 54 6A 6A 67 D9 C7 60 8F A0 F3 16 46 C9 17 
56 D9 E8 ED AB 5C 6E C8 1F 61 5B 23 47 32 86 C1 06 A5 42 16 9F 56 A2 7C A7 A9 B3 26 8B 4C 64 81 
3D 4D FE 76 5E BA CF 08 67 AF 86 EA A7 F9 10 4E 53 2E B2 C8 44 16 D8 D3 D8 79 8B E4 04 63 BE 60 
38 18 12 00 A0 2B 8E 7A 8B C2 95 EB 7C 6D D0 5D 2A E2 02 A9 23 23 59 64 22 0B EC 69 72 25 AA 6D 
FB 81 A6 BC 64 91 89 2C B0 87 B3 DC 00 00 33 AA 85 3B 9A AE F1 E8 29 8B D0 EC AD 9F 17 A1 34 65 
D1 81 77 2C 77 47 53 67 DD 47 16 71 4F 02 F3 22 93 A6 2C 3A D0 5B 00 00 CC A8 16 EE 68 EA AC C9 
22 13 59 60 0F 2B 51 EE 68 EA AC C9 22 13 59 60 0F BD 05 00 C0 8C 6A E1 8E A6 CE 9A 2C 32 91 05 
F6 B0 12 E5 8E A6 CE 9A 2C 32 91 05 F6 D0 5B 00 00 CC A8 16 EE 68 EA AC C9 22 13 59 60 0F 2B 51 
EE 68 EA AC C9 22 13 59 60 0F BD 05 00 C0 8C 6A E1 8E A6 CE 9A 2C 32 91 05 F6 B0 12 E5 8E A6 CE 
9A 2C 32 91 05 F6 D0 5B 00 00 CC A8 16 EE 68 EA AC C9 22 13 59 60 8F CA 95 28 A1 7B 98 A6 CE 9A 
2C 32 91 05 F6 28 EE 2D D8 D5 00 A0 36 8A AB 85 38 9A 3A 6B B2 C8 44 16 D8 A3 72 25 4A 28 4D 9D 
35 59 64 22 0B EC A1 B7 00 00 98 51 2D DC D1 D4 59 93 45 26 B2 C0 1E 56 A2 DC D1 D4 59 93 45 26 
B2 C0 1E 7A 0B 00 80 19 D5 C2 1D 4D 9D 35 59 64 22 0B EC 61 25 CA 1D 4D 9D 35 59 64 22 0B EC A1 
B7 00 00 98 51 2D DC D1 D4 59 93 45 26 B2 C0 1E 56 A2 DC D1 D4 59 93 45 26 B2 C0 1E 7A 0B 00 80 
19 D5 C2 1D 4D 9D 35 59 64 22 0B EC 61 25 CA 1D 4D 9D 35 59 64 22 0B EC A1 B7 00 00 98 51 2D DC 
C9 75 D6 F1 A1 93 97 BD B6 A6 55 02 E6 45 26 4D 59 74 60 25 CA 1D 4D 9D 35 59 64 22 0B EC A1 B7 
00 00 98 51 2D DC D1 D4 59 93 45 26 B2 C0 1E 56 A2 DC D1 D4 59 93 45 26 B2 C0 1E 7A 0B 00 80 99 
A3 6A 11 CD 32 DE CD CD 78 1A A1 A9 B3 26 8B 4C 64 81 3D 2E 56 A2 A2 28 4A 9A CA F4 76 E1 DD 4A 
EE E0 3B 4D B9 C8 22 13 59 60 8F EB 95 A8 F2 52 11 DF 81 03 0A 00 90 C6 A7 F3 16 49 15 89 A2 28 
08 4A FE E4 EF 2C 62 23 B3 1C 97 2A 8A 1D B3 34 3E E6 F2 38 85 FF 55 3E 2F 42 06 9F DE E8 30 29 
25 41 9A 1F 73 A7 8D 4E FB 98 A7 1B 1C 38 8A 22 EB BC 45 45 9E 76 A8 61 18 E6 5A 2B 43 92 30 0C 
32 AF B3 72 74 68 13 85 8E B6 44 51 10 E3 1E 96 AD 7F 42 14 ED 63 1E D3 94 45 01 47 57 D0 56 39 
6F 51 F9 41 92 9F D2 B2 C7 49 BE 49 F2 ED A4 6E 94 3F 1B 91 80 11 56 DF A8 34 35 32 86 6A D8 A8 
32 2F 42 86 5A 61 23 92 31 8C 9E E7 02 22 F8 B4 12 35 97 7F 7B 92 A6 CE BA 34 8B 67 53 D3 8E 79 
F1 2F A0 A6 79 D1 A1 C9 DF CE 4B F7 19 C9 D5 50 FD 34 1F C2 69 CA 45 16 99 C8 02 7B 5C 54 8B F4 
65 4E E9 25 A9 A0 43 C1 70 30 24 58 C0 61 A0 4C CC 0B EA E1 FA BC 45 FA 96 7C 6D A8 5C 2A BC AC 
28 71 81 D4 51 0E 3B 67 F1 2F 1D F3 22 93 A6 79 D1 A1 C9 95 A8 3E F6 83 C8 C7 BD 5F D3 7E 4F 16 
99 C8 02 7B FC 3D CB 0D 00 70 87 6A E1 8E A6 6B 3C C8 22 13 59 60 0F EF 58 EE 8E A6 CE 9A 2C 32 
91 05 F6 D0 5B 00 00 CC A8 16 EE 68 EA AC C9 22 13 59 60 0F 2B 51 EE 68 EA AC C9 22 13 59 60 0F 
BD 05 6A C1 31 A0 4C CC 0B 6A 43 B5 70 47 53 67 DD 21 8B 97 07 83 CC 8B 4C 9A E6 45 07 56 A2 DC 
D1 D4 59 93 45 26 B2 C0 1E 7A 0B 00 80 19 D5 C2 1D 4D 9D 35 59 64 22 0B EC 61 25 CA 1D 4D 9D 35 
59 64 22 0B EC A1 B7 00 00 98 51 2D DC D1 D4 59 93 45 26 B2 C0 1E 56 A2 DC D1 D4 59 93 45 26 B2 
C0 1E EF 7A 0B 8E 35 00 A0 01 DE 55 8B 98 97 07 1D 9A 3A 6B B2 C8 44 16 D8 A3 7C 25 4A C8 BE 16 
17 37 4D 9D 75 FF 59 9A 9D 9A F4 E8 99 17 99 34 65 D1 41 73 B5 10 52 2A 82 B9 23 E1 27 20 10 30 
35 4A DE 1C 03 70 48 73 B5 88 49 78 15 88 E6 6E 4B 18 52 9F E2 25 82 DE 8E FE 92 67 A3 C1 E7 21 
5F 2D 98 17 69 34 65 D1 41 7F B5 90 20 D9 DF 1B 3F A6 AE 4B FF 3F C3 CD BE 06 64 BE 3B F3 22 90 
A6 2C 3A 78 7A 96 1B 00 E0 14 D5 C2 9D E4 02 0F 05 47 B2 9A AE 57 61 5E 64 D2 94 45 07 56 A2 DC 
89 3B 6B 1D BB BF A6 55 02 E6 45 26 4D 59 74 50 DE 5B B0 BB 01 40 2D 94 F7 16 A2 2E 74 79 AF AD 
56 71 C4 A4 E9 7A 15 E6 45 26 4D 59 74 50 5E 2D 44 61 C5 23 10 19 9F 79 91 49 53 16 1D 94 AF 44 
41 26 5E 06 00 EF D0 5B B8 C3 8A 87 4C CC 8B 4C 9A B2 E8 40 B5 70 87 15 0F 99 98 17 99 34 65 D1 
41 ED 4A 94 8E 1F 7E 00 10 42 79 6F 21 EA E0 84 15 0F 99 98 17 99 34 65 D1 41 79 B5 10 85 15 0F 
99 98 17 99 34 65 D1 41 ED 4A 94 58 F1 4F 80 8E D7 26 4D 98 17 A0 1C D5 C2 1D 4D EF 7B 43 16 99 
C8 02 7B 58 89 72 47 53 67 DD E7 27 5B 88 C2 BC C8 A4 29 8B 0E 3A 7B 0B 99 AF 4A 7D 50 15 48 D1 
6B 80 AA 79 01 CA E9 AC 16 31 69 AF 4A 3D 75 D6 D2 42 BC 47 D3 2A 01 F3 22 93 A6 2C 3A B0 12 E5 
8E A6 CE 9A 2C 32 91 05 F6 68 EE 2D 00 00 75 71 5A 2D 8C 7D A5 EE C6 33 E9 AC 15 5C AC A9 69 95 
80 79 91 49 53 16 1D 04 AD 44 45 51 14 86 61 FC 77 5F 8F 53 D7 80 EA A6 A9 B3 EE 21 0B F3 E2 00 
59 60 8F BB DE A2 FC 30 21 29 12 71 C1 E8 FF DB B1 A3 C9 C4 BC 00 9E 72 54 2D FA EF 18 82 54 BD 
29 DB E8 EA CE 6E 37 12 EF 27 92 31 B0 9E E3 A4 6F 79 3F 54 E7 AF AA 72 1F F7 1B F9 15 8F A8 DA 
97 0B 8C 93 DF C7 84 0C AC E7 38 01 C4 D0 79 96 5B E6 01 6C 18 86 49 C9 94 39 C2 AE A8 59 28 98 
13 C4 F3 97 A7 F4 3E A6 80 A6 2C 0A B8 A8 16 51 1D 8D 45 90 DA 75 4A 36 BA BA 73 B3 1B 1E 0D B5 
AE 38 2D 8C CC 08 6B 4C 81 66 B9 5B 89 EA B4 70 D1 1E 9A 3A EB 6E B3 48 8E DD E6 79 91 4C 53 16 
1D 5C 5C 13 95 1C 23 64 9A 8C F4 3F C3 D9 AB A1 FA 6F 44 C4 1E 90 68 3A 56 EA 2D 8B CC FC CC 8B 
4C 9A B2 E8 D0 D8 79 8B 7C AB 51 4B A9 08 64 1F C6 02 80 A7 9C 56 8B 74 25 08 67 AF 97 ED 74 07 
7D 34 75 D6 64 91 89 2C B0 A7 C9 DF CE D3 5D 1B F2 34 E5 25 8B 4C 64 81 3D 3A AF A0 85 28 1C 1F 
02 0A A8 AA 16 C2 5F 95 32 9D 75 7C E0 24 7C CC 9D F4 B0 4A 20 F6 40 B1 E5 F3 22 96 A6 2C 3A 08 
7A 9F A8 BA 88 7D 55 D2 D4 59 77 9B 45 72 F2 36 CF 8B 64 9A B2 E8 A0 AA B7 80 58 1C 22 02 BE D3 
56 2D 24 1F 8D 68 EA AC C9 22 13 59 60 8F B6 95 A8 48 70 C1 D0 D4 59 93 45 26 B2 C0 1E 6D BD 85 
8F 38 7C 92 89 79 01 D2 A8 16 EE E4 3B 6B 7F 8F 9D AA AF 12 C4 77 92 9C B4 9D F3 22 9F A6 2C 3A 
68 5B 89 92 4C 53 67 4D 16 99 C8 02 7B E8 2D 00 00 66 7A AA 85 8F 2B 1E FE 22 8B 4C 64 81 3D AC 
44 B9 53 D2 59 4B BE 94 AB 50 C5 55 02 2F 7E D6 5B 38 2F 5E D0 94 45 07 3D BD 85 A7 DA F0 03 E1 
63 46 1F C7 0C 58 45 B5 70 47 53 67 4D 16 99 C8 02 7B 58 89 72 47 53 67 4D 16 99 C8 02 7B 94 F4 
16 1C 81 00 80 55 4A AA 45 4C F8 A1 48 79 67 ED 57 C1 D3 B4 4A C0 BC C8 A4 29 8B 0E AC 44 B9 D3 
A9 B3 0E 7D 7B 49 0A BA 59 25 10 5E C2 83 B6 CE 8B 7C 9A B2 E8 A0 AA B7 80 40 DE BD E0 02 28 44 
B5 70 47 53 67 4D 16 99 C8 02 7B 58 89 72 47 53 67 4D 16 99 C8 02 7B 34 F4 16 1C 7E 00 80 6D 1A 
AA 45 4C FE 71 48 49 67 1D 0F DE A3 B2 A7 69 95 80 79 91 49 53 16 1D 58 89 72 47 53 67 5D 25 8B 
FC F7 79 8C B5 6D 5E 7C A1 29 8B 0E 7A 7A 0B 00 80 3D 54 0B 77 34 75 D6 64 91 89 2C B0 87 95 28 
77 34 75 D6 64 91 89 2C B0 87 DE 42 16 0E A5 64 62 5E 00 EF AB 85 2F A7 52 03 53 67 ED 45 84 84 
71 95 80 79 69 84 A6 D5 1B 4D 59 74 60 25 CA 1D 4D 9D 35 59 64 22 0B EC F1 BE B7 00 00 38 40 B5 
70 47 53 67 4D 16 99 C8 02 7B 58 89 72 47 53 67 4D 16 99 C8 02 7B E8 2D 50 3F 0E 08 01 7D FC AE 
16 1E 5D 78 13 54 E8 AC 3D 7A 57 A2 2A AB 04 CC 8B 7B 9A 56 6F 34 65 D1 C1 AF 95 28 BF 77 1D 4D 
9D 35 59 64 22 0B EC F1 B1 B7 60 1F 02 00 D7 7C AC 16 BE D2 D4 59 93 45 26 B2 C0 1E BF 56 A2 FC 
A6 A9 B3 26 8B 4C 64 81 3D F4 16 A8 19 47 83 80 4A 8E AA 45 34 CB 78 B7 2E 1E B3 BF 21 B9 57 FD 
3A 22 F9 D1 2A 5E 47 E4 85 56 CD 8B 47 34 65 D1 C1 C5 4A 54 14 45 49 53 99 DE 2E BC 5B C9 1D 0A 
79 F4 AA A4 A9 B3 26 8B 4C 64 81 3D 52 56 A2 92 22 11 17 8C A6 87 03 00 98 C3 45 B5 A8 FD 18 21 
5F 4E 92 5B 24 6F 64 96 E3 4A 36 BC C8 15 6F 97 94 F6 C6 47 58 71 A3 E7 49 11 98 34 B3 8F 09 1C 
61 B7 71 02 88 E1 B4 B7 88 BA 5C 65 52 26 0C 43 4D F1 33 59 FC FD B9 56 36 29 B9 38 1E A7 D3 34 
35 0A B8 AB 16 35 96 8A 30 0C A3 DC 2D 9A 36 FC CC 15 04 73 CF 03 37 3D 1E EB 93 22 3F 69 10 04 
F1 9C 08 19 4F 9F CF 3C 9A E5 EE 9A 28 1B 73 EF D7 DE A4 A9 B3 2E CF C2 BC 34 85 2C B0 C7 F5 35 
51 9D 6E 0F 67 AF 86 52 BC 5A A5 29 17 59 64 22 0B EC 71 F4 BB DC E9 63 84 78 27 48 4E 30 E6 0B 
86 9B 21 01 00 AA 73 51 2D 0A 0B 40 61 6D D0 5D 2A E2 02 A9 23 23 59 64 22 0B EC 69 F2 7D A2 7A 
DE 0F 3C 5D CB D4 B4 DF 93 45 26 B2 C0 1E 29 BF 9D D7 03 AD BB 52 9C CB D3 8A A8 18 F3 82 96 F3 
B8 5A 78 47 D3 35 1E 64 91 89 2C B0 87 77 2C 77 47 53 67 5D 7C 91 9B FB 71 D4 A1 0D F3 E2 63 42 
4D F3 A2 03 BD 05 6A C6 8F B8 40 9E 16 72 88 E2 5F B5 F0 77 BF D7 D4 59 93 45 26 B2 C0 1E 5F 57 
A2 7C 3C 80 AD DE 59 87 41 10 C9 5E 40 D0 B4 4A C0 BC C8 A4 29 8B 0E FE F5 16 00 00 F7 A8 16 EE 
68 EA AC F3 59 22 B9 07 DC 06 CC 8B 4C 9A E6 45 07 2F 57 A2 3C DD FD 35 75 D6 9D B2 F8 98 90 79 
91 49 D3 BC E8 E0 65 6F C1 F1 06 00 38 E6 65 B5 F0 94 A6 CE 3A 93 C5 DF E5 8E 80 79 91 4A D3 BC 
E8 E0 E5 4A 94 A7 34 75 D6 C5 EF 14 E9 7E 1C 75 60 5E 64 D2 34 2F 3A 78 D6 5B 78 7D AC D4 15 DE 
95 48 26 E6 05 AD E5 59 B5 88 79 5A 31 34 75 D6 64 91 89 2C B0 87 95 28 77 34 75 D6 64 91 89 2C 
B0 C7 CB DE 02 00 E0 98 4F D5 C2 F7 93 16 BD 75 D6 32 53 E7 B3 84 DE 2E E6 33 2F 32 B1 12 25 8D 
7F 2B 51 12 7F 46 AB E9 B6 B3 0E 05 9F 4D CD 67 89 02 5F 17 0E 98 17 99 58 89 92 C6 A7 DE 02 00 
D0 14 AA 85 3B FD 75 D6 B2 0E 67 D3 59 64 8D AC 7B CC 8B 4C AC 44 49 E3 DF 4A 94 BF 34 75 D6 F9 
2C A1 E8 77 F2 2E C3 BC C8 A4 69 5E 74 F0 AC B7 F0 F7 94 5D 3F 64 9E 50 05 F3 82 56 F1 AC 5A 78 
FD F3 D9 43 67 2D 36 6D 92 45 41 F5 66 5E 64 62 25 4A 1A 56 A2 DC D1 D4 59 67 B2 78 DD F3 31 2F 
32 69 9A 17 1D 3C EB 2D 20 10 3F D3 32 31 2F A8 97 37 D5 C2 E3 63 A4 59 9A 3A 6B AE BD 91 89 79 
81 3D 9E AD 44 F9 7B 81 47 A0 AB B3 26 8B 4C 64 81 3D DE F4 16 81 E7 8B B0 00 E0 35 9F AA 85 D7 
17 44 05 BA 3A 6B B2 C8 44 16 D8 E3 D9 4A 94 D7 34 75 D6 64 91 89 2C B0 C7 A7 DE A2 9D 66 3F AC 
4D E2 4F 4E 9B 0F FC 98 17 B4 0D BD 85 3B 71 5B AD E3 88 E9 BD 25 82 30 0C FC BD EA 60 16 F3 22 
93 A6 79 D1 81 6A E1 8E A6 FD 3E CE A2 E3 18 96 79 91 49 D3 BC E8 E0 C7 4A 94 8E BD 1F 00 FC E5 
53 6F E1 FB 15 B4 9A 3A EB 64 C5 43 41 18 E6 45 26 4D F3 A2 83 4F D5 C2 77 9A F6 FB 64 C5 C3 E3 
DF 96 9C C5 BC C8 A4 69 5E 74 F0 63 25 0A 00 D0 2C AA 85 3B 7D FF B6 91 A0 85 38 4D BF 39 C5 BC 
C8 A4 29 8B 0E 3E AC 44 69 69 48 7B EE AC C3 F7 D6 16 04 3D 11 5C 7B 13 30 2F 96 B1 12 25 8D 37 
BD 05 3B 0E 00 34 C8 5D B5 A8 D2 54 EA 6E 3C 35 75 D6 64 91 89 2C B0 C7 D1 4A 54 14 45 61 18 C6 
7F 77 77 1F 45 DD A8 A6 CE 3A 0C 43 35 3F C7 CC 8B 4C 9A E6 45 07 17 BD 45 52 00 E2 62 D0 C3 7D 
D8 6B 66 89 7B 29 60 6A 82 20 60 5E D0 06 3E 9C E5 0E 82 F4 4F 63 4B 9B D3 F7 CE 5E 0A 7C 11 68 
F7 D4 30 2F 96 D1 61 C8 21 FD 2C 77 38 F7 57 B8 7D DE ED FB D3 DE E4 B2 31 2F 36 51 2A 44 F1 A2 
B7 78 7F 8F 61 E7 91 87 D9 91 89 79 41 CD A4 F7 16 00 00 09 5C 54 8B E4 C4 75 E6 7A A7 F4 72 6A 
A7 FB 00 00 24 70 D4 5B E4 2F 8D 4D 6A 43 C9 7D 00 00 42 B8 5B 89 CA 94 81 E4 7A D9 92 FB 00 00 
84 68 F2 BC 05 B5 01 00 7C C1 59 6E 00 80 19 D5 02 00 60 46 B5 00 00 98 09 AA 16 BE BF 49 6D 7E 
6C 9E 26 8A 66 65 6E AC F2 85 D6 06 D5 8B 68 AE F4 ED 55 BE D6 E6 D0 7A C7 BC D8 1C 1A CA 48 A9 
16 C9 1B D0 F6 79 9F A6 14 96 0A 1F 13 C5 43 8A 25 03 F3 34 4B 98 92 DC E8 69 96 42 FE 66 C9 4F 
8D BF 59 DA 43 44 B5 E8 FF 4D 6A 9B 95 FF 35 11 DF 13 A5 29 C8 92 0C CF F7 2C 99 23 71 AF B3 A4 
69 CA A2 98 88 6A E1 3B 4D 97 02 6B CA 12 53 F3 2B 9F 6A 82 C4 F8 B0 23 EF 50 2D 50 4C C7 6B 53 
FE 2D 03 20 41 B2 E0 C9 D4 78 C4 8B F7 A0 85 6B 3A 4A 45 90 6A 95 7C 4F E4 FB F8 D3 D4 04 69 1B 
7A 0B 64 69 7A 61 D2 24 59 BA E1 78 1C 8D 10 51 2D F4 BD 49 AD BF 89 F2 83 F1 3A 4B E6 16 7F B3 
A4 AF 20 CA 9C EC F5 2E 8B A6 79 69 15 29 2B 51 25 6F 52 9B DC 28 F6 4D 6A D3 57 9A 06 73 7F 98 
7D 4C 94 F9 11 0D BC CD 92 5E 16 2F 19 A7 17 59 0A 79 9A 45 FD BC 68 25 A5 5A 04 45 EF 47 5B 78 
9C EB 76 50 95 74 1A 95 8F 89 34 65 09 3A 0C C9 D3 2C B1 F2 71 FA 92 45 DF BC B4 81 88 95 A8 4E 
F4 ED 19 9A 12 91 45 26 B2 C0 12 D1 D5 02 00 20 04 D5 02 00 60 46 B5 00 00 98 51 2D 00 00 66 54 
0B 00 80 19 D5 02 00 60 46 B5 00 00 98 51 2D 00 00 66 54 0B 00 80 19 D5 21 1A 23 7B 00 00 01 50 
49 44 41 54 02 00 60 46 B5 00 00 98 51 2D F4 2B FC 38 04 3E 23 01 40 57 A8 16 2D C5 FB B5 01 E8 
0A D5 42 B9 E4 43 02 D2 CD 44 A7 7F E6 6F 6C 79 0B 92 79 42 92 0D 9E 19 B4 10 D5 42 B9 E4 E3 8C 
D2 CD 44 BE B1 48 3E 4B 20 FD 11 34 31 5E 16 D3 78 66 D0 5A 82 3E 0D 09 A2 F0 52 58 28 29 12 99 
02 0C A8 47 B5 40 31 5E 0A 3B 89 9F 19 3E F2 13 6D C3 4A 54 8B F4 D6 2E D0 64 04 B9 8F 5E 0F E6 
7E B8 34 D0 06 F4 16 FA A5 17 4F E2 5B D2 27 27 D2 77 CB 7F 49 D0 EE 26 23 FD D4 65 36 82 76 3F 
33 68 21 AA 45 2B 64 5E D7 4A FE 99 6C F3 52 18 CB 3F 21 3C 33 68 27 56 A2 00 00 66 54 0B 00 80 
19 D5 02 00 60 46 B5 00 00 98 51 2D 00 00 66 54 0B 00 80 19 D5 02 00 60 46 B5 00 00 98 51 2D 00 
00 66 54 0B 00 80 19 D5 02 00 60 46 B5 00 00 98 51 2D 00 00 66 54 0B 00 80 19 D5 02 00 60 46 B5 
00 00 98 99 3F 0D 89 8F 93 04 00 D0 5B 00 00 CC A8 16 00 00 33 AA 05 00 C0 8C 6A 01 00 30 A3 5A 
00 00 CC 0A AE 89 0A C3 D0 FD 38 00 00 92 65 AB 05 D7 CB 02 00 F2 58 89 02 00 98 51 2D 00 00 66 
F3 83 20 18 1D 1D 6D 7A 18 00 00 00 00 3C F7 FF CB EF C1 AD 81 48 BB AB 00 00 00 00 49 45 4E 44 
AE 42 60 82 
EndData
$EndBitmap
$Comp
L SwitchNO S1
U 1 1 5B14E779
P 3850 2500
F 0 "S1" H 4200 2650 50  0000 L CNN
F 1 "SwitchNO" H 4200 2550 50  0000 L CNN
F 2 "switchSpice" H 5120 2470 50  0001 C CNN
F 3 "" H 3850 2500 50  0001 C CNN
	1    3850 2500
	1    0    0    -1  
$EndComp
$Comp
L SwitchNC S2
U 1 1 5B14E7D4
P 3850 3550
F 0 "S2" H 4200 3700 50  0000 L CNN
F 1 "SwitchNC" H 4200 3600 50  0000 L CNN
F 2 "switchSpice" H 5120 3520 50  0001 C CNN
F 3 "" H 3850 3550 50  0001 C CNN
	1    3850 3550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
