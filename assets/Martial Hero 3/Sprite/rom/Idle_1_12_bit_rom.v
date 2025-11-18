module Idle_1_rom
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










































		if(({row_reg, col_reg}>=14'b00000000000000) && ({row_reg, col_reg}<14'b01010100111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010100111110) && ({row_reg, col_reg}<14'b01010101000010)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01010101000010) && ({row_reg, col_reg}<14'b01010110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010110111101) && ({row_reg, col_reg}<14'b01010111000100)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01010111000100) && ({row_reg, col_reg}<14'b01011000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011000111101) && ({row_reg, col_reg}<14'b01011001000001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011001000001) && ({row_reg, col_reg}<14'b01011001000100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011001000100)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01011001000101) && ({row_reg, col_reg}<14'b01011010111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011010111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011010111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011010111110) && ({row_reg, col_reg}<14'b01011011000000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011011000000) && ({row_reg, col_reg}<14'b01011011000010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011011000010) && ({row_reg, col_reg}<14'b01011011000100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011011000100)) color_data = 12'b000000000001;

		if(({row_reg, col_reg}>=14'b01011011000101) && ({row_reg, col_reg}<14'b01011100111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011100111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011100111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011100111110) && ({row_reg, col_reg}<14'b01011101000000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011101000000) && ({row_reg, col_reg}<14'b01011101000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011101000011)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01011101000100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011101000101) && ({row_reg, col_reg}<14'b01011101001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011101001110) && ({row_reg, col_reg}<14'b01011101010011)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01011101010011) && ({row_reg, col_reg}<14'b01011110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011110111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011110111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011110111110) && ({row_reg, col_reg}<14'b01011111000000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011111000000) && ({row_reg, col_reg}<14'b01011111000010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011111000010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011111000011)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01011111000100) && ({row_reg, col_reg}<14'b01011111001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011111001011) && ({row_reg, col_reg}<14'b01011111010011)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01011111010011) && ({row_reg, col_reg}<14'b01100000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100000111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100000111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100000111110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01100000111111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b01100001000001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100001000010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100001000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01100001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100001000101) && ({row_reg, col_reg}<14'b01100001010011)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100001010011) && ({row_reg, col_reg}<14'b01100010111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100010111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100010111101)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01100010111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100010111111) && ({row_reg, col_reg}<14'b01100011000011)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100011000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100011000100) && ({row_reg, col_reg}<14'b01100011010011)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100011010011) && ({row_reg, col_reg}<14'b01100100110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100100110101)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01100100110110) && ({row_reg, col_reg}<14'b01100100111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100100111001) && ({row_reg, col_reg}<14'b01100100111101)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01100100111101)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01100100111110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100100111111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100101000000) && ({row_reg, col_reg}<14'b01100101000011)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100101000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100101000100) && ({row_reg, col_reg}<14'b01100101010010)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100101010010) && ({row_reg, col_reg}<14'b01100110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100110110011) && ({row_reg, col_reg}<14'b01100110110101)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01100110110101) && ({row_reg, col_reg}<14'b01100110110111)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01100110110111) && ({row_reg, col_reg}<14'b01100110111100)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01100110111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100110111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100110111110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100110111111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100111000000) && ({row_reg, col_reg}<14'b01100111000010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01100111000010) && ({row_reg, col_reg}<14'b01100111000100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100111000100) && ({row_reg, col_reg}<14'b01100111001011)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100111001011) && ({row_reg, col_reg}<14'b01101000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101000110001) && ({row_reg, col_reg}<14'b01101000110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101000110100)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01101000110101)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01101000110110) && ({row_reg, col_reg}<14'b01101000111000)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101000111000) && ({row_reg, col_reg}<14'b01101000111100)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01101000111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01101000111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01101000111110) && ({row_reg, col_reg}<14'b01101001000011)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01101001000011) && ({row_reg, col_reg}<14'b01101010101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101010101111) && ({row_reg, col_reg}<14'b01101010110010)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101010110010) && ({row_reg, col_reg}<14'b01101010110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101010110100)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01101010110101) && ({row_reg, col_reg}<14'b01101010110111)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==14'b01101010110111)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}==14'b01101010111000)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b01101010111001) && ({row_reg, col_reg}<14'b01101010111100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101010111100) && ({row_reg, col_reg}<14'b01101010111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01101010111110) && ({row_reg, col_reg}<14'b01101011000010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101011000010)) color_data = 12'b100101110101;

		if(({row_reg, col_reg}>=14'b01101011000011) && ({row_reg, col_reg}<14'b01101100101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101100101111) && ({row_reg, col_reg}<14'b01101100110010)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01101100110010) && ({row_reg, col_reg}<14'b01101100110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101100110100) && ({row_reg, col_reg}<14'b01101100110110)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101100110111)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101100111000) && ({row_reg, col_reg}<14'b01101100111011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101100111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01101100111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01101100111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01101100111110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101100111111) && ({row_reg, col_reg}<14'b01101101000010)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01101101000010) && ({row_reg, col_reg}<14'b01101101000100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101101000100) && ({row_reg, col_reg}<14'b01101101000111)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01101101000111) && ({row_reg, col_reg}<14'b01101110110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101110110001) && ({row_reg, col_reg}<14'b01101110110100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101110110100) && ({row_reg, col_reg}<14'b01101110111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101110111000) && ({row_reg, col_reg}<14'b01101110111011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101110111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01101110111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01101110111101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101110111110)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01101110111111) && ({row_reg, col_reg}<14'b01101111000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101111000010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101111000011) && ({row_reg, col_reg}<14'b01101111001000)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01101111001000) && ({row_reg, col_reg}<14'b01110000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110000110001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110000110010) && ({row_reg, col_reg}<14'b01110000110100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110000110100) && ({row_reg, col_reg}<14'b01110000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110000110111) && ({row_reg, col_reg}<14'b01110000111001)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01110000111001)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01110000111010)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110000111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110000111100)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01110000111101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01110000111110) && ({row_reg, col_reg}<14'b01110001000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110001000010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110001000011) && ({row_reg, col_reg}<14'b01110001000101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110001000101) && ({row_reg, col_reg}<14'b01110001001000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01110001001000)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01110001001001) && ({row_reg, col_reg}<14'b01110010110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010110001) && ({row_reg, col_reg}<14'b01110010110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110010110100) && ({row_reg, col_reg}<14'b01110010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010110110) && ({row_reg, col_reg}<14'b01110010111010)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01110010111010) && ({row_reg, col_reg}<14'b01110010111100)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110010111100)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01110010111101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01110010111110) && ({row_reg, col_reg}<14'b01110011000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110011000010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110011000011) && ({row_reg, col_reg}<14'b01110011000101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110011000101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01110011000110) && ({row_reg, col_reg}<14'b01110011001000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110011001000)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01110011001001) && ({row_reg, col_reg}<14'b01110100110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110100110001) && ({row_reg, col_reg}<14'b01110100110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110100110100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110100110101) && ({row_reg, col_reg}<14'b01110100111010)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01110100111010) && ({row_reg, col_reg}<14'b01110100111100)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110100111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110100111101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110100111110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01110100111111) && ({row_reg, col_reg}<14'b01110101000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110101000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110101000100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110101000101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110101000110) && ({row_reg, col_reg}<14'b01110101001000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110101001000) && ({row_reg, col_reg}<14'b01110101001010)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01110101001010) && ({row_reg, col_reg}<14'b01110110110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110110110001) && ({row_reg, col_reg}<14'b01110110110101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110110110101) && ({row_reg, col_reg}<14'b01110110111000)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01110110111000)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==14'b01110110111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110110111010) && ({row_reg, col_reg}<14'b01110110111101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110110111101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01110110111110)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01110110111111) && ({row_reg, col_reg}<14'b01110111000011)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110111000011)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01110111000100) && ({row_reg, col_reg}<14'b01110111000110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110111000110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110111000111) && ({row_reg, col_reg}<14'b01110111001010)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01110111001010) && ({row_reg, col_reg}<14'b01111000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000110001) && ({row_reg, col_reg}<14'b01111000110101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111000110101) && ({row_reg, col_reg}<14'b01111000110111)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01111000110111)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}>=14'b01111000111000) && ({row_reg, col_reg}<14'b01111000111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000111011) && ({row_reg, col_reg}<14'b01111000111110)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111000111110) && ({row_reg, col_reg}<14'b01111001000011)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01111001000011)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111001000100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111001000110) && ({row_reg, col_reg}<14'b01111001001001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111001001001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111001001010) && ({row_reg, col_reg}<14'b01111001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111001001111)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01111001010000) && ({row_reg, col_reg}<14'b01111010110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010110001) && ({row_reg, col_reg}<14'b01111010110101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111010110101)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01111010110110) && ({row_reg, col_reg}<14'b01111010111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010111100) && ({row_reg, col_reg}<14'b01111010111110)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01111010111110)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01111010111111) && ({row_reg, col_reg}<14'b01111011000011)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111011000011)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01111011000100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111011000101) && ({row_reg, col_reg}<14'b01111011000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111011000111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111011001000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111011001001) && ({row_reg, col_reg}<14'b01111011001100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111011001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111011001101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01111011001110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111011001111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01111011010000)) color_data = 12'b110110101000;

		if(({row_reg, col_reg}>=14'b01111011010001) && ({row_reg, col_reg}<14'b01111100110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100110010) && ({row_reg, col_reg}<14'b01111100110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111100110100) && ({row_reg, col_reg}<14'b01111100111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100111101) && ({row_reg, col_reg}<14'b01111101000101)) color_data = 12'b100010000110;
		if(({row_reg, col_reg}>=14'b01111101000101) && ({row_reg, col_reg}<14'b01111101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111101001000) && ({row_reg, col_reg}<14'b01111101001101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111101001101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01111101001110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111101001111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01111101010000)) color_data = 12'b110110101000;
		if(({row_reg, col_reg}==14'b01111101010001)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01111101010010) && ({row_reg, col_reg}<14'b01111110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110111101) && ({row_reg, col_reg}<14'b01111111000101)) color_data = 12'b011001100101;
		if(({row_reg, col_reg}>=14'b01111111000101) && ({row_reg, col_reg}<14'b01111111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111111001000) && ({row_reg, col_reg}<14'b01111111001101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111111001101) && ({row_reg, col_reg}<14'b01111111010000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111111010000)) color_data = 12'b110110101000;
		if(({row_reg, col_reg}==14'b01111111010001)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01111111010010) && ({row_reg, col_reg}<14'b10000000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000000111101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10000000111110) && ({row_reg, col_reg}<14'b10000001000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000001000101) && ({row_reg, col_reg}<14'b10000001001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000001001001) && ({row_reg, col_reg}<14'b10000001001101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10000001001101) && ({row_reg, col_reg}<14'b10000001010001)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b10000001010001) && ({row_reg, col_reg}<14'b10000010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000010111010) && ({row_reg, col_reg}<14'b10000010111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000010111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000010111101) && ({row_reg, col_reg}<14'b10000011000110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10000011000110) && ({row_reg, col_reg}<14'b10000011001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000011001101) && ({row_reg, col_reg}<14'b10000011001111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b10000011001111)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b10000011010000) && ({row_reg, col_reg}<14'b10000100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000100110110) && ({row_reg, col_reg}<14'b10000100111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000100111100) && ({row_reg, col_reg}<14'b10000100111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000100111111) && ({row_reg, col_reg}<14'b10000101000101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000101000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000101000110) && ({row_reg, col_reg}<14'b10000101001000)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000101001000) && ({row_reg, col_reg}<14'b10000110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000110110011) && ({row_reg, col_reg}<14'b10000110111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000110111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000110111101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10000110111110) && ({row_reg, col_reg}<14'b10000111000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000111000000) && ({row_reg, col_reg}<14'b10000111000100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000111000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000111000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000111000110) && ({row_reg, col_reg}<14'b10000111001010)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000111001010) && ({row_reg, col_reg}<14'b10001000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001000110001) && ({row_reg, col_reg}<14'b10001000111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001000111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001000111101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001000111110) && ({row_reg, col_reg}<14'b10001001000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001001000001) && ({row_reg, col_reg}<14'b10001001000100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001001000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001001000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001001000110) && ({row_reg, col_reg}<14'b10001001001100)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001001001100) && ({row_reg, col_reg}<14'b10001010110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001010110000) && ({row_reg, col_reg}<14'b10001010110110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001010110110) && ({row_reg, col_reg}<14'b10001010111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001010111010) && ({row_reg, col_reg}<14'b10001010111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001010111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001010111101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001010111110) && ({row_reg, col_reg}<14'b10001011000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001011000010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001011000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001011000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001011000101) && ({row_reg, col_reg}<14'b10001011001110)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001011001110) && ({row_reg, col_reg}<14'b10001100110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001100110000) && ({row_reg, col_reg}<14'b10001100110011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001100110011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001100110100) && ({row_reg, col_reg}<14'b10001100110110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001100110110) && ({row_reg, col_reg}<14'b10001100111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001100111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001100111101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001100111110) && ({row_reg, col_reg}<14'b10001101000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001101000001) && ({row_reg, col_reg}<14'b10001101000011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001101000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001101000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001101000101) && ({row_reg, col_reg}<14'b10001101010000)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001101010000) && ({row_reg, col_reg}<14'b10001110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001110110000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001110110001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001110110010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001110110011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001110110100) && ({row_reg, col_reg}<14'b10001110111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001110111100) && ({row_reg, col_reg}<14'b10001110111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001110111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001110111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001111000000) && ({row_reg, col_reg}<14'b10001111000010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001111000010) && ({row_reg, col_reg}<14'b10001111000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001111000100) && ({row_reg, col_reg}<14'b10001111000110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001111000110) && ({row_reg, col_reg}<14'b10001111001100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001111001100) && ({row_reg, col_reg}<14'b10001111001110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001111001110) && ({row_reg, col_reg}<14'b10001111010010)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001111010010) && ({row_reg, col_reg}<14'b10010000110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010000110000) && ({row_reg, col_reg}<14'b10010000110010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010000110010) && ({row_reg, col_reg}<14'b10010000110101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010000110101) && ({row_reg, col_reg}<14'b10010000111000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010000111000) && ({row_reg, col_reg}<14'b10010000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010000111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010000111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10010000111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010001000000)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010001000001) && ({row_reg, col_reg}<14'b10010001000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010001000011) && ({row_reg, col_reg}<14'b10010001001010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010001001010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10010001001011) && ({row_reg, col_reg}<14'b10010001001101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010001001101)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10010001001110) && ({row_reg, col_reg}<14'b10010001010001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010001010001) && ({row_reg, col_reg}<14'b10010001010011)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10010001010011) && ({row_reg, col_reg}<14'b10010010110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010010110001) && ({row_reg, col_reg}<14'b10010010110111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010010110111) && ({row_reg, col_reg}<14'b10010010111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010010111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010010111110) && ({row_reg, col_reg}<14'b10010011000001)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010011000001) && ({row_reg, col_reg}<14'b10010011000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010011000011) && ({row_reg, col_reg}<14'b10010011000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010011000111) && ({row_reg, col_reg}<14'b10010011001100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010011001100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10010011001101) && ({row_reg, col_reg}<14'b10010011010010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010011010010)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10010011010011) && ({row_reg, col_reg}<14'b10010100110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010100110010) && ({row_reg, col_reg}<14'b10010100110100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010100110100) && ({row_reg, col_reg}<14'b10010100110110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010100110110) && ({row_reg, col_reg}<14'b10010100111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010100111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010100111111)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010101000000) && ({row_reg, col_reg}<14'b10010101000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010101000010) && ({row_reg, col_reg}<14'b10010101001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010101001001) && ({row_reg, col_reg}<14'b10010101001111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010101001111) && ({row_reg, col_reg}<14'b10010101010010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010101010010)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10010101010011)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10010101010100) && ({row_reg, col_reg}<14'b10010110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010110110011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010110110100)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10010110110101)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10010110110110) && ({row_reg, col_reg}<14'b10010110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010110111110) && ({row_reg, col_reg}<14'b10010111000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010111000010) && ({row_reg, col_reg}<14'b10010111001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010111001011) && ({row_reg, col_reg}<14'b10010111001111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010111001111) && ({row_reg, col_reg}<14'b10010111010011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010111010011) && ({row_reg, col_reg}<14'b10010111010101)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10010111010101) && ({row_reg, col_reg}<14'b10011000110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011000110100)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011000110101)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10011000110110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011000110111) && ({row_reg, col_reg}<14'b10011000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011000111110) && ({row_reg, col_reg}<14'b10011001000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011001000000) && ({row_reg, col_reg}<14'b10011001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011001001101) && ({row_reg, col_reg}<14'b10011001001111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10011001001111) && ({row_reg, col_reg}<14'b10011001010011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011001010011) && ({row_reg, col_reg}<14'b10011001010110)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10011001010110)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011001010111) && ({row_reg, col_reg}<14'b10011010110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011010110100) && ({row_reg, col_reg}<14'b10011010110111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10011010110111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10011010111000) && ({row_reg, col_reg}<14'b10011011010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011011010010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011011010011) && ({row_reg, col_reg}<14'b10011011011000)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011011011000) && ({row_reg, col_reg}<14'b10011100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011100110110) && ({row_reg, col_reg}<14'b10011100111000)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10011100111000) && ({row_reg, col_reg}<14'b10011101010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011101010011) && ({row_reg, col_reg}<14'b10011101010101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011101010101) && ({row_reg, col_reg}<14'b10011101011001)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011101011001) && ({row_reg, col_reg}<14'b10011110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011110110110) && ({row_reg, col_reg}<14'b10011110111001)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10011110111001) && ({row_reg, col_reg}<14'b10011111010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011111010101)) color_data = 12'b010001000010;
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