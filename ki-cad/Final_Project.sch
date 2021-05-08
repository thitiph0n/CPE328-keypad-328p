EESchema Schematic File Version 4
EELAYER 30 0
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
L Device:R R4
U 1 1 6095C052
P 8800 2350
F 0 "R4" H 8870 2396 50  0000 L CNN
F 1 "10K" H 8870 2305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8730 2350 50  0001 C CNN
F 3 "~" H 8800 2350 50  0001 C CNN
	1    8800 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6096331D
P 5400 1950
F 0 "C1" V 5148 1950 50  0000 C CNN
F 1 "0.1uF" V 5239 1950 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5438 1800 50  0001 C CNN
F 3 "~" H 5400 1950 50  0001 C CNN
	1    5400 1950
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 60965BF2
P 5350 3350
F 0 "SW1" H 5350 3635 50  0000 C CNN
F 1 "SW_Push" H 5350 3544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5350 3550 50  0001 C CNN
F 3 "~" H 5350 3550 50  0001 C CNN
	1    5350 3350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 6097854F
P 6350 3350
F 0 "SW2" H 6350 3635 50  0000 C CNN
F 1 "SW_Push" H 6350 3544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 6350 3550 50  0001 C CNN
F 3 "~" H 6350 3550 50  0001 C CNN
	1    6350 3350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 60979C79
P 7350 3350
F 0 "SW3" H 7350 3635 50  0000 C CNN
F 1 "SW_Push" H 7350 3544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 7350 3550 50  0001 C CNN
F 3 "~" H 7350 3550 50  0001 C CNN
	1    7350 3350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 6097A584
P 8350 3350
F 0 "SW4" H 8350 3635 50  0000 C CNN
F 1 "SW_Push" H 8350 3544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8350 3550 50  0001 C CNN
F 3 "~" H 8350 3550 50  0001 C CNN
	1    8350 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 609B1B86
P 3600 5450
F 0 "#PWR04" H 3600 5200 50  0001 C CNN
F 1 "GND" H 3605 5277 50  0000 C CNN
F 2 "" H 3600 5450 50  0001 C CNN
F 3 "" H 3600 5450 50  0001 C CNN
	1    3600 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 609B2D65
P 3600 2200
F 0 "#PWR03" H 3600 2050 50  0001 C CNN
F 1 "+5V" H 3615 2373 50  0000 C CNN
F 2 "" H 3600 2200 50  0001 C CNN
F 3 "" H 3600 2200 50  0001 C CNN
	1    3600 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6095BB68
P 7800 2350
F 0 "R3" H 7870 2396 50  0000 L CNN
F 1 "10K" H 7870 2305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7730 2350 50  0001 C CNN
F 3 "~" H 7800 2350 50  0001 C CNN
	1    7800 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6095B2BF
P 6800 2350
F 0 "R2" H 6870 2396 50  0000 L CNN
F 1 "10K" H 6870 2305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6730 2350 50  0001 C CNN
F 3 "~" H 6800 2350 50  0001 C CNN
	1    6800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3350 5800 3350
Wire Wire Line
	6800 3350 6550 3350
Wire Wire Line
	7800 3350 7550 3350
Wire Wire Line
	8550 3350 8800 3350
$Comp
L power:GND #PWR02
U 1 1 609C1489
P 5050 1950
F 0 "#PWR02" H 5050 1700 50  0001 C CNN
F 1 "GND" V 5055 1822 50  0000 R CNN
F 2 "" H 5050 1950 50  0001 C CNN
F 3 "" H 5050 1950 50  0001 C CNN
	1    5050 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 1950 5250 1950
Wire Wire Line
	7800 2200 7800 1950
Connection ~ 7800 1950
Wire Wire Line
	6800 2200 6800 1950
Connection ~ 6800 1950
Wire Wire Line
	6800 1950 7800 1950
Wire Wire Line
	5800 2500 5800 2600
Wire Wire Line
	5800 1950 6800 1950
Wire Wire Line
	5550 1950 5800 1950
Connection ~ 5800 1950
$Comp
L Device:R R1
U 1 1 609594CB
P 5800 2350
F 0 "R1" H 5870 2396 50  0000 L CNN
F 1 "10K" H 5870 2305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5730 2350 50  0001 C CNN
F 3 "~" H 5800 2350 50  0001 C CNN
	1    5800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2200 5800 1950
Wire Wire Line
	6800 2500 6800 2700
Wire Wire Line
	7800 2500 7800 2800
Wire Wire Line
	8800 2500 8800 2900
Wire Wire Line
	5800 2600 5800 3350
Connection ~ 5800 2600
Wire Wire Line
	6800 2700 6800 3350
Connection ~ 6800 2700
Wire Wire Line
	7800 2800 7800 3350
Connection ~ 7800 2800
Wire Wire Line
	8800 2900 8800 3350
Connection ~ 8800 2900
Connection ~ 8800 3350
Wire Wire Line
	4750 3650 5150 3650
Wire Wire Line
	5150 3350 5150 3650
Connection ~ 5150 3650
Wire Wire Line
	5150 3650 6150 3650
Wire Wire Line
	6150 3350 6150 3650
Connection ~ 6150 3650
Wire Wire Line
	6150 3650 7150 3650
Wire Wire Line
	7150 3350 7150 3650
Connection ~ 7150 3650
Wire Wire Line
	7150 3650 8150 3650
Wire Wire Line
	8150 3350 8150 3650
Connection ~ 7800 3350
Connection ~ 6800 3350
Connection ~ 5800 3350
Wire Wire Line
	8150 4050 8150 4300
Wire Wire Line
	7150 4300 8150 4300
Connection ~ 7150 4300
Wire Wire Line
	7150 4050 7150 4300
Wire Wire Line
	8150 4750 8150 5050
Wire Wire Line
	7150 5050 8150 5050
Connection ~ 7150 5050
Wire Wire Line
	7150 4750 7150 5050
Wire Wire Line
	6150 5050 7150 5050
Connection ~ 6150 5050
Wire Wire Line
	6150 4750 6150 5050
Wire Wire Line
	6150 4300 7150 4300
Connection ~ 6150 4300
Wire Wire Line
	6150 4050 6150 4300
Wire Wire Line
	5150 4300 6150 4300
Connection ~ 5150 4300
Wire Wire Line
	5150 4050 5150 4300
Wire Wire Line
	5150 5050 6150 5050
Connection ~ 5150 5050
Wire Wire Line
	5150 4750 5150 5050
Wire Wire Line
	7150 5700 8150 5700
Connection ~ 7150 5700
Wire Wire Line
	7150 5450 7150 5700
Wire Wire Line
	6150 5700 7150 5700
Connection ~ 6150 5700
Wire Wire Line
	6150 5450 6150 5700
Wire Wire Line
	5150 5700 6150 5700
Connection ~ 5150 5700
Wire Wire Line
	5150 5450 5150 5700
Wire Wire Line
	8150 5700 8150 5450
Wire Wire Line
	4350 5700 5150 5700
Wire Wire Line
	4500 5050 5150 5050
Wire Wire Line
	4500 3700 4500 5050
Wire Wire Line
	4650 4300 5150 4300
Wire Wire Line
	4650 3600 4650 4300
Connection ~ 8800 4750
Wire Wire Line
	8550 4750 8800 4750
Connection ~ 8800 4050
Wire Wire Line
	8550 4050 8800 4050
Wire Wire Line
	7800 4750 7800 5450
Connection ~ 7800 4750
Wire Wire Line
	7550 4750 7800 4750
Wire Wire Line
	7800 4050 7800 4750
Connection ~ 7800 4050
Wire Wire Line
	7550 4050 7800 4050
Wire Wire Line
	7800 3350 7800 4050
Wire Wire Line
	6800 4050 6800 4750
Connection ~ 6800 4050
Wire Wire Line
	6550 4050 6800 4050
Wire Wire Line
	6800 3350 6800 4050
Wire Wire Line
	6800 4750 6800 5450
Connection ~ 6800 4750
Wire Wire Line
	6550 4750 6800 4750
Wire Wire Line
	5800 4750 5800 5450
Connection ~ 5800 4750
Wire Wire Line
	5550 4750 5800 4750
Wire Wire Line
	5800 4050 5800 4750
Connection ~ 5800 4050
Wire Wire Line
	5550 4050 5800 4050
Wire Wire Line
	5800 3350 5800 4050
Wire Wire Line
	8800 5450 8550 5450
Wire Wire Line
	7800 5450 7550 5450
Wire Wire Line
	6800 5450 6550 5450
Wire Wire Line
	5800 5450 5550 5450
$Comp
L Switch:SW_Push SW16
U 1 1 609AAD1C
P 8350 5450
F 0 "SW16" H 8350 5735 50  0000 C CNN
F 1 "SW_Push" H 8350 5644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8350 5650 50  0001 C CNN
F 3 "~" H 8350 5650 50  0001 C CNN
	1    8350 5450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW15
U 1 1 609AAD16
P 7350 5450
F 0 "SW15" H 7350 5735 50  0000 C CNN
F 1 "SW_Push" H 7350 5644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 7350 5650 50  0001 C CNN
F 3 "~" H 7350 5650 50  0001 C CNN
	1    7350 5450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW14
U 1 1 609AAD10
P 6350 5450
F 0 "SW14" H 6350 5735 50  0000 C CNN
F 1 "SW_Push" H 6350 5644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 6350 5650 50  0001 C CNN
F 3 "~" H 6350 5650 50  0001 C CNN
	1    6350 5450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW13
U 1 1 609AAD0A
P 5350 5450
F 0 "SW13" H 5350 5735 50  0000 C CNN
F 1 "SW_Push" H 5350 5644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5350 5650 50  0001 C CNN
F 3 "~" H 5350 5650 50  0001 C CNN
	1    5350 5450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW12
U 1 1 609AAD04
P 8350 4750
F 0 "SW12" H 8350 5035 50  0000 C CNN
F 1 "SW_Push" H 8350 4944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8350 4950 50  0001 C CNN
F 3 "~" H 8350 4950 50  0001 C CNN
	1    8350 4750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW11
U 1 1 609AACFE
P 7350 4750
F 0 "SW11" H 7350 5035 50  0000 C CNN
F 1 "SW_Push" H 7350 4944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 7350 4950 50  0001 C CNN
F 3 "~" H 7350 4950 50  0001 C CNN
	1    7350 4750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW10
U 1 1 609AACF8
P 6350 4750
F 0 "SW10" H 6350 5035 50  0000 C CNN
F 1 "SW_Push" H 6350 4944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 6350 4950 50  0001 C CNN
F 3 "~" H 6350 4950 50  0001 C CNN
	1    6350 4750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW9
U 1 1 609AACF2
P 5350 4750
F 0 "SW9" H 5350 5035 50  0000 C CNN
F 1 "SW_Push" H 5350 4944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5350 4950 50  0001 C CNN
F 3 "~" H 5350 4950 50  0001 C CNN
	1    5350 4750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW8
U 1 1 60988136
P 8350 4050
F 0 "SW8" H 8350 4335 50  0000 C CNN
F 1 "SW_Push" H 8350 4244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8350 4250 50  0001 C CNN
F 3 "~" H 8350 4250 50  0001 C CNN
	1    8350 4050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW7
U 1 1 60988130
P 7350 4050
F 0 "SW7" H 7350 4335 50  0000 C CNN
F 1 "SW_Push" H 7350 4244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 7350 4250 50  0001 C CNN
F 3 "~" H 7350 4250 50  0001 C CNN
	1    7350 4050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 6098812A
P 6350 4050
F 0 "SW6" H 6350 4335 50  0000 C CNN
F 1 "SW_Push" H 6350 4244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 6350 4250 50  0001 C CNN
F 3 "~" H 6350 4250 50  0001 C CNN
	1    6350 4050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 60988124
P 5350 4050
F 0 "SW5" H 5350 4335 50  0000 C CNN
F 1 "SW_Push" H 5350 4244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5350 4250 50  0001 C CNN
F 3 "~" H 5350 4250 50  0001 C CNN
	1    5350 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 60A42575
P 4600 6100
F 0 "D1" H 4593 5845 50  0000 C CNN
F 1 "LED" H 4593 5936 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4600 6100 50  0001 C CNN
F 3 "~" H 4600 6100 50  0001 C CNN
	1    4600 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 4800 4250 4800
Wire Wire Line
	4250 6100 4450 6100
$Comp
L Device:R R5
U 1 1 60A46C6B
P 5100 6100
F 0 "R5" V 4893 6100 50  0000 C CNN
F 1 "330R" V 4984 6100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5030 6100 50  0001 C CNN
F 3 "~" H 5100 6100 50  0001 C CNN
	1    5100 6100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 60A478BC
P 5400 6100
F 0 "#PWR05" H 5400 5850 50  0001 C CNN
F 1 "GND" V 5405 5972 50  0000 R CNN
F 2 "" H 5400 6100 50  0001 C CNN
F 3 "" H 5400 6100 50  0001 C CNN
	1    5400 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 6100 5400 6100
Wire Wire Line
	4750 6100 4950 6100
Wire Wire Line
	3600 2200 3600 2250
NoConn ~ 4200 3000
NoConn ~ 4200 3100
NoConn ~ 4200 3200
NoConn ~ 4200 3300
NoConn ~ 4200 3900
NoConn ~ 4200 4000
NoConn ~ 4200 4100
NoConn ~ 4200 4500
NoConn ~ 4200 4600
NoConn ~ 4200 4700
NoConn ~ 4200 4900
NoConn ~ 4200 5000
NoConn ~ 3000 2600
Wire Wire Line
	7800 1950 8800 1950
Wire Wire Line
	8800 2200 8800 1950
$Comp
L power:+5V #PWR01
U 1 1 60965082
P 8800 1850
F 0 "#PWR01" H 8800 1700 50  0001 C CNN
F 1 "+5V" H 8815 2023 50  0000 C CNN
F 2 "" H 8800 1850 50  0001 C CNN
F 3 "" H 8800 1850 50  0001 C CNN
	1    8800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1850 8800 1950
Connection ~ 8800 1950
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60A9ACC8
P 3500 2250
F 0 "#FLG0101" H 3500 2325 50  0001 C CNN
F 1 "PWR_FLAG" V 3500 2377 50  0000 L CNN
F 2 "" H 3500 2250 50  0001 C CNN
F 3 "~" H 3500 2250 50  0001 C CNN
	1    3500 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 2250 3600 2250
Connection ~ 3600 2250
Wire Wire Line
	3600 2250 3600 2300
Wire Wire Line
	3600 5300 3600 5350
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60AB6446
P 3500 5350
F 0 "#FLG0102" H 3500 5425 50  0001 C CNN
F 1 "PWR_FLAG" V 3500 5477 50  0000 L CNN
F 2 "" H 3500 5350 50  0001 C CNN
F 3 "~" H 3500 5350 50  0001 C CNN
	1    3500 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 5350 3500 5350
Connection ~ 3600 5350
Wire Wire Line
	3600 5350 3600 5450
Wire Wire Line
	8800 3350 8800 4050
Wire Wire Line
	8800 4050 8800 4750
Wire Wire Line
	8800 4750 8800 5450
Wire Wire Line
	4250 4800 4250 6100
Wire Wire Line
	4750 3500 4750 3650
Wire Wire Line
	4350 3800 4350 5700
Wire Wire Line
	4200 3800 4350 3800
Wire Wire Line
	4200 3700 4500 3700
Wire Wire Line
	4200 3600 4650 3600
Wire Wire Line
	4200 3500 4750 3500
Wire Wire Line
	4200 2900 8800 2900
Wire Wire Line
	4200 2800 7800 2800
Wire Wire Line
	4200 2700 6800 2700
Wire Wire Line
	4200 2600 5800 2600
Wire Wire Line
	4150 1600 4150 1550
$Comp
L power:+5V #PWR06
U 1 1 609989CA
P 4150 1550
F 0 "#PWR06" H 4150 1400 50  0001 C CNN
F 1 "+5V" H 4165 1723 50  0000 C CNN
F 2 "" H 4150 1550 50  0001 C CNN
F 3 "" H 4150 1550 50  0001 C CNN
	1    4150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1600 4500 1550
$Comp
L power:+5V #PWR07
U 1 1 609937AD
P 4500 1550
F 0 "#PWR07" H 4500 1400 50  0001 C CNN
F 1 "+5V" H 4515 1723 50  0000 C CNN
F 2 "" H 4500 1550 50  0001 C CNN
F 3 "" H 4500 1550 50  0001 C CNN
	1    4500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1900 4500 2050
Wire Wire Line
	4150 1900 4150 2050
$Comp
L power:GND #PWR08
U 1 1 60985ED6
P 4150 2050
F 0 "#PWR08" H 4150 1800 50  0001 C CNN
F 1 "GND" V 4155 1922 50  0000 R CNN
F 2 "" H 4150 2050 50  0001 C CNN
F 3 "" H 4150 2050 50  0001 C CNN
	1    4150 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 60983B67
P 4500 2050
F 0 "#PWR09" H 4500 1800 50  0001 C CNN
F 1 "GND" V 4505 1922 50  0000 R CNN
F 2 "" H 4500 2050 50  0001 C CNN
F 3 "" H 4500 2050 50  0001 C CNN
	1    4500 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6095C8CB
P 4500 1750
F 0 "C3" V 4248 1750 50  0000 C CNN
F 1 "0.1uF" V 4339 1750 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4538 1600 50  0001 C CNN
F 3 "~" H 4500 1750 50  0001 C CNN
	1    4500 1750
	-1   0    0    1   
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U1
U 1 1 60954EF0
P 3600 3800
F 0 "U1" H 2956 3846 50  0000 R CNN
F 1 "ATmega328P-PU" H 2956 3755 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 3600 3800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 3600 3800 50  0001 C CNN
	1    3600 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6095B799
P 4150 1750
F 0 "C2" V 3898 1750 50  0000 C CNN
F 1 "0.1uF" V 3989 1750 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4188 1600 50  0001 C CNN
F 3 "~" H 4150 1750 50  0001 C CNN
	1    4150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2300 3700 2250
Wire Wire Line
	3700 2250 3600 2250
Wire Wire Line
	4300 4400 4200 4400
Wire Wire Line
	4400 4300 4200 4300
Wire Wire Line
	4300 5950 4300 4400
Wire Wire Line
	4400 6050 4400 4300
Wire Wire Line
	3450 6050 4400 6050
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 60992595
P 3250 5950
F 0 "J1" H 3358 6131 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3358 6040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3250 5950 50  0001 C CNN
F 3 "~" H 3250 5950 50  0001 C CNN
	1    3250 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5950 4300 5950
$Comp
L Regulator_Linear:LM7805_TO220 U2
U 1 1 609F0F97
P 4350 6800
F 0 "U2" H 4350 7042 50  0000 C CNN
F 1 "LM7805_TO220" H 4350 6951 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4350 7025 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 4350 6750 50  0001 C CNN
	1    4350 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6800 3800 6800
Wire Wire Line
	4350 7150 4350 7100
Wire Wire Line
	4650 6800 5350 6800
Wire Wire Line
	4350 7150 5350 7150
Wire Wire Line
	5350 7150 5350 7100
Wire Wire Line
	4350 7150 3300 7150
Wire Wire Line
	3300 7150 3300 7100
Connection ~ 4350 7150
$Comp
L power:GND #PWR010
U 1 1 60A477F0
P 4350 7200
F 0 "#PWR010" H 4350 6950 50  0001 C CNN
F 1 "GND" H 4355 7027 50  0000 C CNN
F 2 "" H 4350 7200 50  0001 C CNN
F 3 "" H 4350 7200 50  0001 C CNN
	1    4350 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 7150 4350 7200
$Comp
L Device:Battery BT1
U 1 1 60A91F65
P 2500 6950
F 0 "BT1" H 2608 6996 50  0000 L CNN
F 1 "+9V" H 2608 6905 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 2500 7010 50  0001 C CNN
F 3 "~" V 2500 7010 50  0001 C CNN
	1    2500 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6800 3300 6750
Wire Wire Line
	3300 6750 2500 6750
Wire Wire Line
	2500 7150 3300 7150
Connection ~ 3300 7150
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 60AA2643
P 3800 6800
F 0 "#FLG0103" H 3800 6875 50  0001 C CNN
F 1 "PWR_FLAG" V 3800 6927 50  0000 L CNN
F 2 "" H 3800 6800 50  0001 C CNN
F 3 "~" H 3800 6800 50  0001 C CNN
	1    3800 6800
	1    0    0    -1  
$EndComp
Connection ~ 3800 6800
Wire Wire Line
	3800 6800 4050 6800
$Comp
L power:+5V #PWR0101
U 1 1 60AA87C0
P 5350 6750
F 0 "#PWR0101" H 5350 6600 50  0001 C CNN
F 1 "+5V" H 5365 6923 50  0000 C CNN
F 2 "" H 5350 6750 50  0001 C CNN
F 3 "" H 5350 6750 50  0001 C CNN
	1    5350 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 6800 5350 6750
$Comp
L Device:CP C4
U 1 1 60AE3792
P 3300 6950
F 0 "C4" H 3418 6996 50  0000 L CNN
F 1 "100uF" H 3418 6905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 3338 6800 50  0001 C CNN
F 3 "~" H 3300 6950 50  0001 C CNN
	1    3300 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 60AE47CF
P 5350 6950
F 0 "C5" H 5468 6996 50  0000 L CNN
F 1 "100uF" H 5468 6905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 5388 6800 50  0001 C CNN
F 3 "~" H 5350 6950 50  0001 C CNN
	1    5350 6950
	1    0    0    -1  
$EndComp
Connection ~ 5350 6800
Connection ~ 3300 6800
$EndSCHEMATC
