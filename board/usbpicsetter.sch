EESchema Schematic File Version 2
LIBS:power
LIBS:device
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
LIBS:w_vacuum
LIBS:w_transistor
LIBS:w_rtx
LIBS:w_relay
LIBS:w_opto
LIBS:w_microcontrollers
LIBS:w_memory
LIBS:w_logic
LIBS:w_device
LIBS:w_connectors
LIBS:w_analog
LIBS:microchip_pic10mcu
LIBS:logo
LIBS:jcgb
LIBS:usbpicsetter-cache
EELAYER 25 0
EELAYER END
$Descr User 8299 5843
encoding utf-8
Sheet 1 1
Title "usbpicresetter"
Date "2015-07-20"
Rev "0.2"
Comp "con-f-use"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PIC10F200-I/OT IC1
U 1 1 55A82403
P 3600 2000
F 0 "IC1" H 3150 2450 50  0000 L CNN
F 1 "PIC10F200" H 3150 2350 50  0000 L CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23-6" H 3150 1650 50  0001 L CIN
F 3 "" H 3600 2000 50  0000 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 55A824A8
P 2700 1650
F 0 "#PWR01" H 2700 1500 50  0001 C CNN
F 1 "VCC" H 2700 1800 50  0000 C CNN
F 2 "" H 2700 1650 60  0000 C CNN
F 3 "" H 2700 1650 60  0000 C CNN
	1    2700 1650
	1    0    0    -1  
$EndComp
$Comp
L MOS_P_GSD Q1
U 1 1 55A8259A
P 4500 2650
F 0 "Q1" V 4500 2450 70  0000 C CNN
F 1 "PMOS" V 4650 2650 60  0000 C CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23" H 4500 2650 60  0001 C CNN
F 3 "" H 4500 2650 60  0000 C CNN
	1    4500 2650
	0    -1   1    0   
$EndComp
$Comp
L C C1
U 1 1 55A82A96
P 2700 2000
F 0 "C1" H 2725 2100 50  0000 L CNN
F 1 "100nF" H 2725 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2738 1850 30  0001 C CNN
F 3 "" H 2700 2000 60  0000 C CNN
	1    2700 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P1
U 1 1 55A82EB5
P 5150 2000
F 0 "P1" H 5150 2300 50  0000 C CNN
F 1 "ICSP" V 5250 2000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 5150 2000 60  0001 C CNN
F 3 "" H 5150 2000 60  0000 C CNN
	1    5150 2000
	1    0    0    1   
$EndComp
$Comp
L VCC #PWR02
U 1 1 55A83082
P 4800 2100
F 0 "#PWR02" H 4800 1950 50  0001 C CNN
F 1 "VCC" H 4800 2250 50  0000 C CNN
F 2 "" H 4800 2100 60  0000 C CNN
F 3 "" H 4800 2100 60  0000 C CNN
	1    4800 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 55A830FE
P 4700 2000
F 0 "#PWR03" H 4700 1750 50  0001 C CNN
F 1 "GND" H 4700 1850 50  0000 C CNN
F 2 "" H 4700 2000 60  0000 C CNN
F 3 "" H 4700 2000 60  0000 C CNN
	1    4700 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 55A837E1
P 4700 3200
F 0 "#PWR04" H 4700 2950 50  0001 C CNN
F 1 "GND" H 4700 3050 50  0000 C CNN
F 2 "" H 4700 3200 60  0000 C CNN
F 3 "" H 4700 3200 60  0000 C CNN
	1    4700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1650 2700 1850
Wire Wire Line
	2700 2150 2700 2350
Wire Wire Line
	5300 2750 4650 2750
Wire Wire Line
	5300 2950 4200 2950
Wire Wire Line
	5300 2850 4200 2850
Wire Wire Line
	4200 1800 4900 1800
Connection ~ 2700 1700
Connection ~ 2700 2300
Wire Wire Line
	4200 2100 4600 2100
Wire Wire Line
	4600 2100 4600 2200
Wire Wire Line
	4600 2200 4950 2200
Wire Wire Line
	4800 2100 4950 2100
Wire Wire Line
	4700 2000 4950 2000
Wire Wire Line
	4900 1900 4950 1900
Wire Wire Line
	4900 1800 4900 1900
Wire Wire Line
	4950 1800 4950 1800
Wire Wire Line
	4950 1800 4950 1750
Wire Wire Line
	4950 1750 4600 1750
Wire Wire Line
	4600 1750 4600 1900
Wire Wire Line
	4600 1900 4200 1900
Wire Wire Line
	4200 2750 4350 2750
Wire Wire Line
	4700 3050 4700 3200
$Comp
L GND #PWR05
U 1 1 55A8C90D
P 2700 2350
F 0 "#PWR05" H 2700 2100 50  0001 C CNN
F 1 "GND" H 2700 2200 50  0000 C CNN
F 2 "" H 2700 2350 60  0000 C CNN
F 3 "" H 2700 2350 60  0000 C CNN
	1    2700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2000 4500 2000
Wire Wire Line
	4500 2000 4500 2550
Wire Wire Line
	3800 3250 3800 3400
Wire Wire Line
	3800 3400 5700 3400
Wire Wire Line
	5700 3400 5700 3250
Wire Wire Line
	4200 3050 5300 3050
Connection ~ 4700 3050
$Comp
L USB_A USB-IN1
U 1 1 55A8CBC2
P 3900 2950
F 0 "USB-IN1" V 4100 2900 50  0000 C CNN
F 1 "Male" V 3600 2950 50  0000 C CNN
F 2 "usbpicsetter:USB-A-PCB" V 3850 2850 60  0001 C CNN
F 3 "" V 3850 2850 60  0000 C CNN
	1    3900 2950
	0    -1   1    0   
$EndComp
$Comp
L USB_A USB_OUT1
U 1 1 55A8D623
P 5600 2950
F 0 "USB_OUT1" V 5800 2800 50  0000 C CNN
F 1 "Female" V 5300 2950 50  0000 C CNN
F 2 "usbpicsetter:USB-A-S-NOSILK-FEMALE" V 5550 2850 60  0001 C CNN
F 3 "" V 5550 2850 60  0000 C CNN
	1    5600 2950
	0    1    1    0   
$EndComp
$Comp
L OPEN_HARDWARE_1 LOGO1
U 1 1 55A8E646
P 7450 4400
F 0 "LOGO1" H 7450 4675 60  0001 C CNN
F 1 "open hardware" H 7450 4175 60  0000 C CNN
F 2 "w_logo:Logo_silk_OSHW_6x6mm" H 7450 4400 60  0001 C CNN
F 3 "" H 7450 4400 60  0000 C CNN
	1    7450 4400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 55A902B6
P 4250 2700
F 0 "#PWR06" H 4250 2550 50  0001 C CNN
F 1 "VCC" H 4250 2850 50  0000 C CNN
F 2 "" H 4250 2700 60  0000 C CNN
F 3 "" H 4250 2700 60  0000 C CNN
	1    4250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2700 4250 2750
Connection ~ 4250 2750
$Comp
L R R1
U 1 1 55A90417
P 4700 2300
F 0 "R1" V 4780 2300 50  0000 C CNN
F 1 "10k" V 4700 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4630 2300 30  0001 C CNN
F 3 "" H 4700 2300 30  0000 C CNN
	1    4700 2300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 55A9049E
P 4900 2350
F 0 "#PWR07" H 4900 2100 50  0001 C CNN
F 1 "GND" H 4900 2200 50  0000 C CNN
F 2 "" H 4900 2350 60  0000 C CNN
F 3 "" H 4900 2350 60  0000 C CNN
	1    4900 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2300 4550 2300
Connection ~ 4500 2300
Wire Wire Line
	4850 2300 4900 2300
Wire Wire Line
	4900 2300 4900 2350
$Comp
L TVS D1
U 1 1 55A90C3A
P 2400 2000
F 0 "D1" H 2400 2150 50  0000 C CNN
F 1 "TVS" H 2400 1850 50  0000 C CNN
F 2 "w_smd_resistors:r_0402" H 2400 2000 60  0001 C CNN
F 3 "" H 2400 2000 60  0000 C CNN
	1    2400 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 1700 3000 1800
Wire Wire Line
	3000 2300 3000 2200
Wire Wire Line
	2400 1700 3000 1700
Wire Wire Line
	2400 2300 3000 2300
$Comp
L unethische.org O1
U 1 1 55A97520
P 6900 4400
F 0 "O1" H 6900 4600 197 0001 C CNN
F 1 "unethische.org" H 6900 4200 30  0000 C CNN
F 2 "jcgb:unethi_copper_silk" H 6900 4400 60  0001 C CNN
F 3 "" H 6900 4400 60  0000 C CNN
	1    6900 4400
	1    0    0    -1  
$EndComp
Text Label 4850 2850 0    4    ~ 0
D-
Text Label 4850 2950 0    4    ~ 0
D+
Text Label 4850 2750 0    4    ~ 0
Vout
Text Label 4350 1800 0    4    ~ 0
DAT
Text Label 4350 1900 0    4    ~ 0
CLK
Text Label 4350 2000 0    4    ~ 0
PSW
Text Label 4350 2100 0    4    ~ 0
VPP
$Comp
L Gnu_GPL LO?
U 1 1 55BBDC0C
P 6450 4400
F 0 "LO?" H 6500 4750 60  0001 C CNN
F 1 "Gnu_GPL" H 6450 4050 60  0001 C CNN
F 2 "" H 6450 4400 60  0000 C CNN
F 3 "" H 6450 4400 60  0000 C CNN
	1    6450 4400
	1    0    0    -1  
$EndComp
Text Notes 3600 4600 0    60   ~ 0
Automatically resets power to an USB device\nTiming can be set in software.
$EndSCHEMATC
