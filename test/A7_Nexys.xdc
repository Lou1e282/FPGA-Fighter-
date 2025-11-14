## Clock (100 MHz)
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name sys_clk -waveform {0 5} [get_ports clk]

## Buttons
set_property PACKAGE_PIN U18 [get_ports btn_left] 
set_property IOSTANDARD LVCMOS33 [get_ports btn_left]

set_property PACKAGE_PIN T18 [get_ports btn_right] 
set_property IOSTANDARD LVCMOS33 [get_ports btn_right]

set_property PACKAGE_PIN W19 [get_ports btn_jump] 
set_property IOSTANDARD LVCMOS33 [get_ports btn_jump]

set_property PACKAGE_PIN T16 [get_ports reset_btn] 
set_property IOSTANDARD LVCMOS33 [get_ports reset_btn]

## VGA HSync / VSync
set_property PACKAGE_PIN V4  [get_ports hsync]
set_property IOSTANDARD LVCMOS33 [get_ports hsync]

set_property PACKAGE_PIN U3  [get_ports vsync]
set_property IOSTANDARD LVCMOS33 [get_ports vsync]

## VGA Red (4 bits)
set_property PACKAGE_PIN W3 [get_ports {vga_r[3]}]
set_property PACKAGE_PIN Y3 [get_ports {vga_r[2]}]
set_property PACKAGE_PIN W2 [get_ports {vga_r[1]}]
set_property PACKAGE_PIN A3 [get_ports {vga_r[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[*]}]

## VGA Green (4 bits)
set_property PACKAGE_PIN U1 [get_ports {vga_g[3]}]
set_property PACKAGE_PIN V1 [get_ports {vga_g[2]}]
set_property PACKAGE_PIN P6 [get_ports {vga_g[1]}]
set_property PACKAGE_PIN R6 [get_ports {vga_g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[*]}]

## VGA Blue (4 bits)
set_property PACKAGE_PIN U6 [get_ports {vga_b[3]}]
set_property PACKAGE_PIN V6 [get_ports {vga_b[2]}]
set_property PACKAGE_PIN R5 [get_ports {vga_b[1]}]
set_property PACKAGE_PIN T5 [get_ports {vga_b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[*]}]
