module Jump/Jump_1_rom
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













































		if(({row_reg, col_reg}>=14'b00000000000000) && ({row_reg, col_reg}<14'b01011010111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011010111101) && ({row_reg, col_reg}<14'b01011011000001)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01011011000001) && ({row_reg, col_reg}<14'b01011100111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011100111100) && ({row_reg, col_reg}<14'b01011101000011)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01011101000011) && ({row_reg, col_reg}<14'b01011110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011110111100) && ({row_reg, col_reg}<14'b01011111000000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011111000000) && ({row_reg, col_reg}<14'b01011111000011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011111000011)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01011111000100) && ({row_reg, col_reg}<14'b01100000111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100000111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100000111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100000111101) && ({row_reg, col_reg}<14'b01100000111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100000111111) && ({row_reg, col_reg}<14'b01100001000001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100001000001) && ({row_reg, col_reg}<14'b01100001000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01100001000011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100001000100) && ({row_reg, col_reg}<14'b01100001010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100001010000) && ({row_reg, col_reg}<14'b01100001010101)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100001010101) && ({row_reg, col_reg}<14'b01100010111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100010111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100010111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100010111101) && ({row_reg, col_reg}<14'b01100010111111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100010111111) && ({row_reg, col_reg}<14'b01100011000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01100011000010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100011000011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100011000100) && ({row_reg, col_reg}<14'b01100011001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100011001101) && ({row_reg, col_reg}<14'b01100011010101)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100011010101) && ({row_reg, col_reg}<14'b01100100111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100100111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100100111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100100111101) && ({row_reg, col_reg}<14'b01100100111111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100100111111) && ({row_reg, col_reg}<14'b01100101000001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100101000001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100101000010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01100101000011) && ({row_reg, col_reg}<14'b01100101000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100101000111) && ({row_reg, col_reg}<14'b01100101010101)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100101010101) && ({row_reg, col_reg}<14'b01100110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100110111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100110111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100110111101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01100110111110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100110111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b01100111000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100111000001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100111000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100111000011) && ({row_reg, col_reg}<14'b01100111010101)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100111010101) && ({row_reg, col_reg}<14'b01101000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101000110111)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101000111000) && ({row_reg, col_reg}<14'b01101000111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101000111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01101000111100) && ({row_reg, col_reg}<14'b01101000111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01101000111110) && ({row_reg, col_reg}<14'b01101001000010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01101001000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101001000011) && ({row_reg, col_reg}<14'b01101001010100)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01101001010100) && ({row_reg, col_reg}<14'b01101010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101010110101) && ({row_reg, col_reg}<14'b01101010110111)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01101010110111) && ({row_reg, col_reg}<14'b01101010111001)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101010111001) && ({row_reg, col_reg}<14'b01101010111101)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01101010111101)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01101010111110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101010111111) && ({row_reg, col_reg}<14'b01101011000010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01101011000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101011000011) && ({row_reg, col_reg}<14'b01101011001101)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01101011001101) && ({row_reg, col_reg}<14'b01101100110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101100110011) && ({row_reg, col_reg}<14'b01101100110110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101100110110)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01101100110111)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01101100111000) && ({row_reg, col_reg}<14'b01101100111010)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101100111010) && ({row_reg, col_reg}<14'b01101100111101)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01101100111101)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01101100111110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101100111111) && ({row_reg, col_reg}<14'b01101101000001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01101101000001) && ({row_reg, col_reg}<14'b01101101000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101101000011)) color_data = 12'b100101110101;

		if(({row_reg, col_reg}>=14'b01101101000100) && ({row_reg, col_reg}<14'b01101110110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101110110001) && ({row_reg, col_reg}<14'b01101110110100)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101110110100) && ({row_reg, col_reg}<14'b01101110110110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101110110110)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01101110110111) && ({row_reg, col_reg}<14'b01101110111001)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==14'b01101110111001)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}==14'b01101110111010)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01101110111011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101110111100) && ({row_reg, col_reg}<14'b01101110111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01101110111110) && ({row_reg, col_reg}<14'b01101111000001)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01101111000001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101111000010)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01101111000011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101111000100) && ({row_reg, col_reg}<14'b01101111000111)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01101111000111) && ({row_reg, col_reg}<14'b01110000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110000110001) && ({row_reg, col_reg}<14'b01110000110100)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01110000110100) && ({row_reg, col_reg}<14'b01110000110110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110000110110) && ({row_reg, col_reg}<14'b01110000111000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01110000111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110000111001)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01110000111010) && ({row_reg, col_reg}<14'b01110000111100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110000111100) && ({row_reg, col_reg}<14'b01110000111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01110000111110) && ({row_reg, col_reg}<14'b01110001000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110001000010)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01110001000011)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01110001000100) && ({row_reg, col_reg}<14'b01110001001000)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01110001001000) && ({row_reg, col_reg}<14'b01110010110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010110011) && ({row_reg, col_reg}<14'b01110010110110)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110010110110) && ({row_reg, col_reg}<14'b01110010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010111010) && ({row_reg, col_reg}<14'b01110010111100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01110010111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110010111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01110010111110) && ({row_reg, col_reg}<14'b01110011000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110011000010) && ({row_reg, col_reg}<14'b01110011000101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01110011000101) && ({row_reg, col_reg}<14'b01110011001000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01110011001000)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01110011001001) && ({row_reg, col_reg}<14'b01110100110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110100110011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110100110100) && ({row_reg, col_reg}<14'b01110100110110)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110100110110) && ({row_reg, col_reg}<14'b01110100111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110100111001) && ({row_reg, col_reg}<14'b01110100111011)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01110100111011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110100111100) && ({row_reg, col_reg}<14'b01110100111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01110100111110) && ({row_reg, col_reg}<14'b01110101000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110101000010) && ({row_reg, col_reg}<14'b01110101000101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110101000101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01110101000110) && ({row_reg, col_reg}<14'b01110101001000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110101001000)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01110101001001) && ({row_reg, col_reg}<14'b01110110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110110110011) && ({row_reg, col_reg}<14'b01110110110110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110110110110) && ({row_reg, col_reg}<14'b01110110111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110110111000) && ({row_reg, col_reg}<14'b01110110111100)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01110110111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110110111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01110110111110) && ({row_reg, col_reg}<14'b01110111000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110111000010) && ({row_reg, col_reg}<14'b01110111000101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110111000101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110111000110) && ({row_reg, col_reg}<14'b01110111001000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110111001000) && ({row_reg, col_reg}<14'b01110111001010)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01110111001010) && ({row_reg, col_reg}<14'b01111000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000110011) && ({row_reg, col_reg}<14'b01111000110110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111000110110)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111000110111) && ({row_reg, col_reg}<14'b01111000111011)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01111000111011) && ({row_reg, col_reg}<14'b01111000111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111000111101) && ({row_reg, col_reg}<14'b01111001000001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111001000001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111001000010) && ({row_reg, col_reg}<14'b01111001000101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01111001000101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111001000110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111001000111) && ({row_reg, col_reg}<14'b01111001001010)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01111001001010) && ({row_reg, col_reg}<14'b01111010110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010110011) && ({row_reg, col_reg}<14'b01111010110111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111010110111) && ({row_reg, col_reg}<14'b01111010111010)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01111010111010)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}>=14'b01111010111011) && ({row_reg, col_reg}<14'b01111010111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01111010111101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111010111110)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01111010111111) && ({row_reg, col_reg}<14'b01111011000010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01111011000010) && ({row_reg, col_reg}<14'b01111011000101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111011000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111011000110) && ({row_reg, col_reg}<14'b01111011001001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111011001001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111011001010) && ({row_reg, col_reg}<14'b01111011001100)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01111011001100) && ({row_reg, col_reg}<14'b01111100110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100110011) && ({row_reg, col_reg}<14'b01111100110111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111100110111) && ({row_reg, col_reg}<14'b01111100111001)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01111100111001)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==14'b01111100111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111100111011)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01111100111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100111101) && ({row_reg, col_reg}<14'b01111100111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111100111111) && ({row_reg, col_reg}<14'b01111101000010)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111101000010) && ({row_reg, col_reg}<14'b01111101000100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111101000100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111101000101) && ({row_reg, col_reg}<14'b01111101000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111101000111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111101001000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111101001001) && ({row_reg, col_reg}<14'b01111101001101)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01111101001101) && ({row_reg, col_reg}<14'b01111110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110110011) && ({row_reg, col_reg}<14'b01111110110111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111110110111)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01111110111000) && ({row_reg, col_reg}<14'b01111110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110111010) && ({row_reg, col_reg}<14'b01111110111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01111110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110111101) && ({row_reg, col_reg}<14'b01111110111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111110111111) && ({row_reg, col_reg}<14'b01111111000010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111111000010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111111000011) && ({row_reg, col_reg}<14'b01111111000101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111111000101) && ({row_reg, col_reg}<14'b01111111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111111001000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111111001001) && ({row_reg, col_reg}<14'b01111111001101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111111001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111111001110)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01111111001111) && ({row_reg, col_reg}<14'b10000000110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000000110100) && ({row_reg, col_reg}<14'b10000000110110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b10000000110110) && ({row_reg, col_reg}<14'b10000000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000000111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10000000111011) && ({row_reg, col_reg}<14'b10000000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000000111101) && ({row_reg, col_reg}<14'b10000001000101)) color_data = 12'b100010000110;
		if(({row_reg, col_reg}>=14'b10000001000101) && ({row_reg, col_reg}<14'b10000001001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000001001001) && ({row_reg, col_reg}<14'b10000001001100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b10000001001100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b10000001001101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b10000001001110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b10000001001111)) color_data = 12'b110110101000;

		if(({row_reg, col_reg}>=14'b10000001010000) && ({row_reg, col_reg}<14'b10000010111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000010111101) && ({row_reg, col_reg}<14'b10000011000101)) color_data = 12'b011001100101;
		if(({row_reg, col_reg}>=14'b10000011000101) && ({row_reg, col_reg}<14'b10000011001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000011001010) && ({row_reg, col_reg}<14'b10000011001100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b10000011001100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b10000011001101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b10000011001110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b10000011001111)) color_data = 12'b110110101000;
		if(({row_reg, col_reg}==14'b10000011010000)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b10000011010001) && ({row_reg, col_reg}<14'b10000100111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000100111101) && ({row_reg, col_reg}<14'b10000101000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000101000100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10000101000101) && ({row_reg, col_reg}<14'b10000101001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000101001011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10000101001100) && ({row_reg, col_reg}<14'b10000101001111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b10000101001111)) color_data = 12'b110110101000;
		if(({row_reg, col_reg}==14'b10000101010000)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b10000101010001) && ({row_reg, col_reg}<14'b10000110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000110111100) && ({row_reg, col_reg}<14'b10000111000101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000111000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000111000110) && ({row_reg, col_reg}<14'b10000111001110)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10000111001110) && ({row_reg, col_reg}<14'b10000111010000)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b10000111010000) && ({row_reg, col_reg}<14'b10001000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001000111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001000111101) && ({row_reg, col_reg}<14'b10001001000011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001001000011) && ({row_reg, col_reg}<14'b10001001000110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001001000110) && ({row_reg, col_reg}<14'b10001001010010)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001001010010) && ({row_reg, col_reg}<14'b10001010111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001010111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001010111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001010111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001010111110) && ({row_reg, col_reg}<14'b10001011000011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001011000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001011000100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001011000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001011000110) && ({row_reg, col_reg}<14'b10001011010000)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b10001011010000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001011010001) && ({row_reg, col_reg}<14'b10001011010011)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001011010011) && ({row_reg, col_reg}<14'b10001100111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001100111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001100111100) && ({row_reg, col_reg}<14'b10001100111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001100111110) && ({row_reg, col_reg}<14'b10001101000010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001101000010) && ({row_reg, col_reg}<14'b10001101000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001101000100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001101000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001101000110) && ({row_reg, col_reg}<14'b10001101010000)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001101010000) && ({row_reg, col_reg}<14'b10001101010011)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10001101010011) && ({row_reg, col_reg}<14'b10001110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001110111010) && ({row_reg, col_reg}<14'b10001110111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001110111101) && ({row_reg, col_reg}<14'b10001110111111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001110111111)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001111000000) && ({row_reg, col_reg}<14'b10001111000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001111000100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001111000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001111000110) && ({row_reg, col_reg}<14'b10001111001001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001111001001) && ({row_reg, col_reg}<14'b10001111001110)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001111001110) && ({row_reg, col_reg}<14'b10001111010011)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10001111010011) && ({row_reg, col_reg}<14'b10010000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010000111010) && ({row_reg, col_reg}<14'b10010000111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010000111100) && ({row_reg, col_reg}<14'b10010000111111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10010000111111)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010001000000) && ({row_reg, col_reg}<14'b10010001000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010001000100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10010001000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010001000110) && ({row_reg, col_reg}<14'b10010001010001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010001010001) && ({row_reg, col_reg}<14'b10010001010011)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10010001010011) && ({row_reg, col_reg}<14'b10010010111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010010111001) && ({row_reg, col_reg}<14'b10010010111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010010111011) && ({row_reg, col_reg}<14'b10010010111111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10010010111111)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010011000000) && ({row_reg, col_reg}<14'b10010011000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010011000011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010011000100) && ({row_reg, col_reg}<14'b10010011000110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010011000110) && ({row_reg, col_reg}<14'b10010011010000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010011010000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010011010001)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10010011010010)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10010011010011) && ({row_reg, col_reg}<14'b10010100111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010100111001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010100111010) && ({row_reg, col_reg}<14'b10010101000000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010101000000) && ({row_reg, col_reg}<14'b10010101000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010101000011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010101000100) && ({row_reg, col_reg}<14'b10010101000110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010101000110) && ({row_reg, col_reg}<14'b10010101001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010101001110) && ({row_reg, col_reg}<14'b10010101010000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010101010000) && ({row_reg, col_reg}<14'b10010101010010)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10010101010010) && ({row_reg, col_reg}<14'b10010110111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010110111000) && ({row_reg, col_reg}<14'b10010110111010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010110111010) && ({row_reg, col_reg}<14'b10010111000000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010111000000) && ({row_reg, col_reg}<14'b10010111000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010111000011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10010111000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010111000101) && ({row_reg, col_reg}<14'b10010111001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010111001110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010111001111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10010111010000)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10010111010001) && ({row_reg, col_reg}<14'b10011000111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011000111000) && ({row_reg, col_reg}<14'b10011000111010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10011000111010) && ({row_reg, col_reg}<14'b10011000111111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10011000111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011001000000) && ({row_reg, col_reg}<14'b10011001000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10011001000010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10011001000011) && ({row_reg, col_reg}<14'b10011001000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011001000101) && ({row_reg, col_reg}<14'b10011001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011001001101) && ({row_reg, col_reg}<14'b10011001001111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10011001001111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011001010000)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10011001010001) && ({row_reg, col_reg}<14'b10011010111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011010111000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10011010111001) && ({row_reg, col_reg}<14'b10011010111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10011010111110) && ({row_reg, col_reg}<14'b10011011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011011000000)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10011011000001) && ({row_reg, col_reg}<14'b10011011000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011011000100) && ({row_reg, col_reg}<14'b10011011001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011011001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011011001110) && ({row_reg, col_reg}<14'b10011011010000)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011011010000) && ({row_reg, col_reg}<14'b10011100110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011100110111) && ({row_reg, col_reg}<14'b10011100111001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10011100111001) && ({row_reg, col_reg}<14'b10011100111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10011100111110) && ({row_reg, col_reg}<14'b10011101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011101000000) && ({row_reg, col_reg}<14'b10011101000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011101000100) && ({row_reg, col_reg}<14'b10011101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011101001100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011101001101) && ({row_reg, col_reg}<14'b10011101010000)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011101010000) && ({row_reg, col_reg}<14'b10011110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011110110111) && ({row_reg, col_reg}<14'b10011110111001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10011110111001) && ({row_reg, col_reg}<14'b10011110111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10011110111110) && ({row_reg, col_reg}<14'b10011111000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011111000001) && ({row_reg, col_reg}<14'b10011111000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011111000100) && ({row_reg, col_reg}<14'b10011111001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011111001011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011111001100) && ({row_reg, col_reg}<14'b10011111001111)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011111001111) && ({row_reg, col_reg}<14'b10100000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100000110111) && ({row_reg, col_reg}<14'b10100000111001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10100000111001) && ({row_reg, col_reg}<14'b10100000111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10100000111101) && ({row_reg, col_reg}<14'b10100001001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10100001001011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10100001001100)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10100001001101)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10100001001110) && ({row_reg, col_reg}<14'b10100010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100010110110) && ({row_reg, col_reg}<14'b10100010111000)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10100010111000) && ({row_reg, col_reg}<14'b10100010111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10100010111101) && ({row_reg, col_reg}<14'b10100011001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10100011001011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100011001100) && ({row_reg, col_reg}<14'b10100011001110)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10100011001110) && ({row_reg, col_reg}<14'b10100100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100100110110) && ({row_reg, col_reg}<14'b10100100111101)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10100100111101) && ({row_reg, col_reg}<14'b10100101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100101001100) && ({row_reg, col_reg}<14'b10100101001111)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10100101001111) && ({row_reg, col_reg}<14'b10100110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100110110110) && ({row_reg, col_reg}<14'b10100110111101)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10100110111101) && ({row_reg, col_reg}<14'b10100111001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100111001101) && ({row_reg, col_reg}<14'b10100111001111)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10100111001111) && ({row_reg, col_reg}<14'b10101000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10101000110111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10101000111000) && ({row_reg, col_reg}<14'b10101000111100)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10101000111100) && ({row_reg, col_reg}<14'b10101010110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10101010110111)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10101010111000) && ({row_reg, col_reg}<14'b10101010111011)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10101010111011) && ({row_reg, col_reg}<14'b10101100110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10101100110111) && ({row_reg, col_reg}<14'b10101100111001)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10101100111001) && ({row_reg, col_reg}<14'b10101100111011)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10101100111011) && ({row_reg, col_reg}<14'b10101110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10101110110111) && ({row_reg, col_reg}<14'b10101110111001)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10101110111001)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10101110111010) && ({row_reg, col_reg}<14'b10110000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110000110110) && ({row_reg, col_reg}<14'b10110000111001)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10110000111001)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10110000111010) && ({row_reg, col_reg}<14'b10110010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110010110110) && ({row_reg, col_reg}<14'b10110010111001)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10110010111001)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10110010111010) && ({row_reg, col_reg}<14'b10110100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110100110110) && ({row_reg, col_reg}<14'b10110100111000)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10110100111000) && ({row_reg, col_reg}<14'b10110100111010)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10110100111010) && ({row_reg, col_reg}<14'b10110110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110110110110) && ({row_reg, col_reg}<14'b10110110111000)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10110110111000)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10110110111001) && ({row_reg, col_reg}<14'b10111000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10111000110101) && ({row_reg, col_reg}<14'b10111000111000)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10111000111000)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10111000111001) && ({row_reg, col_reg}<14'b10111010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10111010110101)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10111010110110) && ({row_reg, col_reg}<14'b10111010111000)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10111010111000) && ({row_reg, col_reg}<14'b10111100110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10111100110101) && ({row_reg, col_reg}<14'b10111100111000)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10111100111000) && ({row_reg, col_reg}<14'b10111110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10111110110110) && ({row_reg, col_reg}<14'b10111110111000)) color_data = 12'b010001000010;































		if(({row_reg, col_reg}>=14'b10111110111000) && ({row_reg, col_reg}<=14'b11111011111101)) color_data = 12'b000000000000;
	end
endmodule