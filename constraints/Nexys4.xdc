## This file is a general .xdc for the Nexys4 rev B board

## Clock signal
##Bank = 35, Pin name = IO_L12P_T1_MRCC_35,					Sch name = CLK100MHZ
set_property PACKAGE_PIN E3 [get_ports clk100mhz]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk100mhz]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk100mhz]
 
##7 cathodesment display
##Bank = 34, Pin name = IO_L2N_T0_34,						Sch name = CA
set_property PACKAGE_PIN L3 [get_ports {cathodes[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathodes[0]}]
##Bank = 34, Pin name = IO_L3N_T0_DQS_34,					Sch name = CB
set_property PACKAGE_PIN N1 [get_ports {cathodes[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathodes[1]}]
##Bank = 34, Pin name = IO_L6N_T0_VREF_34,					Sch name = CC
set_property PACKAGE_PIN L5 [get_ports {cathodes[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathodes[2]}]
##Bank = 34, Pin name = IO_L5N_T0_34,						Sch name = CD
set_property PACKAGE_PIN L4 [get_ports {cathodes[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathodes[3]}]
##Bank = 34, Pin name = IO_L2P_T0_34,						Sch name = CE
set_property PACKAGE_PIN K3 [get_ports {cathodes[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathodes[4]}]
##Bank = 34, Pin name = IO_L4N_T0_34,						Sch name = CF
set_property PACKAGE_PIN M2 [get_ports {cathodes[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathodes[5]}]
##Bank = 34, Pin name = IO_L6P_T0_34,						Sch name = CG
set_property PACKAGE_PIN L6 [get_ports {cathodes[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathodes[6]}]

##Bank = 34, Pin name = IO_L16P_T2_34,						Sch name = DP
set_property PACKAGE_PIN M4 [get_ports cathodes[7]]							
	set_property IOSTANDARD LVCMOS33 [get_ports cathodes[7]]

##Bank = 34, Pin name = IO_L18N_T2_34,						Sch name = AN0
set_property PACKAGE_PIN N6 [get_ports {anodes[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[0]}]
##Bank = 34, Pin name = IO_L18P_T2_34,						Sch name = AN1
set_property PACKAGE_PIN M6 [get_ports {anodes[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[1]}]
##Bank = 34, Pin name = IO_L4P_T0_34,						Sch name = AN2
set_property PACKAGE_PIN M3 [get_ports {anodes[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[2]}]
##Bank = 34, Pin name = IO_L13_T2_MRCC_34,					Sch name = AN3
set_property PACKAGE_PIN N5 [get_ports {anodes[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[3]}]
##Bank = 34, Pin name = IO_L3P_T0_DQS_34,					Sch name = AN4
set_property PACKAGE_PIN N2 [get_ports {anodes[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[4]}]
##Bank = 34, Pin name = IO_L16N_T2_34,						Sch name = AN5
set_property PACKAGE_PIN N4 [get_ports {anodes[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[5]}]
##Bank = 34, Pin name = IO_L1P_T0_34,						Sch name = AN6
set_property PACKAGE_PIN L1 [get_ports {anodes[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[6]}]
##Bank = 34, Pin name = IO_L1N_T034,							Sch name = AN7
et_property PACKAGE_PIN M1 [get_ports {anodes[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[7]}]



##Buttons
##Bank = 15, Pin name = IO_L11N_T1_SRCC_15,					Sch name = BTNC
set_property PACKAGE_PIN E16 [get_ports reset]						
	set_property IOSTANDARD LVCMOS33 [get_ports reset]

##USB HID (PS/2)
##Bank = 35, Pin name = IO_L13P_T2_MRCC_35,					Sch name = PS2_CLK
set_property PACKAGE_PIN F4 [get_ports PS2_clk]						
	set_property IOSTANDARD LVCMOS33 [get_ports PS2_clk]
	set_property PULLUP true [get_ports PS2_clk]
##Bank = 35, Pin name = IO_L10N_T1_AD15N_35,					Sch name = PS2_DATA
set_property PACKAGE_PIN B2 [get_ports PS2_dat]					
	set_property IOSTANDARD LVCMOS33 [get_ports PS2_dat]	
	set_property PULLUP true [get_ports PS2_dat]

