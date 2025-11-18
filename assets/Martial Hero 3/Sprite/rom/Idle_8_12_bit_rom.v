module Idle_8_rom
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











































		if(({row_reg, col_reg}>=14'b00000000000000) && ({row_reg, col_reg}<14'b01010110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010110111101) && ({row_reg, col_reg}<14'b01010111000001)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01010111000001) && ({row_reg, col_reg}<14'b01011000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011000111100) && ({row_reg, col_reg}<14'b01011001000011)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01011001000011) && ({row_reg, col_reg}<14'b01011010111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011010111100) && ({row_reg, col_reg}<14'b01011011000000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011011000000) && ({row_reg, col_reg}<14'b01011011000011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011011000011)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01011011000100) && ({row_reg, col_reg}<14'b01011100111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011100111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011100111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011100111101) && ({row_reg, col_reg}<14'b01011100111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011100111111) && ({row_reg, col_reg}<14'b01011101000001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011101000001) && ({row_reg, col_reg}<14'b01011101000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011101000011)) color_data = 12'b000000000001;

		if(({row_reg, col_reg}>=14'b01011101000100) && ({row_reg, col_reg}<14'b01011110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011110111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011110111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011110111101) && ({row_reg, col_reg}<14'b01011110111111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011110111111) && ({row_reg, col_reg}<14'b01011111000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011111000010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01011111000011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011111000100) && ({row_reg, col_reg}<14'b01011111001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011111001101) && ({row_reg, col_reg}<14'b01011111010010)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01011111010010) && ({row_reg, col_reg}<14'b01100000111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100000111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100000111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100000111101) && ({row_reg, col_reg}<14'b01100000111111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100000111111) && ({row_reg, col_reg}<14'b01100001000001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100001000001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100001000010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01100001000011) && ({row_reg, col_reg}<14'b01100001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100001001010) && ({row_reg, col_reg}<14'b01100001010010)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100001010010) && ({row_reg, col_reg}<14'b01100010111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100010111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100010111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100010111101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01100010111110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100010111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b01100011000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100011000001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100011000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01100011000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100011000100) && ({row_reg, col_reg}<14'b01100011010010)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100011010010) && ({row_reg, col_reg}<14'b01100100111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100100111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100100111100)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01100100111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100100111110) && ({row_reg, col_reg}<14'b01100101000010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100101000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100101000011) && ({row_reg, col_reg}<14'b01100101010010)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100101010010) && ({row_reg, col_reg}<14'b01100110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100110110100)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01100110110101) && ({row_reg, col_reg}<14'b01100110111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100110111000) && ({row_reg, col_reg}<14'b01100110111100)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01100110111100)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01100110111101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100110111110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100110111111) && ({row_reg, col_reg}<14'b01100111000010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100111000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100111000011) && ({row_reg, col_reg}<14'b01100111010001)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100111010001) && ({row_reg, col_reg}<14'b01101000110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101000110010) && ({row_reg, col_reg}<14'b01101000110100)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01101000110100) && ({row_reg, col_reg}<14'b01101000110110)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101000110110) && ({row_reg, col_reg}<14'b01101000111011)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01101000111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01101000111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01101000111101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101000111110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101000111111) && ({row_reg, col_reg}<14'b01101001000001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01101001000001) && ({row_reg, col_reg}<14'b01101001000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101001000011) && ({row_reg, col_reg}<14'b01101001001010)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01101001001010) && ({row_reg, col_reg}<14'b01101010110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101010110000) && ({row_reg, col_reg}<14'b01101010110011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101010110011)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01101010110100)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01101010110101) && ({row_reg, col_reg}<14'b01101010110111)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101010110111) && ({row_reg, col_reg}<14'b01101010111011)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01101010111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01101010111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01101010111101) && ({row_reg, col_reg}<14'b01101011000010)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01101011000010) && ({row_reg, col_reg}<14'b01101100101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101100101110) && ({row_reg, col_reg}<14'b01101100110001)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101100110001) && ({row_reg, col_reg}<14'b01101100110011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101100110011)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01101100110100) && ({row_reg, col_reg}<14'b01101100110110)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==14'b01101100110110)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}==14'b01101100110111)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b01101100111000) && ({row_reg, col_reg}<14'b01101100111011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101100111011) && ({row_reg, col_reg}<14'b01101100111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01101100111101) && ({row_reg, col_reg}<14'b01101101000001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101101000001)) color_data = 12'b100101110101;

		if(({row_reg, col_reg}>=14'b01101101000010) && ({row_reg, col_reg}<14'b01101110101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101110101110) && ({row_reg, col_reg}<14'b01101110110001)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01101110110001) && ({row_reg, col_reg}<14'b01101110110011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101110110011) && ({row_reg, col_reg}<14'b01101110110101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101110110110)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101110110111) && ({row_reg, col_reg}<14'b01101110111010)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101110111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01101110111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01101110111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01101110111101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101110111110) && ({row_reg, col_reg}<14'b01101111000001)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01101111000001) && ({row_reg, col_reg}<14'b01101111000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101111000011) && ({row_reg, col_reg}<14'b01101111000110)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01101111000110) && ({row_reg, col_reg}<14'b01110000110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110000110000) && ({row_reg, col_reg}<14'b01110000110011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110000110011) && ({row_reg, col_reg}<14'b01110000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110000110111) && ({row_reg, col_reg}<14'b01110000111010)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01110000111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110000111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110000111100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01110000111101)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01110000111110) && ({row_reg, col_reg}<14'b01110001000001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110001000001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110001000010) && ({row_reg, col_reg}<14'b01110001000111)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01110001000111) && ({row_reg, col_reg}<14'b01110010110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110010110000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110010110001) && ({row_reg, col_reg}<14'b01110010110011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110010110011) && ({row_reg, col_reg}<14'b01110010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010110110) && ({row_reg, col_reg}<14'b01110010111000)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01110010111000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01110010111001)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110010111010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110010111011)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01110010111100)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01110010111101) && ({row_reg, col_reg}<14'b01110011000001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110011000001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110011000010) && ({row_reg, col_reg}<14'b01110011000100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110011000100) && ({row_reg, col_reg}<14'b01110011000111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01110011000111)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01110011001000) && ({row_reg, col_reg}<14'b01110100110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110100110000) && ({row_reg, col_reg}<14'b01110100110011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110100110011) && ({row_reg, col_reg}<14'b01110100110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110100110101) && ({row_reg, col_reg}<14'b01110100111001)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01110100111001) && ({row_reg, col_reg}<14'b01110100111011)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110100111011)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01110100111100)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01110100111101) && ({row_reg, col_reg}<14'b01110101000001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110101000001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110101000010) && ({row_reg, col_reg}<14'b01110101000100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110101000100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01110101000101) && ({row_reg, col_reg}<14'b01110101000111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110101000111)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01110101001000) && ({row_reg, col_reg}<14'b01110110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110110110000) && ({row_reg, col_reg}<14'b01110110110011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110110110011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110110110100) && ({row_reg, col_reg}<14'b01110110111001)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01110110111001) && ({row_reg, col_reg}<14'b01110110111011)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110110111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110110111100)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110110111101)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01110110111110) && ({row_reg, col_reg}<14'b01110111000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110111000010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110111000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110111000100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110111000101) && ({row_reg, col_reg}<14'b01110111000111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110111000111) && ({row_reg, col_reg}<14'b01110111001001)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01110111001001) && ({row_reg, col_reg}<14'b01111000110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000110000) && ({row_reg, col_reg}<14'b01111000110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111000110100) && ({row_reg, col_reg}<14'b01111000110111)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01111000110111)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==14'b01111000111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000111001) && ({row_reg, col_reg}<14'b01111000111100)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01111000111100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01111000111101)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01111000111110) && ({row_reg, col_reg}<14'b01111001000010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111001000010)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01111001000011) && ({row_reg, col_reg}<14'b01111001000101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111001000101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111001000110) && ({row_reg, col_reg}<14'b01111001001001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01111001001001) && ({row_reg, col_reg}<14'b01111001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111001001111)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01111001010000) && ({row_reg, col_reg}<14'b01111010110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010110000) && ({row_reg, col_reg}<14'b01111010110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111010110100) && ({row_reg, col_reg}<14'b01111010110110)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01111010110110)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}>=14'b01111010110111) && ({row_reg, col_reg}<14'b01111010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010111010) && ({row_reg, col_reg}<14'b01111010111101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111010111101) && ({row_reg, col_reg}<14'b01111011000010)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01111011000010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111011000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111011000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111011000101) && ({row_reg, col_reg}<14'b01111011001000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111011001000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111011001001) && ({row_reg, col_reg}<14'b01111011001100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111011001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111011001101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01111011001110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111011001111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01111011010000)) color_data = 12'b110110101000;

		if(({row_reg, col_reg}>=14'b01111011010001) && ({row_reg, col_reg}<14'b01111100110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100110000) && ({row_reg, col_reg}<14'b01111100110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111100110100)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01111100110101) && ({row_reg, col_reg}<14'b01111100111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100111011) && ({row_reg, col_reg}<14'b01111100111101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01111100111101)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01111100111110) && ({row_reg, col_reg}<14'b01111101000010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111101000010)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01111101000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111101000100) && ({row_reg, col_reg}<14'b01111101000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111101000110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111101000111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111101001000) && ({row_reg, col_reg}<14'b01111101001101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111101001101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01111101001110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111101001111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01111101010000)) color_data = 12'b110110101000;
		if(({row_reg, col_reg}==14'b01111101010001)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01111101010010) && ({row_reg, col_reg}<14'b01111110110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110110001) && ({row_reg, col_reg}<14'b01111110110011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111110110011) && ({row_reg, col_reg}<14'b01111110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110111100) && ({row_reg, col_reg}<14'b01111111000100)) color_data = 12'b100010000110;
		if(({row_reg, col_reg}>=14'b01111111000100) && ({row_reg, col_reg}<14'b01111111000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111111000111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111111001000) && ({row_reg, col_reg}<14'b01111111001101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111111001101) && ({row_reg, col_reg}<14'b01111111010000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111111010000)) color_data = 12'b110110101000;
		if(({row_reg, col_reg}==14'b01111111010001)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01111111010010) && ({row_reg, col_reg}<14'b10000000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000000111100) && ({row_reg, col_reg}<14'b10000001000100)) color_data = 12'b011001100101;
		if(({row_reg, col_reg}>=14'b10000001000100) && ({row_reg, col_reg}<14'b10000001001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000001001001) && ({row_reg, col_reg}<14'b10000001001101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10000001001101) && ({row_reg, col_reg}<14'b10000001010001)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b10000001010001) && ({row_reg, col_reg}<14'b10000010111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000010111100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10000010111101) && ({row_reg, col_reg}<14'b10000011000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000011000100) && ({row_reg, col_reg}<14'b10000011001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000011001101) && ({row_reg, col_reg}<14'b10000011001111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b10000011001111)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b10000011010000) && ({row_reg, col_reg}<14'b10000100111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000100111001) && ({row_reg, col_reg}<14'b10000100111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000100111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000100111100) && ({row_reg, col_reg}<14'b10000101000101)) color_data = 12'b010001010011;

		if(({row_reg, col_reg}>=14'b10000101000101) && ({row_reg, col_reg}<14'b10000110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000110110100) && ({row_reg, col_reg}<14'b10000110111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000110111011) && ({row_reg, col_reg}<14'b10000110111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000110111110) && ({row_reg, col_reg}<14'b10000111000100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000111000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000111000101) && ({row_reg, col_reg}<14'b10000111000111)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000111000111) && ({row_reg, col_reg}<14'b10001000110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001000110000) && ({row_reg, col_reg}<14'b10001000111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001000111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001000111100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001000111101) && ({row_reg, col_reg}<14'b10001000111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001000111111) && ({row_reg, col_reg}<14'b10001001000011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001001000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001001000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001001000101) && ({row_reg, col_reg}<14'b10001001001001)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001001001001) && ({row_reg, col_reg}<14'b10001010101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001010101111) && ({row_reg, col_reg}<14'b10001010111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001010111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001010111100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001010111101) && ({row_reg, col_reg}<14'b10001011000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001011000000) && ({row_reg, col_reg}<14'b10001011000011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001011000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001011000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001011000101) && ({row_reg, col_reg}<14'b10001011001011)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001011001011) && ({row_reg, col_reg}<14'b10001100101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001100101111) && ({row_reg, col_reg}<14'b10001100110101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001100110101) && ({row_reg, col_reg}<14'b10001100111001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001100111001) && ({row_reg, col_reg}<14'b10001100111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001100111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001100111100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001100111101) && ({row_reg, col_reg}<14'b10001101000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001101000001)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001101000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001101000011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001101000100) && ({row_reg, col_reg}<14'b10001101001101)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001101001101) && ({row_reg, col_reg}<14'b10001110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001110101111) && ({row_reg, col_reg}<14'b10001110110010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001110110010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001110110011) && ({row_reg, col_reg}<14'b10001110110101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001110110101) && ({row_reg, col_reg}<14'b10001110111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001110111100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001110111101) && ({row_reg, col_reg}<14'b10001111000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001111000000) && ({row_reg, col_reg}<14'b10001111000010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001111000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001111000011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001111000100) && ({row_reg, col_reg}<14'b10001111001111)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001111001111) && ({row_reg, col_reg}<14'b10010000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010000101111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10010000110000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010000110001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10010000110010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010000110011) && ({row_reg, col_reg}<14'b10010000111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10010000111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010000111101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10010000111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010000111111) && ({row_reg, col_reg}<14'b10010001000001)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010001000001) && ({row_reg, col_reg}<14'b10010001000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010001000011) && ({row_reg, col_reg}<14'b10010001000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010001000101) && ({row_reg, col_reg}<14'b10010001001011)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10010001001011) && ({row_reg, col_reg}<14'b10010001001101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010001001101) && ({row_reg, col_reg}<14'b10010001010001)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10010001010001) && ({row_reg, col_reg}<14'b10010010101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010010101111) && ({row_reg, col_reg}<14'b10010010110001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010010110001) && ({row_reg, col_reg}<14'b10010010110100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010010110100) && ({row_reg, col_reg}<14'b10010010110110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010010110110) && ({row_reg, col_reg}<14'b10010010111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010010111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010010111101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10010010111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010010111111)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010011000000) && ({row_reg, col_reg}<14'b10010011000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010011000010) && ({row_reg, col_reg}<14'b10010011001001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010011001001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10010011001010) && ({row_reg, col_reg}<14'b10010011001100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010011001100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10010011001101) && ({row_reg, col_reg}<14'b10010011010000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010011010000) && ({row_reg, col_reg}<14'b10010011010010)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10010011010010) && ({row_reg, col_reg}<14'b10010100110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010100110000) && ({row_reg, col_reg}<14'b10010100110101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010100110101) && ({row_reg, col_reg}<14'b10010100111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010100111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010100111101) && ({row_reg, col_reg}<14'b10010101000000)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010101000000) && ({row_reg, col_reg}<14'b10010101000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010101000010) && ({row_reg, col_reg}<14'b10010101000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010101000110) && ({row_reg, col_reg}<14'b10010101001011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010101001011)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10010101001100) && ({row_reg, col_reg}<14'b10010101010001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010101010001)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10010101010010) && ({row_reg, col_reg}<14'b10010110110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010110110001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010110110010) && ({row_reg, col_reg}<14'b10010110110101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010110110101) && ({row_reg, col_reg}<14'b10010110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010110111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010110111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010110111111) && ({row_reg, col_reg}<14'b10010111000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010111000001) && ({row_reg, col_reg}<14'b10010111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010111001000) && ({row_reg, col_reg}<14'b10010111001110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010111001110) && ({row_reg, col_reg}<14'b10010111010001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010111010001)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10010111010010)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10010111010011) && ({row_reg, col_reg}<14'b10011000110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011000110010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10011000110011)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011000110100)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011000110101) && ({row_reg, col_reg}<14'b10011000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011000111101) && ({row_reg, col_reg}<14'b10011001000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011001000001) && ({row_reg, col_reg}<14'b10011001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011001001010) && ({row_reg, col_reg}<14'b10011001001110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10011001001110) && ({row_reg, col_reg}<14'b10011001010010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011001010010) && ({row_reg, col_reg}<14'b10011001010101)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10011001010101) && ({row_reg, col_reg}<14'b10011010110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011010110011)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011010110100)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10011010110101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011010110110) && ({row_reg, col_reg}<14'b10011010111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011010111101) && ({row_reg, col_reg}<14'b10011010111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011010111111) && ({row_reg, col_reg}<14'b10011011001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011011001100) && ({row_reg, col_reg}<14'b10011011001110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10011011001110) && ({row_reg, col_reg}<14'b10011011010011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011011010011) && ({row_reg, col_reg}<14'b10011011010111)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011011010111) && ({row_reg, col_reg}<14'b10011100110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011100110100) && ({row_reg, col_reg}<14'b10011100110110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10011100110110)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10011100110111) && ({row_reg, col_reg}<14'b10011101010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011101010001) && ({row_reg, col_reg}<14'b10011101010101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011101010101) && ({row_reg, col_reg}<14'b10011101011000)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011101011000) && ({row_reg, col_reg}<14'b10011110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011110110101)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10011110110110)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011110110111)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011110111000) && ({row_reg, col_reg}<14'b10011111010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011111010100) && ({row_reg, col_reg}<14'b10011111010110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011111010110) && ({row_reg, col_reg}<14'b10011111011000)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011111011000)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10011111011001) && ({row_reg, col_reg}<14'b10100000110110)) color_data = 12'b000000000000;
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