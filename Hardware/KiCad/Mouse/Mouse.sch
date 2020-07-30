EESchema Schematic File Version 4
LIBS:Mouse-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Mouse"
Date "4/15/18"
Rev "01"
Comp "Solutions Design & Prototyping"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Mouse-rescue:ATMEGA32U4-MU U3
U 1 1 5ACE95E0
P 4150 5400
F 0 "U3" H 3200 7100 50  0000 C CNN
F 1 "ATMEGA32U4-MU" H 4850 3900 50  0000 C CNN
F 2 "Housings_QFP:LQFP-44_10x10mm_Pitch0.8mm" H 4150 5400 50  0001 C CIN
F 3 "" H 5250 6500 50  0001 C CNN
	1    4150 5400
	1    0    0    -1  
$EndComp
$Comp
L Mouse-rescue:ADNS2610PTH U1
U 1 1 5ACEB744
P 8550 1650
F 0 "U1" H 8850 1870 50  0000 L BNN
F 1 "ADNS2610PTH" H 7950 1870 50  0000 L BNN
F 2 "Solutions:ADNS2610" H 8580 1800 20  0001 C CNN
F 3 "" H 8550 1650 60  0001 C CNN
	1    8550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5ADA041F
P 2700 1000
F 0 "#PWR01" H 2700 850 50  0001 C CNN
F 1 "+5V" H 2700 1140 50  0000 C CNN
F 2 "" H 2700 1000 50  0001 C CNN
F 3 "" H 2700 1000 50  0001 C CNN
	1    2700 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5ADA043F
P 1850 2300
F 0 "#PWR02" H 1850 2050 50  0001 C CNN
F 1 "GND" H 1850 2150 50  0000 C CNN
F 2 "" H 1850 2300 50  0001 C CNN
F 3 "" H 1850 2300 50  0001 C CNN
	1    1850 2300
	1    0    0    -1  
$EndComp
Text Label 3100 1300 0    60   ~ 0
D+
Text Label 3100 1400 0    60   ~ 0
D-
$Comp
L Device:Fuse_Small F1
U 1 1 5ADA0558
P 2300 1100
F 0 "F1" H 2300 1040 50  0000 C CNN
F 1 "MF-MSMF050-2" H 2300 1160 50  0000 C CNN
F 2 "Capacitors_SMD:C_1812" H 2300 1100 50  0001 C CNN
F 3 "" H 2300 1100 50  0001 C CNN
	1    2300 1100
	1    0    0    -1  
$EndComp
Text Label 2000 1500 0    60   ~ 0
USBID
$Comp
L power:+5V #PWR03
U 1 1 5ADA06F3
P 3800 3150
F 0 "#PWR03" H 3800 3000 50  0001 C CNN
F 1 "+5V" H 3800 3290 50  0000 C CNN
F 2 "" H 3800 3150 50  0001 C CNN
F 3 "" H 3800 3150 50  0001 C CNN
	1    3800 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small L2
U 1 1 5ADA07EF
P 4200 3200
F 0 "L2" V 4300 3250 50  0000 L CNN
F 1 "MH2029-300Y" V 4050 3000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" V 4130 3200 50  0001 C CNN
F 3 "" H 4200 3200 50  0001 C CNN
	1    4200 3200
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5ADA0BF6
P 1300 4700
F 0 "C9" H 1310 4770 50  0000 L CNN
F 1 "18pF" H 1310 4620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1300 4700 50  0001 C CNN
F 3 "" H 1300 4700 50  0001 C CNN
	1    1300 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5ADA0C3F
P 1600 4700
F 0 "C10" H 1610 4770 50  0000 L CNN
F 1 "18pF" H 1610 4620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1600 4700 50  0001 C CNN
F 3 "" H 1600 4700 50  0001 C CNN
	1    1600 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5ADA0CB9
P 1600 5050
F 0 "#PWR04" H 1600 4800 50  0001 C CNN
F 1 "GND" H 1600 4900 50  0000 C CNN
F 2 "" H 1600 5050 50  0001 C CNN
F 3 "" H 1600 5050 50  0001 C CNN
	1    1600 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_GND24 Y2
U 1 1 5ADA0DE6
P 2100 4350
F 0 "Y2" V 2250 4400 50  0000 L CNN
F 1 "LFXTAL057485Cutt" V 2100 4650 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_3225-4pin_3.2x2.5mm" H 2100 4350 50  0001 C CNN
F 3 "" H 2100 4350 50  0001 C CNN
	1    2100 4350
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D2
U 1 1 5ADA1212
P 2350 1850
F 0 "D2" V 2400 1950 50  0000 C CNN
F 1 "CG0603MLC-05E" H 2350 1750 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 2350 1850 50  0001 C CNN
F 3 "" H 2350 1850 50  0001 C CNN
	1    2350 1850
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D3
U 1 1 5ADA124A
P 2700 1850
F 0 "D3" V 2750 1950 50  0000 C CNN
F 1 "CG0603MLC-05E" H 2700 1750 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 2700 1850 50  0001 C CNN
F 3 "" H 2700 1850 50  0001 C CNN
	1    2700 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5ADA13FF
P 2900 1300
F 0 "R1" V 2800 1150 50  0000 L CNN
F 1 "22R" V 2800 1300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2900 1300 50  0001 C CNN
F 3 "" H 2900 1300 50  0001 C CNN
	1    2900 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5ADA1523
P 2900 1400
F 0 "R3" V 3000 1250 50  0000 L CNN
F 1 "22R" V 3000 1400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2900 1400 50  0001 C CNN
F 3 "" H 2900 1400 50  0001 C CNN
	1    2900 1400
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small L1
U 1 1 5ADA1A25
P 1600 2000
F 0 "L1" H 1450 2100 50  0000 L CNN
F 1 "MH2029-300Y" H 1000 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" V 1530 2000 50  0001 C CNN
F 3 "" H 1600 2000 50  0001 C CNN
	1    1600 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5ADA1D8D
P 3550 1350
F 0 "C1" H 3560 1420 50  0000 L CNN
F 1 "10uF" H 3560 1270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3550 1350 50  0001 C CNN
F 3 "" H 3550 1350 50  0001 C CNN
	1    3550 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5ADA1E7F
P 3850 1350
F 0 "C2" H 3860 1420 50  0000 L CNN
F 1 "0.1uF" H 3860 1270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3850 1350 50  0001 C CNN
F 3 "" H 3850 1350 50  0001 C CNN
	1    3850 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5ADA222A
P 2800 3550
F 0 "R6" H 2650 3550 50  0000 L CNN
F 1 "10K" H 2600 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2800 3550 50  0001 C CNN
F 3 "" H 2800 3550 50  0001 C CNN
	1    2800 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5ADA263F
P 2500 3350
F 0 "C7" H 2510 3420 50  0000 L CNN
F 1 "0.1uF" H 2510 3270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2500 3350 50  0001 C CNN
F 3 "" H 2500 3350 50  0001 C CNN
	1    2500 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5ADA269C
P 2250 3350
F 0 "C6" H 2260 3420 50  0000 L CNN
F 1 "0.1uF" H 2260 3270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2250 3350 50  0001 C CNN
F 3 "" H 2250 3350 50  0001 C CNN
	1    2250 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5ADA2729
P 2400 3650
F 0 "#PWR05" H 2400 3400 50  0001 C CNN
F 1 "GND" H 2400 3500 50  0000 C CNN
F 2 "" H 2400 3650 50  0001 C CNN
F 3 "" H 2400 3650 50  0001 C CNN
	1    2400 3650
	1    0    0    -1  
$EndComp
$Comp
L Mouse-rescue:TACT_SWITCH SW1
U 1 1 5ADA2A55
P 1750 3500
F 0 "SW1" H 1750 3450 50  0000 C CNN
F 1 "PTS540 JM035 SMTR LFS" H 1700 3750 50  0000 C CNN
F 2 "Solutions:PTS540_Switch" H 1750 3500 50  0001 C CNN
F 3 "" H 1750 3500 50  0000 C CNN
	1    1750 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5ADA30C6
P 4650 3350
F 0 "C8" H 4660 3420 50  0000 L CNN
F 1 "1uF" H 4660 3270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4650 3350 50  0001 C CNN
F 3 "" H 4650 3350 50  0001 C CNN
	1    4650 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5ADA32C7
P 4650 3550
F 0 "#PWR06" H 4650 3300 50  0001 C CNN
F 1 "GND" H 4650 3400 50  0000 C CNN
F 2 "" H 4650 3550 50  0001 C CNN
F 3 "" H 4650 3550 50  0001 C CNN
	1    4650 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5ADA377A
P 2750 5800
F 0 "C11" H 2760 5870 50  0000 L CNN
F 1 "1uF" H 2760 5720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2750 5800 50  0001 C CNN
F 3 "" H 2750 5800 50  0001 C CNN
	1    2750 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5ADA3A62
P 4000 7400
F 0 "#PWR07" H 4000 7150 50  0001 C CNN
F 1 "GND" H 4000 7250 50  0000 C CNN
F 2 "" H 4000 7400 50  0001 C CNN
F 3 "" H 4000 7400 50  0001 C CNN
	1    4000 7400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5ADA3EA4
P 2850 4950
F 0 "#PWR08" H 2850 4800 50  0001 C CNN
F 1 "+5V" H 2850 5090 50  0000 C CNN
F 2 "" H 2850 4950 50  0001 C CNN
F 3 "" H 2850 4950 50  0001 C CNN
	1    2850 4950
	1    0    0    -1  
$EndComp
Text Label 3000 5200 2    60   ~ 0
D+
Text Label 3000 5300 2    60   ~ 0
D-
$Comp
L Device:C_Small C12
U 1 1 5ADA41DE
P 2900 6500
F 0 "C12" H 2910 6570 50  0000 L CNN
F 1 "0.1uF" H 2910 6420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2900 6500 50  0001 C CNN
F 3 "" H 2900 6500 50  0001 C CNN
	1    2900 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR09
U 1 1 5ADA42C4
P 2900 6750
F 0 "#PWR09" H 2900 6500 50  0001 C CNN
F 1 "GNDA" H 2900 6600 50  0000 C CNN
F 2 "" H 2900 6750 50  0001 C CNN
F 3 "" H 2900 6750 50  0001 C CNN
	1    2900 6750
	1    0    0    -1  
$EndComp
$Comp
L Mouse-rescue:CONN_02X03 J2
U 1 1 5ADA514C
P 1850 6250
F 0 "J2" H 1850 6450 50  0000 C CNN
F 1 "CONN_02X03" H 1850 6050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm_SMD" H 1850 5050 50  0001 C CNN
F 3 "" H 1850 5050 50  0001 C CNN
	1    1850 6250
	1    0    0    -1  
$EndComp
Text Notes 1750 6000 0    60   ~ 0
ICSP
Text Label 1500 3850 0    60   ~ 0
RESET
Text Label 1600 6350 2    60   ~ 0
RESET
Text Label 1600 6250 2    60   ~ 0
SCLK
Text Label 1600 6150 2    60   ~ 0
MISO
Text Label 2100 6250 0    60   ~ 0
MOSI
$Comp
L power:+5V #PWR010
U 1 1 5ADA5798
P 2200 6050
F 0 "#PWR010" H 2200 5900 50  0001 C CNN
F 1 "+5V" H 2200 6190 50  0000 C CNN
F 2 "" H 2200 6050 50  0001 C CNN
F 3 "" H 2200 6050 50  0001 C CNN
	1    2200 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5ADA59DE
P 2200 6450
F 0 "#PWR011" H 2200 6200 50  0001 C CNN
F 1 "GND" H 2200 6300 50  0000 C CNN
F 2 "" H 2200 6450 50  0001 C CNN
F 3 "" H 2200 6450 50  0001 C CNN
	1    2200 6450
	1    0    0    -1  
$EndComp
Text Label 5250 3850 0    60   ~ 0
RXLED
Text Label 5250 3950 0    60   ~ 0
SCLK
Text Label 5250 4050 0    60   ~ 0
MOSI
Text Label 5250 4150 0    60   ~ 0
MISO
Text Label 5250 4250 0    60   ~ 0
ADNS_SDIO
Text Label 5250 4350 0    60   ~ 0
ADNS_SCK
Text Label 5250 4450 0    60   ~ 0
D10
Text Label 5250 4550 0    60   ~ 0
HID_SELECT
Text Label 5250 4750 0    60   ~ 0
RIGHT
Text Label 5250 4850 0    60   ~ 0
D13
Text Label 5250 5050 0    60   ~ 0
WHEEL_B
Text Label 5250 5150 0    60   ~ 0
WHEEL_A
Text Label 5250 5250 0    60   ~ 0
D0/RX
Text Label 5250 5350 0    60   ~ 0
D1/TX
Text Label 5250 5450 0    60   ~ 0
D4
Text Label 5250 5550 0    60   ~ 0
TXLED
Text Label 5250 5650 0    60   ~ 0
D12
Text Label 5250 5750 0    60   ~ 0
LEFT
Text Label 5700 5950 0    60   ~ 0
HWB
Text Label 5250 6050 0    60   ~ 0
D7
Text Label 5250 6750 0    60   ~ 0
A0
Text Label 5250 6650 0    60   ~ 0
A1
Text Label 5250 6550 0    60   ~ 0
A2
Text Label 5250 6450 0    60   ~ 0
A3
Text Label 5250 6350 0    60   ~ 0
A4
Text Label 5250 6250 0    60   ~ 0
A5
$Comp
L power:GND #PWR012
U 1 1 5ADA6CEB
P 5700 6450
F 0 "#PWR012" H 5700 6200 50  0001 C CNN
F 1 "GND" H 5700 6300 50  0000 C CNN
F 2 "" H 5700 6450 50  0001 C CNN
F 3 "" H 5700 6450 50  0001 C CNN
	1    5700 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5ADA7078
P 7700 950
F 0 "#PWR013" H 7700 800 50  0001 C CNN
F 1 "+5V" H 7700 1090 50  0000 C CNN
F 2 "" H 7700 950 50  0001 C CNN
F 3 "" H 7700 950 50  0001 C CNN
	1    7700 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5ADA70CE
P 7700 2200
F 0 "#PWR014" H 7700 1950 50  0001 C CNN
F 1 "GND" H 7700 2050 50  0000 C CNN
F 2 "" H 7700 2200 50  0001 C CNN
F 3 "" H 7700 2200 50  0001 C CNN
	1    7700 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y1
U 1 1 5ADA72FB
P 7500 1700
F 0 "Y1" V 7500 1850 50  0000 C CNN
F 1 "24MHz" H 7500 1600 50  0000 C CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7500 1700 50  0001 C CNN
F 3 "" H 7500 1700 50  0001 C CNN
	1    7500 1700
	0    1    1    0   
$EndComp
Text Label 9150 1550 0    60   ~ 0
ADNS_SCK
Text Label 9150 1650 0    60   ~ 0
ADNS_SDIO
$Comp
L Device:C_Small C5
U 1 1 5ADA7A89
P 8700 2100
F 0 "C5" V 8800 2200 50  0000 L CNN
F 1 "2.2uF" V 8800 1850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8700 2100 50  0001 C CNN
F 3 "" H 8700 2100 50  0001 C CNN
	1    8700 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5ADA7FFC
P 9500 1750
F 0 "R5" V 9400 1600 50  0000 L CNN
F 1 "1K" V 9400 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9500 1750 50  0001 C CNN
F 3 "" H 9500 1750 50  0001 C CNN
	1    9500 1750
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5ADA8354
P 9700 1300
F 0 "R4" V 9800 1150 50  0000 L CNN
F 1 "100K" V 9800 1300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9700 1300 50  0001 C CNN
F 3 "" H 9700 1300 50  0001 C CNN
	1    9700 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_PNP_BEC Q1
U 1 1 5ADA8684
P 10150 1750
F 0 "Q1" H 10350 1800 50  0000 L CNN
F 1 "BC857ALT1G" H 10350 1700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10350 1850 50  0001 C CNN
F 3 "" H 10150 1750 50  0001 C CNN
	1    10150 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5ADA87BC
P 9950 1050
F 0 "R2" V 10050 900 50  0000 L CNN
F 1 "33R" V 10050 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9950 1050 50  0001 C CNN
F 3 "" H 9950 1050 50  0001 C CNN
	1    9950 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small D1
U 1 1 5ADA8F56
P 10250 1250
F 0 "D1" H 10200 1330 50  0000 L CNN
F 1 "D_Small" H 10100 1170 50  0000 L CNN
F 2 "LEDs:LED_D5.0mm_Horizontal_O1.27mm_Z3.0mm" V 10250 1250 50  0001 C CNN
F 3 "" V 10250 1250 50  0001 C CNN
	1    10250 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5ADA9251
P 10250 2100
F 0 "#PWR015" H 10250 1850 50  0001 C CNN
F 1 "GND" H 10250 1950 50  0000 C CNN
F 2 "" H 10250 2100 50  0001 C CNN
F 3 "" H 10250 2100 50  0001 C CNN
	1    10250 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5ADA9843
P 7250 1300
F 0 "C4" H 7260 1370 50  0000 L CNN
F 1 "0.1uF" H 7260 1220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7250 1300 50  0001 C CNN
F 3 "" H 7250 1300 50  0001 C CNN
	1    7250 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5ADA999F
P 6950 1300
F 0 "C3" H 6960 1370 50  0000 L CNN
F 1 "4.7uF" H 6960 1220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6950 1300 50  0001 C CNN
F 3 "" H 6950 1300 50  0001 C CNN
	1    6950 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5ADAA5ED
P 5700 6250
F 0 "R11" H 5500 6250 50  0000 L CNN
F 1 "10K" H 5500 6350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5700 6250 50  0001 C CNN
F 3 "" H 5700 6250 50  0001 C CNN
	1    5700 6250
	-1   0    0    1   
$EndComp
$Comp
L Mouse-rescue:TACT_SWITCH SW2
U 1 1 5ADAAE85
P 8150 4800
F 0 "SW2" V 8150 4700 50  0000 C CNN
F 1 "TL1105DF250Q" H 8150 5000 50  0000 C CNN
F 2 "Solutions:Mouse_Button" H 8150 4800 50  0001 C CNN
F 3 "" H 8150 4800 50  0000 C CNN
	1    8150 4800
	0    -1   -1   0   
$EndComp
$Comp
L Mouse-rescue:TACT_SWITCH SW3
U 1 1 5ADAB2C8
P 8650 4800
F 0 "SW3" V 8650 4750 50  0000 C CNN
F 1 "TL1105DF250Q" H 8650 5000 50  0000 C CNN
F 2 "Solutions:Mouse_Button" H 8650 4800 50  0001 C CNN
F 3 "" H 8650 4800 50  0000 C CNN
	1    8650 4800
	0    1    1    0   
$EndComp
Text Label 8000 4400 2    60   ~ 0
LEFT
Text Label 8800 4400 0    60   ~ 0
RIGHT
$Comp
L power:GND #PWR016
U 1 1 5ADABE1F
P 8400 5200
F 0 "#PWR016" H 8400 4950 50  0001 C CNN
F 1 "GND" H 8400 5050 50  0000 C CNN
F 2 "" H 8400 5200 50  0001 C CNN
F 3 "" H 8400 5200 50  0001 C CNN
	1    8400 5200
	1    0    0    -1  
$EndComp
$Comp
L Mouse-rescue:ENCODER-QUADRATURE U2
U 1 1 5B1F370F
P 10050 4950
F 0 "U2" H 9850 5350 50  0000 L BNN
F 1 "ENCODER-QUADRATURE" V 9800 5000 50  0000 L BNN
F 2 "Solutions:Mouse_Encoder" H 10080 5100 20  0001 C CNN
F 3 "" H 10050 4950 60  0001 C CNN
	1    10050 4950
	0    -1   -1   0   
$EndComp
Text Label 10500 4500 0    60   ~ 0
WHEEL_B
Text Label 9600 4500 2    60   ~ 0
WHEEL_A
$Comp
L power:GND #PWR017
U 1 1 5B1F5E35
P 10050 5400
F 0 "#PWR017" H 10050 5150 50  0001 C CNN
F 1 "GND" H 10050 5250 50  0000 C CNN
F 2 "" H 10050 5400 50  0001 C CNN
F 3 "" H 10050 5400 50  0001 C CNN
	1    10050 5400
	1    0    0    -1  
$EndComp
Text Notes 8000 1300 0    60   ~ 0
pixart.com.tw
$Comp
L Mouse-rescue:USB_OTG J1
U 1 1 5B5A53ED
P 1700 1300
F 0 "J1" H 1500 1750 50  0000 L CNN
F 1 "USB_OTG" H 1500 1650 50  0000 L CNN
F 2 "Solutions:10118193_microUSB" H 1850 1250 50  0001 C CNN
F 3 "" H 1850 1250 50  0001 C CNN
	1    1700 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1700 1600 1800
Wire Wire Line
	1850 1800 1850 2200
Wire Wire Line
	1700 1700 1700 1800
Wire Wire Line
	2000 1100 2200 1100
Wire Wire Line
	2400 1100 2700 1100
Wire Wire Line
	2700 1100 2700 1000
Wire Wire Line
	2000 1300 2350 1300
Wire Wire Line
	2000 1400 2700 1400
Wire Wire Line
	2350 1700 2350 1300
Connection ~ 2350 1300
Wire Wire Line
	2700 1700 2700 1400
Connection ~ 2700 1400
Wire Wire Line
	3000 1300 3100 1300
Wire Wire Line
	3000 1400 3100 1400
Wire Wire Line
	2350 2200 2350 2000
Wire Wire Line
	1600 2200 1850 2200
Connection ~ 1850 2200
Wire Wire Line
	2700 2200 2700 2000
Connection ~ 2350 2200
Wire Wire Line
	1700 1800 1850 1800
Wire Wire Line
	1600 2100 1600 2200
Wire Wire Line
	3850 1100 3850 1250
Connection ~ 2700 1100
Wire Wire Line
	3850 2200 3850 1450
Connection ~ 2700 2200
Wire Wire Line
	3550 1450 3550 2200
Connection ~ 3550 2200
Wire Wire Line
	3550 1250 3550 1100
Connection ~ 3550 1100
Wire Wire Line
	2900 6600 2900 6750
Wire Wire Line
	7850 1650 7700 1650
Wire Wire Line
	7700 1650 7700 1600
Wire Wire Line
	7700 1600 7500 1600
Wire Wire Line
	7850 1750 7700 1750
Wire Wire Line
	7700 1750 7700 1800
Wire Wire Line
	7700 1800 7500 1800
Wire Wire Line
	7700 950  7700 1050
Wire Wire Line
	7700 1550 7850 1550
Wire Wire Line
	7850 1850 7700 1850
Wire Wire Line
	7700 1850 7700 2100
Wire Wire Line
	9150 1850 9200 1850
Wire Wire Line
	9200 1850 9200 2100
Wire Wire Line
	9200 2100 8800 2100
Wire Wire Line
	6950 2100 7250 2100
Connection ~ 7700 2100
Wire Wire Line
	9150 1750 9400 1750
Wire Wire Line
	9600 1750 9700 1750
Wire Wire Line
	9700 1400 9700 1750
Connection ~ 9700 1750
Wire Wire Line
	10250 1350 10250 1550
Wire Wire Line
	9700 1050 9700 1200
Wire Wire Line
	6950 1050 7250 1050
Connection ~ 7700 1050
Connection ~ 9700 1050
Wire Wire Line
	10050 1050 10250 1050
Wire Wire Line
	10250 1050 10250 1150
Wire Wire Line
	10250 1950 10250 2100
Wire Wire Line
	6950 1200 6950 1050
Wire Wire Line
	7250 1200 7250 1050
Connection ~ 7250 1050
Wire Wire Line
	7250 1400 7250 2100
Wire Wire Line
	6950 1400 6950 2100
Connection ~ 7250 2100
Wire Wire Line
	3700 3600 3700 3400
Wire Wire Line
	3700 3400 3800 3400
Wire Wire Line
	3800 3150 3800 3200
Wire Wire Line
	4050 3400 4050 3600
Connection ~ 3800 3400
Wire Wire Line
	3950 3600 3950 3400
Connection ~ 3950 3400
Wire Wire Line
	4400 3200 4400 3500
Wire Wire Line
	4300 3600 4300 3500
Wire Wire Line
	4300 3500 4400 3500
Connection ~ 4400 3500
Wire Wire Line
	2250 3200 2500 3200
Connection ~ 3800 3200
Wire Wire Line
	1300 4100 1300 4600
Wire Wire Line
	1600 4800 1600 4950
Wire Wire Line
	1300 4800 1300 4950
Wire Wire Line
	1450 3500 1350 3500
Wire Wire Line
	1350 3500 1350 3850
Wire Wire Line
	1450 3600 1450 3850
Connection ~ 1450 3850
Wire Wire Line
	2050 3500 2100 3500
Wire Wire Line
	2100 3500 2100 3600
Connection ~ 2100 3600
Wire Wire Line
	10050 5350 10050 5400
Wire Wire Line
	2200 6050 2200 6150
Wire Wire Line
	2200 6150 2100 6150
Wire Wire Line
	2100 6350 2200 6350
Wire Wire Line
	2200 6350 2200 6450
Wire Wire Line
	3000 6250 2900 6250
Wire Wire Line
	2900 6250 2900 6400
Wire Wire Line
	2750 5900 2750 7250
Wire Wire Line
	2750 7250 3750 7250
Wire Wire Line
	4000 7000 4000 7250
Connection ~ 4000 7250
Wire Wire Line
	3750 7000 3750 7250
Connection ~ 3750 7250
Wire Wire Line
	4300 7250 4300 7000
Wire Wire Line
	4200 7000 4200 7250
Connection ~ 4200 7250
Wire Wire Line
	4100 7000 4100 7250
Connection ~ 4100 7250
Wire Wire Line
	5250 5950 5700 5950
Wire Wire Line
	5700 5950 5700 6150
Wire Wire Line
	5700 6450 5700 6350
Wire Wire Line
	2750 5700 2750 5450
Wire Wire Line
	2750 5450 3000 5450
Wire Wire Line
	2850 4950 2850 5050
Wire Wire Line
	2850 5050 3000 5050
Wire Wire Line
	1600 4600 2100 4600
Wire Wire Line
	2400 4600 2400 4450
Wire Wire Line
	2400 4450 3000 4450
Wire Wire Line
	3000 4250 2400 4250
Wire Wire Line
	2400 4250 2400 4100
Wire Wire Line
	2400 4100 2100 4100
Wire Wire Line
	2100 4200 2100 4100
Connection ~ 2100 4100
Wire Wire Line
	2100 4500 2100 4600
Connection ~ 2100 4600
Wire Wire Line
	1300 4950 1600 4950
Connection ~ 1600 4950
Wire Wire Line
	1350 3850 1450 3850
Wire Wire Line
	2050 3600 2100 3600
Wire Wire Line
	2400 3600 2400 3650
Wire Wire Line
	2250 3250 2250 3200
Wire Wire Line
	2500 3250 2500 3200
Connection ~ 2500 3200
Wire Wire Line
	2250 3450 2250 3600
Connection ~ 2250 3600
Wire Wire Line
	2500 3600 2500 3450
Connection ~ 2400 3600
Wire Wire Line
	2800 3650 2800 3850
Connection ~ 2800 3850
Wire Wire Line
	2800 3450 2800 3200
Connection ~ 2800 3200
Wire Wire Line
	4300 3200 4400 3200
Wire Wire Line
	4650 3550 4650 3450
Wire Wire Line
	4650 3200 4650 3250
Connection ~ 4400 3200
Wire Wire Line
	8000 4400 8150 4400
Wire Wire Line
	8150 4400 8150 4500
Wire Wire Line
	8550 4400 8650 4400
Wire Wire Line
	8650 4500 8650 4400
Connection ~ 8650 4400
Connection ~ 8150 4400
Wire Wire Line
	8150 5100 8150 5150
Wire Wire Line
	8150 5150 8250 5150
Wire Wire Line
	8400 5150 8400 5200
Wire Wire Line
	8250 5100 8250 5150
Connection ~ 8250 5150
Wire Wire Line
	8650 5150 8650 5100
Connection ~ 8400 5150
Wire Wire Line
	8550 5100 8550 5150
Connection ~ 8550 5150
Wire Notes Line
	7600 3650 11000 3650
Wire Notes Line
	11000 3650 11000 6000
Wire Notes Line
	11000 6000 7600 6000
Wire Notes Line
	7600 6000 7600 3650
Text Notes 8650 5800 0    60   ~ 0
MOUSE WHEEL AND BUTTONS
Wire Notes Line
	6700 750  10950 750 
Wire Notes Line
	10950 750  10950 2750
Wire Notes Line
	10950 2750 6700 2750
Wire Notes Line
	6700 2750 6700 750 
Text Notes 8450 2600 0    60   ~ 0
MOUSE EYE
Text Notes 2200 2500 0    60   ~ 0
USB DATA AND POWER
Wire Notes Line
	750  750  4150 750 
Wire Notes Line
	4150 750  4150 2650
Wire Notes Line
	4150 2650 750  2650
Wire Notes Line
	750  2650 750  750 
Text Notes 4550 7200 0    60   ~ 0
ARDUINO LEONARDO
$Comp
L Mouse-rescue:CJS1200 SW4
U 1 1 5B5B91D1
P 6250 4550
F 0 "SW4" H 6050 4700 50  0000 C CNN
F 1 "CJS1200" H 6050 4400 50  0000 C CNN
F 2 "Solutions:SSSS810701_ALPS_DPDT" H 6250 4550 50  0001 C CNN
F 3 "" H 6250 4550 50  0000 C CNN
	1    6250 4550
	1    0    0    1   
$EndComp
Wire Wire Line
	5950 4550 5250 4550
$Comp
L Device:R_Small R13
U 1 1 5B5B948E
P 6650 4800
F 0 "R13" H 6450 4800 50  0000 L CNN
F 1 "10K" H 6450 4900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6650 4800 50  0001 C CNN
F 3 "" H 6650 4800 50  0001 C CNN
	1    6650 4800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5B5B952A
P 6650 5000
F 0 "#PWR018" H 6650 4750 50  0001 C CNN
F 1 "GND" H 6650 4850 50  0000 C CNN
F 2 "" H 6650 5000 50  0001 C CNN
F 3 "" H 6650 5000 50  0001 C CNN
	1    6650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4650 6650 4650
Wire Wire Line
	6650 4650 6650 4700
Wire Wire Line
	6650 5000 6650 4900
$Comp
L Device:LED_Small_ALT D4
U 1 1 5B5B9D0F
P 6150 5300
F 0 "D4" V 6250 5150 50  0000 L CNN
F 1 "LED" V 6050 5100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" V 6150 5300 50  0001 C CNN
F 3 "" V 6150 5300 50  0001 C CNN
	1    6150 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5B5BA0AB
P 6150 5600
F 0 "R14" H 6000 5550 50  0000 L CNN
F 1 "1K" H 6000 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6150 5600 50  0001 C CNN
F 3 "" H 6150 5600 50  0001 C CNN
	1    6150 5600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5B5BA3AE
P 6150 5850
F 0 "#PWR019" H 6150 5600 50  0001 C CNN
F 1 "GND" H 6150 5700 50  0000 C CNN
F 2 "" H 6150 5850 50  0001 C CNN
F 3 "" H 6150 5850 50  0001 C CNN
	1    6150 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4850 6150 4850
Wire Wire Line
	6150 4850 6150 5200
Wire Wire Line
	6150 5400 6150 5500
Wire Wire Line
	6150 5700 6150 5850
$Comp
L power:Earth #PWR020
U 1 1 5B5BB920
P 1200 1800
F 0 "#PWR020" H 1200 1550 50  0001 C CNN
F 1 "Earth" H 1200 1650 50  0001 C CNN
F 2 "" H 1200 1800 50  0001 C CNN
F 3 "" H 1200 1800 50  0001 C CNN
	1    1200 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 1800 1600 1800
Connection ~ 1600 1800
Text Label 1250 1800 0    60   ~ 0
EARTH
Wire Wire Line
	1900 4350 1850 4350
Wire Wire Line
	1850 4350 1850 4950
Wire Wire Line
	2300 4950 2300 4350
Connection ~ 1850 4950
$Comp
L Mouse-rescue:CONN_01X01 J3
U 1 1 5B5F3BDF
P 4650 1350
F 0 "J3" H 4650 1450 50  0000 C CNN
F 1 "NPTH" H 4850 1350 50  0000 C CNN
F 2 "Solutions:NPTH_1875" H 4650 1350 50  0001 C CNN
F 3 "" H 4650 1350 50  0001 C CNN
	1    4650 1350
	1    0    0    -1  
$EndComp
$Comp
L Mouse-rescue:CONN_01X01 J4
U 1 1 5B5F42D0
P 4650 1550
F 0 "J4" H 4650 1650 50  0000 C CNN
F 1 "NPTH" H 4850 1550 50  0000 C CNN
F 2 "Solutions:NPTH_1875" H 4650 1550 50  0001 C CNN
F 3 "" H 4650 1550 50  0001 C CNN
	1    4650 1550
	1    0    0    -1  
$EndComp
$Comp
L Mouse-rescue:CONN_01X01 J7
U 1 1 5B5F436D
P 4650 1750
F 0 "J7" H 4650 1850 50  0000 C CNN
F 1 "NPTH" H 4850 1750 50  0000 C CNN
F 2 "Solutions:NPTH_1875" H 4650 1750 50  0001 C CNN
F 3 "" H 4650 1750 50  0001 C CNN
	1    4650 1750
	1    0    0    -1  
$EndComp
$Comp
L Mouse-rescue:CONN_01X01 J8
U 1 1 5B5F440D
P 4650 1950
F 0 "J8" H 4650 2050 50  0000 C CNN
F 1 "NPTH" H 4850 1950 50  0000 C CNN
F 2 "Solutions:NPTH_1875" H 4650 1950 50  0001 C CNN
F 3 "" H 4650 1950 50  0001 C CNN
	1    4650 1950
	1    0    0    -1  
$EndComp
$Comp
L Mouse-rescue:CONN_01X07 J5
U 1 1 5B5F4483
P 5600 1700
F 0 "J5" H 5600 2100 50  0000 C CNN
F 1 "CONN_01X07" V 5700 1700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07_Pitch2.54mm" H 5600 1700 50  0001 C CNN
F 3 "" H 5600 1700 50  0001 C CNN
	1    5600 1700
	1    0    0    -1  
$EndComp
$Comp
L Mouse-rescue:CONN_01X07 J6
U 1 1 5B5F4564
P 5950 1700
F 0 "J6" H 5950 2100 50  0000 C CNN
F 1 "CONN_01X07" V 6050 1700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07_Pitch2.54mm" H 5950 1700 50  0001 C CNN
F 3 "" H 5950 1700 50  0001 C CNN
	1    5950 1700
	-1   0    0    -1  
$EndComp
Text Label 5400 1500 2    60   ~ 0
D7
Text Label 5400 1600 2    60   ~ 0
D0/RX
Text Label 5400 1700 2    60   ~ 0
D1/TX
Text Label 5400 1800 2    60   ~ 0
D4
Text Label 5400 1900 2    60   ~ 0
D12
Text Label 5400 2000 2    60   ~ 0
D10
$Comp
L power:GND #PWR021
U 1 1 5B5F4F0E
P 5150 1300
F 0 "#PWR021" H 5150 1050 50  0001 C CNN
F 1 "GND" H 5150 1150 50  0000 C CNN
F 2 "" H 5150 1300 50  0001 C CNN
F 3 "" H 5150 1300 50  0001 C CNN
	1    5150 1300
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5B5F50B4
P 6300 1300
F 0 "#PWR022" H 6300 1150 50  0001 C CNN
F 1 "+5V" H 6300 1440 50  0000 C CNN
F 2 "" H 6300 1300 50  0001 C CNN
F 3 "" H 6300 1300 50  0001 C CNN
	1    6300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1400 6300 1400
Wire Wire Line
	6300 1400 6300 1300
Text Label 6150 1500 0    60   ~ 0
A5
Text Label 6150 1600 0    60   ~ 0
A4
Text Label 6150 1700 0    60   ~ 0
A3
Text Label 6150 1800 0    60   ~ 0
A2
Text Label 6150 1900 0    60   ~ 0
A1
Text Label 6150 2000 0    60   ~ 0
A0
Wire Notes Line
	4250 750  4250 2650
Wire Notes Line
	4250 2650 6550 2650
Wire Notes Line
	6550 2650 6550 750 
Wire Notes Line
	6550 750  4250 750 
Text Notes 4750 2450 0    60   ~ 0
MOUNTING AND BREAKOUT
Wire Wire Line
	5150 1300 5150 1400
Wire Wire Line
	5150 1400 5400 1400
Text Notes 3750 6550 0    60   ~ 0
RXLED\nSCK\nMOSI\nMISO\nD8\nD9\nD10\nD11\nD5\nD13\nD3/SCL\nD2/SDA\nD0/RX\nD1/TX\nD4\nTXLED\nD12\nD6\nHWB\nD7\nA5\nA4\nA3\nA2\nA1\nA0
Text Notes 1300 4450 2    60   ~ 0
REVIEW XTAL \nFOR FOOTPRINT\nAND AVIALABILITY\n
$Sheet
S 8350 3100 1050 150 
U 5B7CA316
F0 "Sheet5B7CA315" 60
F1 "MousePlayground.sch" 60
$EndSheet
Text GLabel 9850 3100 0    60   Input ~ 0
+5V
Text GLabel 9850 3250 0    60   Input ~ 0
GND
$Comp
L power:+5V #PWR023
U 1 1 5B7CC855
P 10050 3100
F 0 "#PWR023" H 10050 2950 50  0001 C CNN
F 1 "+5V" H 10050 3240 50  0000 C CNN
F 2 "" H 10050 3100 50  0001 C CNN
F 3 "" H 10050 3100 50  0001 C CNN
	1    10050 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5B7CC8F9
P 10050 3250
F 0 "#PWR024" H 10050 3000 50  0001 C CNN
F 1 "GND" H 10050 3100 50  0000 C CNN
F 2 "" H 10050 3250 50  0001 C CNN
F 3 "" H 10050 3250 50  0001 C CNN
	1    10050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3100 10050 3100
Wire Wire Line
	9850 3250 10050 3250
Wire Wire Line
	8550 4500 8550 4400
Wire Wire Line
	8250 4400 8250 4500
Wire Wire Line
	9750 4550 9750 4500
Wire Wire Line
	9750 4500 9600 4500
Wire Wire Line
	10350 4550 10350 4500
Wire Wire Line
	10350 4500 10500 4500
NoConn ~ 6550 4450
Wire Wire Line
	2350 1300 2800 1300
Wire Wire Line
	2700 1400 2800 1400
Wire Wire Line
	1850 2200 1850 2300
Wire Wire Line
	1850 2200 2350 2200
Wire Wire Line
	2350 2200 2700 2200
Wire Wire Line
	2700 1100 3550 1100
Wire Wire Line
	2700 2200 3550 2200
Wire Wire Line
	3550 2200 3850 2200
Wire Wire Line
	3550 1100 3850 1100
Wire Wire Line
	7700 2100 7700 2200
Wire Wire Line
	7700 2100 8600 2100
Wire Wire Line
	9700 1750 9950 1750
Wire Wire Line
	7700 1050 7700 1550
Wire Wire Line
	7700 1050 9700 1050
Wire Wire Line
	9700 1050 9850 1050
Wire Wire Line
	7250 1050 7700 1050
Wire Wire Line
	7250 2100 7700 2100
Wire Wire Line
	3800 3400 3950 3400
Wire Wire Line
	3950 3400 4050 3400
Wire Wire Line
	4400 3500 4400 3600
Wire Wire Line
	3800 3200 3800 3400
Wire Wire Line
	3800 3200 4100 3200
Wire Wire Line
	1450 3850 2800 3850
Wire Wire Line
	2100 3600 2250 3600
Wire Wire Line
	4000 7250 4100 7250
Wire Wire Line
	4000 7250 4000 7400
Wire Wire Line
	3750 7250 4000 7250
Wire Wire Line
	4200 7250 4300 7250
Wire Wire Line
	4100 7250 4200 7250
Wire Wire Line
	2100 4100 1300 4100
Wire Wire Line
	2100 4600 2400 4600
Wire Wire Line
	1600 4950 1600 5050
Wire Wire Line
	1600 4950 1850 4950
Wire Wire Line
	2500 3200 2800 3200
Wire Wire Line
	2250 3600 2400 3600
Wire Wire Line
	2400 3600 2500 3600
Wire Wire Line
	2800 3850 3000 3850
Wire Wire Line
	2800 3200 3800 3200
Wire Wire Line
	4400 3200 4650 3200
Wire Wire Line
	8650 4400 8800 4400
Wire Wire Line
	8150 4400 8250 4400
Wire Wire Line
	8250 5150 8400 5150
Wire Wire Line
	8400 5150 8550 5150
Wire Wire Line
	8550 5150 8650 5150
Wire Wire Line
	1600 1800 1600 1900
Wire Wire Line
	1850 4950 2300 4950
$EndSCHEMATC