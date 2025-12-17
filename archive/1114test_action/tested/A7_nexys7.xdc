### Nexys N4 to Nexys A7 XDC conversion script: 
### Author : Sharath Krishnan - sharath@usc.edu 

set_property PACKAGE_PIN E3 [get_ports ClkPort]							
	set_property IOSTANDARD LVCMOS33 [get_ports ClkPort]
	create_clock -add -name ClkPort -period 10.00 [get_ports ClkPort]

set_property PACKAGE_PIN P17 [get_ports {btn_left}]     ;# BtnL
set_property IOSTANDARD LVCMOS33 [get_ports {btn_left}]

set_property PACKAGE_PIN M17 [get_ports {btn_right}]    ;# BtnR
set_property IOSTANDARD LVCMOS33 [get_ports {btn_right}]

set_property PACKAGE_PIN M18 [get_ports {btn_jump}]     ;# BtnU
set_property IOSTANDARD LVCMOS33 [get_ports {btn_jump}]

set_property PACKAGE_PIN N17 [get_ports {reset_btn}]    ;# BtnC
set_property IOSTANDARD LVCMOS33 [get_ports {reset_btn}]

## Switches
set_property PACKAGE_PIN A8 [get_ports {sw0}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw0}]

set_property PACKAGE_PIN C11 [get_ports {sw1}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw1}]


set_property PACKAGE_PIN A3 [get_ports {vgaR[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaR[0]}]

set_property PACKAGE_PIN B4 [get_ports {vgaR[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaR[1]}]

set_property PACKAGE_PIN C5 [get_ports {vgaR[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaR[2]}]

set_property PACKAGE_PIN A4 [get_ports {vgaR[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaR[3]}]

set_property PACKAGE_PIN B7 [get_ports {vgaB[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaB[0]}]

set_property PACKAGE_PIN C7 [get_ports {vgaB[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaB[1]}]

set_property PACKAGE_PIN D7 [get_ports {vgaB[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaB[2]}]

set_property PACKAGE_PIN D8 [get_ports {vgaB[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaB[3]}]

set_property PACKAGE_PIN C6 [get_ports {vgaG[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaG[0]}]

set_property PACKAGE_PIN A5 [get_ports {vgaG[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaG[1]}]

set_property PACKAGE_PIN B6 [get_ports {vgaG[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaG[2]}]

set_property PACKAGE_PIN A6 [get_ports {vgaG[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaG[3]}]

set_property PACKAGE_PIN B11 [get_ports hSync]						
	set_property IOSTANDARD LVCMOS33 [get_ports hSync]

set_property PACKAGE_PIN B12 [get_ports vSync]						
	set_property IOSTANDARD LVCMOS33 [get_ports vSync]

set_property PACKAGE_PIN L13 [get_ports QuadSpiFlashCS]					
	set_property IOSTANDARD LVCMOS33 [get_ports QuadSpiFlashCS]

set_property PACKAGE_PIN L18 [get_ports RamCS]					
	set_property IOSTANDARD LVCMOS33 [get_ports RamCS]

set_property PACKAGE_PIN H14 [get_ports MemOE]					
	set_property IOSTANDARD LVCMOS33 [get_ports MemOE]

set_property PACKAGE_PIN R11 [get_ports MemWR]					
	set_property IOSTANDARD LVCMOS33 [get_ports MemWR]
	
