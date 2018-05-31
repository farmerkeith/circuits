EESchema Schematic File Version 2
LIBS:NGspice
LIBS:switchNormal-rescue
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
LIBS:switchNormal-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Normal Switch for ngSpice models"
Date "2018-05-29"
Rev ""
Comp "farmerkeith"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 5B0C8932
P 3650 2800
F 0 "#PWR01" H 3650 2550 50  0001 C CNN
F 1 "GND" H 3650 2650 50  0000 C CNN
F 2 "" H 3650 2800 50  0001 C CNN
F 3 "" H 3650 2800 50  0001 C CNN
	1    3650 2800
	1    0    0    -1  
$EndComp
$Comp
L VSOURCE V2
U 1 1 5B0C8933
P 2700 2100
F 0 "V2" H 2700 2000 50  0000 C CNN
F 1 "pulse 0V 5V 2ns 3us 3us 7us 20us  " H 3300 2250 50  0000 C CNN
F 2 "" H 2700 2100 50  0001 C CNN
F 3 "" H 2700 2100 50  0001 C CNN
	1    2700 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B0C8934
P 2700 2800
F 0 "#PWR02" H 2700 2550 50  0001 C CNN
F 1 "GND" H 2700 2650 50  0000 C CNN
F 2 "" H 2700 2800 50  0001 C CNN
F 3 "" H 2700 2800 50  0001 C CNN
	1    2700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1400 2700 1400
Text GLabel 4000 2950 0    60   Input ~ 0
OUT
Text GLabel 2700 1400 0    60   Input ~ 0
IN
Wire Wire Line
	4000 3300 4000 3350
$Comp
L GND #PWR03
U 1 1 5B0C8935
P 4000 3350
F 0 "#PWR03" H 4000 3100 50  0001 C CNN
F 1 "GND" H 4000 3200 50  0000 C CNN
F 2 "" H 4000 3350 50  0001 C CNN
F 3 "" H 4000 3350 50  0001 C CNN
	1    4000 3350
	1    0    0    -1  
$EndComp
Text Notes 4650 1900 0    60   ~ 0
+PSPICE\n*.model Switch_Normal SW Roff=1e6 Ron=1 Vt=2.5 Vh=1 // Voff=3.5 Von=1.5\n*.model Switch_Inverted  SW Ron=1e6 Roff=1 Vt=2.5 Vh=1 // Inverted Roff and Ron\n\n.tran 5us 41us\n.control \nrun\nplot in out out2+0.1 title 'Switching action'\n
$Comp
L R-RESCUE-switchNormal R1
U 1 1 5B0C8937
P 4000 3150
F 0 "R1" V 3900 3150 50  0000 C CNN
F 1 "5K" V 4000 3150 50  0000 C CNN
F 2 "" H 4000 3150 50  0001 C CNN
F 3 "" H 4000 3150 50  0001 C CNN
	1    4000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1400 3650 2200
$Comp
L VSOURCE V1
U 1 1 5B0C893A
P 1750 1850
F 0 "V1" H 1750 1750 50  0000 C CNN
F 1 "12V " H 1750 2000 50  0000 C CNN
F 2 "" H 1750 1850 50  0001 C CNN
F 3 "" H 1750 1850 50  0001 C CNN
	1    1750 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5B0C893B
P 1750 2550
F 0 "#PWR04" H 1750 2300 50  0001 C CNN
F 1 "GND" H 1750 2400 50  0000 C CNN
F 2 "" H 1750 2550 50  0001 C CNN
F 3 "" H 1750 2550 50  0001 C CNN
	1    1750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2800 4000 3000
Wire Wire Line
	4000 1150 4000 2200
Wire Wire Line
	4000 2050 5600 2050
Wire Wire Line
	4000 1150 1750 1150
$Comp
L GND #PWR05
U 1 1 5B0D0161
P 5250 2800
F 0 "#PWR05" H 5250 2550 50  0001 C CNN
F 1 "GND" H 5250 2650 50  0000 C CNN
F 2 "" H 5250 2800 50  0001 C CNN
F 3 "" H 5250 2800 50  0001 C CNN
	1    5250 2800
	1    0    0    -1  
$EndComp
Text GLabel 5600 2900 0    60   Input ~ 0
OUT2
Wire Wire Line
	5600 3250 5600 3300
$Comp
L GND #PWR06
U 1 1 5B0D0169
P 5600 3300
F 0 "#PWR06" H 5600 3050 50  0001 C CNN
F 1 "GND" H 5600 3150 50  0000 C CNN
F 2 "" H 5600 3300 50  0001 C CNN
F 3 "" H 5600 3300 50  0001 C CNN
	1    5600 3300
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-switchNormal R2
U 1 1 5B0D016F
P 5600 3100
F 0 "R2" V 5500 3100 50  0000 C CNN
F 1 "5K" V 5600 3100 50  0000 C CNN
F 2 "" H 5600 3100 50  0001 C CNN
F 3 "" H 5600 3100 50  0001 C CNN
	1    5600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2800 5600 2950
Wire Wire Line
	5250 2100 5250 2200
Connection ~ 3650 2100
Wire Wire Line
	5600 2050 5600 2200
Connection ~ 4000 2050
Wire Wire Line
	5250 2100 3650 2100
Text Notes 1200 850  0    60   ~ 0
ngspice switches both normal and inverted\nNormal switch is ON with Vc>Vt+Vh transition and OFF with Vc<Vt-Vh transition\nInverted switch is OFF with Vc>Vt+Vh transition and ON with Vc<Vt-Vh transition\n
$Comp
L SwitchNormal S1
U 1 1 5B0E5BFC
P 3850 2500
F 0 "S1" H 4200 2650 50  0000 L CNN
F 1 "SwitchNormal" H 4200 2550 50  0000 L CNN
F 2 "switchSpice" H 5120 2470 50  0001 C CNN
F 3 "" H 3850 2500 50  0001 C CNN
	1    3850 2500
	1    0    0    -1  
$EndComp
$Comp
L SwitchInverted S2
U 1 1 5B0E5CAD
P 5450 2500
F 0 "S2" H 5800 2650 50  0000 L CNN
F 1 "SwitchInverted" H 5800 2550 50  0000 L CNN
F 2 "switchSpice" H 6720 2470 50  0001 C CNN
F 3 "" H 5450 2500 50  0001 C CNN
	1    5450 2500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
