module Idle_2_rom
	(
		input wire clk,
		input wire [6:0] row,
		input wire [6:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [6:0] row_reg;
	reg [6:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin









































		if(({row_reg, col_reg}>=14'b00000000000000) && ({row_reg, col_reg}<14'b01010010111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010010111111) && ({row_reg, col_reg}<14'b01010011000011)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01010011000011) && ({row_reg, col_reg}<14'b01010100111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010100111110) && ({row_reg, col_reg}<14'b01010101000101)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01010101000101) && ({row_reg, col_reg}<14'b01010110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010110111110) && ({row_reg, col_reg}<14'b01010111000010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01010111000010) && ({row_reg, col_reg}<14'b01010111000101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01010111000101)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01010111000110) && ({row_reg, col_reg}<14'b01011000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011000111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011000111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011000111111) && ({row_reg, col_reg}<14'b01011001000001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011001000001) && ({row_reg, col_reg}<14'b01011001000011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011001000011) && ({row_reg, col_reg}<14'b01011001000101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011001000101)) color_data = 12'b000000000001;

		if(({row_reg, col_reg}>=14'b01011001000110) && ({row_reg, col_reg}<14'b01011010111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011010111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011010111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011010111111) && ({row_reg, col_reg}<14'b01011011000001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011011000001) && ({row_reg, col_reg}<14'b01011011000100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011011000100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01011011000101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011011000110) && ({row_reg, col_reg}<14'b01011011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011011001111) && ({row_reg, col_reg}<14'b01011011010100)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01011011010100) && ({row_reg, col_reg}<14'b01011100111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011100111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011100111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011100111111) && ({row_reg, col_reg}<14'b01011101000001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011101000001) && ({row_reg, col_reg}<14'b01011101000011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011101000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011101000100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01011101000101) && ({row_reg, col_reg}<14'b01011101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011101001100) && ({row_reg, col_reg}<14'b01011101010100)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01011101010100) && ({row_reg, col_reg}<14'b01011110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011110111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011110111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011110111111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011111000000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01011111000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b01011111000010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011111000011)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01011111000100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011111000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011111000110) && ({row_reg, col_reg}<14'b01011111010100)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01011111010100) && ({row_reg, col_reg}<14'b01100000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100000111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100000111110)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01100000111111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100001000000) && ({row_reg, col_reg}<14'b01100001000100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100001000100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100001000101) && ({row_reg, col_reg}<14'b01100001010100)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100001010100) && ({row_reg, col_reg}<14'b01100010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100010110110)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01100010110111) && ({row_reg, col_reg}<14'b01100010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100010111010) && ({row_reg, col_reg}<14'b01100010111110)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01100010111110)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01100010111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100011000000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100011000001) && ({row_reg, col_reg}<14'b01100011000100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100011000100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100011000101) && ({row_reg, col_reg}<14'b01100011010011)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100011010011) && ({row_reg, col_reg}<14'b01100100110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100100110100) && ({row_reg, col_reg}<14'b01100100110110)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01100100110110) && ({row_reg, col_reg}<14'b01100100111000)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01100100111000) && ({row_reg, col_reg}<14'b01100100111101)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01100100111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100100111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100100111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100101000000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100101000001) && ({row_reg, col_reg}<14'b01100101000011)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01100101000011) && ({row_reg, col_reg}<14'b01100101000101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100101000101) && ({row_reg, col_reg}<14'b01100101001100)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100101001100) && ({row_reg, col_reg}<14'b01100110110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100110110010) && ({row_reg, col_reg}<14'b01100110110101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100110110101)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01100110110110)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01100110110111) && ({row_reg, col_reg}<14'b01100110111001)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01100110111001) && ({row_reg, col_reg}<14'b01100110111101)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01100110111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100110111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100110111111) && ({row_reg, col_reg}<14'b01100111000100)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01100111000100) && ({row_reg, col_reg}<14'b01101000110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101000110000) && ({row_reg, col_reg}<14'b01101000110011)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101000110011) && ({row_reg, col_reg}<14'b01101000110101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101000110101)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01101000110110) && ({row_reg, col_reg}<14'b01101000111000)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==14'b01101000111000)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}==14'b01101000111001)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b01101000111010) && ({row_reg, col_reg}<14'b01101000111101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101000111101) && ({row_reg, col_reg}<14'b01101000111111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01101000111111) && ({row_reg, col_reg}<14'b01101001000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101001000011)) color_data = 12'b100101110101;

		if(({row_reg, col_reg}>=14'b01101001000100) && ({row_reg, col_reg}<14'b01101010110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101010110000) && ({row_reg, col_reg}<14'b01101010110011)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01101010110011) && ({row_reg, col_reg}<14'b01101010110101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101010110101) && ({row_reg, col_reg}<14'b01101010110111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101010110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101010111000)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101010111001) && ({row_reg, col_reg}<14'b01101010111100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101010111100)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01101010111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01101010111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01101010111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101011000000) && ({row_reg, col_reg}<14'b01101011000011)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01101011000011) && ({row_reg, col_reg}<14'b01101011000101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101011000101) && ({row_reg, col_reg}<14'b01101011001000)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01101011001000) && ({row_reg, col_reg}<14'b01101100110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101100110010) && ({row_reg, col_reg}<14'b01101100110101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101100110101) && ({row_reg, col_reg}<14'b01101100111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101100111001) && ({row_reg, col_reg}<14'b01101100111100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101100111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01101100111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01101100111110)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101100111111)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01101101000000) && ({row_reg, col_reg}<14'b01101101000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101101000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101101000100) && ({row_reg, col_reg}<14'b01101101001001)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01101101001001) && ({row_reg, col_reg}<14'b01101110110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101110110010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101110110011) && ({row_reg, col_reg}<14'b01101110110101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101110110101) && ({row_reg, col_reg}<14'b01101110111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101110111000) && ({row_reg, col_reg}<14'b01101110111010)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01101110111010)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101110111011)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01101110111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01101110111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01101110111110)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01101110111111) && ({row_reg, col_reg}<14'b01101111000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101111000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101111000100) && ({row_reg, col_reg}<14'b01101111000110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101111000110) && ({row_reg, col_reg}<14'b01101111001001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01101111001001)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01101111001010) && ({row_reg, col_reg}<14'b01110000110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110000110010) && ({row_reg, col_reg}<14'b01110000110101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110000110101) && ({row_reg, col_reg}<14'b01110000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110000110111) && ({row_reg, col_reg}<14'b01110000111011)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01110000111011)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110000111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110000111101)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01110000111110)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01110000111111) && ({row_reg, col_reg}<14'b01110001000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110001000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110001000100) && ({row_reg, col_reg}<14'b01110001000110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110001000110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01110001000111) && ({row_reg, col_reg}<14'b01110001001001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110001001001)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01110001001010) && ({row_reg, col_reg}<14'b01110010110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010110010) && ({row_reg, col_reg}<14'b01110010110101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110010110101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110010110110) && ({row_reg, col_reg}<14'b01110010111011)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01110010111011) && ({row_reg, col_reg}<14'b01110010111101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110010111101)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01110010111110)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110010111111)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01110011000000) && ({row_reg, col_reg}<14'b01110011000100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110011000100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110011000101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110011000110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110011000111) && ({row_reg, col_reg}<14'b01110011001001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110011001001) && ({row_reg, col_reg}<14'b01110011001011)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01110011001011) && ({row_reg, col_reg}<14'b01110100110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110100110010) && ({row_reg, col_reg}<14'b01110100110110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110100110110) && ({row_reg, col_reg}<14'b01110100111001)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01110100111001)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==14'b01110100111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110100111011) && ({row_reg, col_reg}<14'b01110100111101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110100111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110100111110)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01110100111111)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01110101000000) && ({row_reg, col_reg}<14'b01110101000100)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110101000100)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01110101000101) && ({row_reg, col_reg}<14'b01110101000111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110101000111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110101001000) && ({row_reg, col_reg}<14'b01110101001011)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01110101001011) && ({row_reg, col_reg}<14'b01110110110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110110110010) && ({row_reg, col_reg}<14'b01110110110110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110110110110) && ({row_reg, col_reg}<14'b01110110111000)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01110110111000)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}>=14'b01110110111001) && ({row_reg, col_reg}<14'b01110110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110110111100) && ({row_reg, col_reg}<14'b01110110111111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110110111111) && ({row_reg, col_reg}<14'b01110111000100)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01110111000100)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110111000101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110111000111) && ({row_reg, col_reg}<14'b01110111001010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110111001010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110111001011) && ({row_reg, col_reg}<14'b01110111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110111010000)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01110111010001) && ({row_reg, col_reg}<14'b01111000110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000110010) && ({row_reg, col_reg}<14'b01111000110110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111000110110)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01111000110111) && ({row_reg, col_reg}<14'b01111000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000111101) && ({row_reg, col_reg}<14'b01111000111111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01111000111111)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01111001000000) && ({row_reg, col_reg}<14'b01111001000100)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111001000100)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01111001000101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111001000110) && ({row_reg, col_reg}<14'b01111001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111001001000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111001001001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111001001010) && ({row_reg, col_reg}<14'b01111001001101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111001001110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01111001001111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111001010000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01111001010001)) color_data = 12'b110110101000;

		if(({row_reg, col_reg}>=14'b01111001010010) && ({row_reg, col_reg}<14'b01111010110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010110011) && ({row_reg, col_reg}<14'b01111010110101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111010110101) && ({row_reg, col_reg}<14'b01111010111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010111110) && ({row_reg, col_reg}<14'b01111011000110)) color_data = 12'b100010000110;
		if(({row_reg, col_reg}>=14'b01111011000110) && ({row_reg, col_reg}<14'b01111011001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111011001001) && ({row_reg, col_reg}<14'b01111011001110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111011001110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01111011001111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111011010000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01111011010001)) color_data = 12'b110110101000;
		if(({row_reg, col_reg}==14'b01111011010010)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01111011010011) && ({row_reg, col_reg}<14'b01111100111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100111110) && ({row_reg, col_reg}<14'b01111101000110)) color_data = 12'b011001100101;
		if(({row_reg, col_reg}>=14'b01111101000110) && ({row_reg, col_reg}<14'b01111101001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111101001001) && ({row_reg, col_reg}<14'b01111101001110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111101001110) && ({row_reg, col_reg}<14'b01111101010001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111101010001)) color_data = 12'b110110101000;
		if(({row_reg, col_reg}==14'b01111101010010)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01111101010011) && ({row_reg, col_reg}<14'b01111110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111110111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b01111110111111) && ({row_reg, col_reg}<14'b01111111000110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01111111000110) && ({row_reg, col_reg}<14'b01111111001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111111001010) && ({row_reg, col_reg}<14'b01111111001110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111111001110) && ({row_reg, col_reg}<14'b01111111010010)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01111111010010) && ({row_reg, col_reg}<14'b10000000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000000111100) && ({row_reg, col_reg}<14'b10000000111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000000111110) && ({row_reg, col_reg}<14'b10000001000111)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10000001000111) && ({row_reg, col_reg}<14'b10000001001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000001001110) && ({row_reg, col_reg}<14'b10000001010000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b10000001010000)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b10000001010001) && ({row_reg, col_reg}<14'b10000010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000010111010) && ({row_reg, col_reg}<14'b10000010111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000010111101) && ({row_reg, col_reg}<14'b10000011000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000011000000) && ({row_reg, col_reg}<14'b10000011000110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000011000110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000011000111) && ({row_reg, col_reg}<14'b10000011001001)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000011001001) && ({row_reg, col_reg}<14'b10000100111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000100111000) && ({row_reg, col_reg}<14'b10000100111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000100111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000100111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10000100111111) && ({row_reg, col_reg}<14'b10000101000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000101000001) && ({row_reg, col_reg}<14'b10000101000101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000101000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000101000110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000101000111) && ({row_reg, col_reg}<14'b10000101001011)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000101001011) && ({row_reg, col_reg}<14'b10000110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000110110110) && ({row_reg, col_reg}<14'b10000110111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000110111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000110111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10000110111111) && ({row_reg, col_reg}<14'b10000111000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000111000010) && ({row_reg, col_reg}<14'b10000111000101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000111000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000111000110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000111000111) && ({row_reg, col_reg}<14'b10000111001101)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000111001101) && ({row_reg, col_reg}<14'b10001000110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001000110100) && ({row_reg, col_reg}<14'b10001000111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001000111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001000111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001000111111) && ({row_reg, col_reg}<14'b10001001000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001001000011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001001000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001001000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001001000110) && ({row_reg, col_reg}<14'b10001001001111)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001001001111) && ({row_reg, col_reg}<14'b10001010110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001010110011) && ({row_reg, col_reg}<14'b10001010111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001010111011) && ({row_reg, col_reg}<14'b10001010111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001010111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001010111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001010111111) && ({row_reg, col_reg}<14'b10001011000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001011000010) && ({row_reg, col_reg}<14'b10001011000100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001011000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001011000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001011000110) && ({row_reg, col_reg}<14'b10001011010001)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001011010001) && ({row_reg, col_reg}<14'b10001100110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001100110011) && ({row_reg, col_reg}<14'b10001100111010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001100111010) && ({row_reg, col_reg}<14'b10001100111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001100111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001100111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001100111111) && ({row_reg, col_reg}<14'b10001101000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001101000001) && ({row_reg, col_reg}<14'b10001101000011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001101000011) && ({row_reg, col_reg}<14'b10001101000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001101000101) && ({row_reg, col_reg}<14'b10001101000111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001101000111) && ({row_reg, col_reg}<14'b10001101001101)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001101001101) && ({row_reg, col_reg}<14'b10001101001111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001101001111) && ({row_reg, col_reg}<14'b10001101010011)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001101010011) && ({row_reg, col_reg}<14'b10001110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001110110011) && ({row_reg, col_reg}<14'b10001110110110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001110110110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001110110111) && ({row_reg, col_reg}<14'b10001110111001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001110111001) && ({row_reg, col_reg}<14'b10001110111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001110111101) && ({row_reg, col_reg}<14'b10001110111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001110111111) && ({row_reg, col_reg}<14'b10001111000010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001111000010) && ({row_reg, col_reg}<14'b10001111000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001111000100) && ({row_reg, col_reg}<14'b10001111001011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001111001011)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001111001100) && ({row_reg, col_reg}<14'b10001111001110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001111001110)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001111001111) && ({row_reg, col_reg}<14'b10001111010010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001111010010) && ({row_reg, col_reg}<14'b10001111010100)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001111010100) && ({row_reg, col_reg}<14'b10010000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010000110011) && ({row_reg, col_reg}<14'b10010000110101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010000110101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10010000110110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010000110111) && ({row_reg, col_reg}<14'b10010000111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010000111011) && ({row_reg, col_reg}<14'b10010000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010000111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010000111110) && ({row_reg, col_reg}<14'b10010001000010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010001000010) && ({row_reg, col_reg}<14'b10010001000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010001000100) && ({row_reg, col_reg}<14'b10010001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010001001000) && ({row_reg, col_reg}<14'b10010001001101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010001001101)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10010001001110) && ({row_reg, col_reg}<14'b10010001010011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010001010011)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10010001010100) && ({row_reg, col_reg}<14'b10010010110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010010110011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010010110100) && ({row_reg, col_reg}<14'b10010010111000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010010111000) && ({row_reg, col_reg}<14'b10010010111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010010111010) && ({row_reg, col_reg}<14'b10010010111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010010111101) && ({row_reg, col_reg}<14'b10010011000000)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010011000000) && ({row_reg, col_reg}<14'b10010011000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010011000011) && ({row_reg, col_reg}<14'b10010011001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010011001010) && ({row_reg, col_reg}<14'b10010011010000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010011010000) && ({row_reg, col_reg}<14'b10010011010100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010011010100)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10010011010101) && ({row_reg, col_reg}<14'b10010100110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010100110011) && ({row_reg, col_reg}<14'b10010100111001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010100111001) && ({row_reg, col_reg}<14'b10010100111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010100111101) && ({row_reg, col_reg}<14'b10010101000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010101000001) && ({row_reg, col_reg}<14'b10010101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010101001100) && ({row_reg, col_reg}<14'b10010101010000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010101010000) && ({row_reg, col_reg}<14'b10010101010100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010101010100) && ({row_reg, col_reg}<14'b10010101010110)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10010101010110) && ({row_reg, col_reg}<14'b10010110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010110110100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010110110101) && ({row_reg, col_reg}<14'b10010110110111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10010110110111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010110111000) && ({row_reg, col_reg}<14'b10010110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010110111101) && ({row_reg, col_reg}<14'b10010110111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010110111111) && ({row_reg, col_reg}<14'b10010111001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010111001110) && ({row_reg, col_reg}<14'b10010111010000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010111010000) && ({row_reg, col_reg}<14'b10010111010011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010111010011)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10010111010100) && ({row_reg, col_reg}<14'b10010111010111)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10010111010111) && ({row_reg, col_reg}<14'b10011000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011000110101)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011000110110)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10011000110111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011000111000) && ({row_reg, col_reg}<14'b10011001010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011001010010) && ({row_reg, col_reg}<14'b10011001010100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011001010100) && ({row_reg, col_reg}<14'b10011001011000)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011001011000) && ({row_reg, col_reg}<14'b10011010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011010110101) && ({row_reg, col_reg}<14'b10011010111000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011010111000) && ({row_reg, col_reg}<14'b10011011010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011011010100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011011010101) && ({row_reg, col_reg}<14'b10011011011001)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011011011001) && ({row_reg, col_reg}<14'b10011100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011100110110) && ({row_reg, col_reg}<14'b10011100111001)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10011100111001) && ({row_reg, col_reg}<14'b10011101010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011101010101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011101010110) && ({row_reg, col_reg}<14'b10011101011010)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011101011010) && ({row_reg, col_reg}<14'b10011110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011110110110) && ({row_reg, col_reg}<14'b10011110111001)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10011110111001) && ({row_reg, col_reg}<14'b10011111010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011111010110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10011111010111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011111011000)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10011111011001)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011111011010) && ({row_reg, col_reg}<14'b10100000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10100000110110)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10100000110111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10100000111000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100000111001) && ({row_reg, col_reg}<14'b10100001010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10100001010110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100001010111) && ({row_reg, col_reg}<14'b10100001011010)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10100001011010) && ({row_reg, col_reg}<14'b10100010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100010110101) && ({row_reg, col_reg}<14'b10100010110111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10100010110111) && ({row_reg, col_reg}<14'b10100010111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100010111001) && ({row_reg, col_reg}<14'b10100011010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100011010110) && ({row_reg, col_reg}<14'b10100011011010)) color_data = 12'b010001000010;













































		if(({row_reg, col_reg}>=14'b10100011011010) && ({row_reg, col_reg}<=14'b11111011111101)) color_data = 12'b000000000000;
	end
endmodule