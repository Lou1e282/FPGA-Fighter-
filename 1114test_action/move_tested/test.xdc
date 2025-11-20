

## ==========================
## CLOCK (100 MHz)
## ==========================
set_property PACKAGE_PIN E3 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
create_clock -add -name sys_clk -period 10.00 -waveform {0 5} [get_ports {clk}]


## ==========================
## BUTTONS
## Nexys A7 button pins:
## BtnL = P17
## BtnR = M17
## BtnU = M18
## BtnC = N17
## Btn
## ==========================

set_property PACKAGE_PIN P17 [get_ports {btn_left}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn_left}]

set_property PACKAGE_PIN M17 [get_ports {btn_right}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn_right}]

set_property PACKAGE_PIN M18 [get_ports {btn_jump}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn_jump}]

set_property PACKAGE_PIN N17 [get_ports {reset_btn}]
set_property IOSTANDARD LVCMOS33 [get_ports {reset_btn}]

set_property PACKAGE_PIN P18 [get_ports {btn_atk}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn_atk}]

## -- switches
## Switches
# set_property PACKAGE_PIN A8 [get_ports {sw0}]
# set_property IOSTANDARD LVCMOS33 [get_ports {sw0}]

# set_property PACKAGE_PIN C11 [get_ports {sw1}]
# set_property IOSTANDARD LVCMOS33 [get_ports {sw1}]


## ==========================
## VGA OUTPUT
## ==========================

## --- VGA RED ---
set_property PACKAGE_PIN A3 [get_ports {vga_r[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[0]}]

set_property PACKAGE_PIN B4 [get_ports {vga_r[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[1]}]

set_property PACKAGE_PIN C5 [get_ports {vga_r[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[2]}]

set_property PACKAGE_PIN A4 [get_ports {vga_r[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[3]}]


## --- VGA GREEN ---
set_property PACKAGE_PIN C6 [get_ports {vga_g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[0]}]

set_property PACKAGE_PIN A5 [get_ports {vga_g[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[1]}]

set_property PACKAGE_PIN B6 [get_ports {vga_g[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[2]}]

set_property PACKAGE_PIN A6 [get_ports {vga_g[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[3]}]


## --- VGA BLUE ---
set_property PACKAGE_PIN B7 [get_ports {vga_b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[0]}]

set_property PACKAGE_PIN C7 [get_ports {vga_b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[1]}]

set_property PACKAGE_PIN D7 [get_ports {vga_b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[2]}]

set_property PACKAGE_PIN D8 [get_ports {vga_b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[3]}]


## --- SYNC SIGNALS ---
set_property PACKAGE_PIN B11 [get_ports {hsync}]
set_property IOSTANDARD LVCMOS33 [get_ports {hsync}]

set_property PACKAGE_PIN B12 [get_ports {vsync}]
set_property IOSTANDARD LVCMOS33 [get_ports {vsync}]

