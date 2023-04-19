##Clock
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { clk100mhz }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk100mhz}];
##7 segment display
set_property -dict { PACKAGE_PIN T10 IOSTANDARD LVCMOS33 } [get_ports { cathodes[0] }];
set_property -dict { PACKAGE_PIN R10 IOSTANDARD LVCMOS33 } [get_ports { cathodes[1] }];
set_property -dict { PACKAGE_PIN K16 IOSTANDARD LVCMOS33 } [get_ports { cathodes[2] }];
set_property -dict { PACKAGE_PIN K13 IOSTANDARD LVCMOS33 } [get_ports { cathodes[3] }];
set_property -dict { PACKAGE_PIN P15 IOSTANDARD LVCMOS33 } [get_ports { cathodes[4] }];
set_property -dict { PACKAGE_PIN T11 IOSTANDARD LVCMOS33 } [get_ports { cathodes[5] }];
set_property -dict { PACKAGE_PIN L18 IOSTANDARD LVCMOS33 } [get_ports { cathodes[6] }];
st_property -dict { PACKAGE_PIN H15 IOSTANDARD LVCMOS33 } [get_ports { cathodes[7] }]; 
set_property -dict { PACKAGE_PIN J17 IOSTANDARD LVCMOS33 } [get_ports { anodes[0] }];
set_property -dict { PACKAGE_PIN J18 IOSTANDARD LVCMOS33 } [get_ports { anodes[1] }];
set_property -dict { PACKAGE_PIN T9 IOSTANDARD LVCMOS33 } [get_ports { anodes[2] }];
set_property -dict { PACKAGE_PIN J14 IOSTANDARD LVCMOS33 } [get_ports { anodes[3] }];
set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33 } [get_ports { anodes[4] }];
set_property -dict { PACKAGE_PIN T14 IOSTANDARD LVCMOS33 } [get_ports { anodes[5] }];
set_property -dict { PACKAGE_PIN K2 IOSTANDARD LVCMOS33 } [get_ports { anodes[6] }];
set_property -dict { PACKAGE_PIN U13 IOSTANDARD LVCMOS33 } [get_ports { anodes[7] }];
##Buttons
set_property -dict { PACKAGE_PIN M18 IOSTANDARD LVCMOS33 } [get_ports { reset }];
##PS2
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN F4} [get_ports {PS2_clk} ]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN B2} [get_ports {PS2_dat} ]
