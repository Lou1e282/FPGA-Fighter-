module Jump/Jump_5_rom
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










































		if(({row_reg, col_reg}>=14'b00000000000000) && ({row_reg, col_reg}<14'b01010100111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010100111011)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01010100111100)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01010100111101)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01010100111110) && ({row_reg, col_reg}<14'b01010110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010110111010) && ({row_reg, col_reg}<14'b01010110111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01010110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010110111101) && ({row_reg, col_reg}<14'b01010110111111)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01010110111111) && ({row_reg, col_reg}<14'b01011000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011000111110) && ({row_reg, col_reg}<14'b01011001000000)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01011001000000) && ({row_reg, col_reg}<14'b01011010111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011010111110) && ({row_reg, col_reg}<14'b01011011000000)) color_data = 12'b000000000001;

		if(({row_reg, col_reg}>=14'b01011011000000) && ({row_reg, col_reg}<14'b01011100111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011100111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011100111111) && ({row_reg, col_reg}<14'b01011101000001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011101000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011101000010) && ({row_reg, col_reg}<14'b01011101000110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011101000110) && ({row_reg, col_reg}<14'b01011101010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011101010010) && ({row_reg, col_reg}<14'b01011101010111)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01011101010111) && ({row_reg, col_reg}<14'b01011110111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011110111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011111000000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011111000001) && ({row_reg, col_reg}<14'b01011111001000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011111001000) && ({row_reg, col_reg}<14'b01011111001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011111001111) && ({row_reg, col_reg}<14'b01011111010111)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01011111010111) && ({row_reg, col_reg}<14'b01100000111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100000111111) && ({row_reg, col_reg}<14'b01100001000001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100001000001) && ({row_reg, col_reg}<14'b01100001001001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100001001001) && ({row_reg, col_reg}<14'b01100001010111)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100001010111) && ({row_reg, col_reg}<14'b01100010111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100010111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100011000000) && ({row_reg, col_reg}<14'b01100011000010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100011000010) && ({row_reg, col_reg}<14'b01100011000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100011000101) && ({row_reg, col_reg}<14'b01100011001001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100011001001) && ({row_reg, col_reg}<14'b01100011010111)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100011010111) && ({row_reg, col_reg}<14'b01100100111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100100111001)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01100100111010) && ({row_reg, col_reg}<14'b01100100111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100100111101) && ({row_reg, col_reg}<14'b01100100111111)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01100100111111)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01100101000000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100101000001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100101000010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100101000011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100101000100) && ({row_reg, col_reg}<14'b01100101000111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100101000111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100101001000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100101001001) && ({row_reg, col_reg}<14'b01100101010110)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100101010110) && ({row_reg, col_reg}<14'b01100110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100110110111) && ({row_reg, col_reg}<14'b01100110111001)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01100110111001) && ({row_reg, col_reg}<14'b01100110111011)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01100110111011) && ({row_reg, col_reg}<14'b01100111000000)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01100111000000)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01100111000001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100111000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100111000011) && ({row_reg, col_reg}<14'b01100111000101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100111000101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01100111000110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100111000111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100111001000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100111001001) && ({row_reg, col_reg}<14'b01100111001111)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100111001111) && ({row_reg, col_reg}<14'b01101000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101000110101) && ({row_reg, col_reg}<14'b01101000111000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101000111000)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01101000111001)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01101000111010) && ({row_reg, col_reg}<14'b01101000111100)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101000111100) && ({row_reg, col_reg}<14'b01101001000000)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01101001000000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01101001000001) && ({row_reg, col_reg}<14'b01101001000011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01101001000011) && ({row_reg, col_reg}<14'b01101001000101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01101001000101) && ({row_reg, col_reg}<14'b01101001000111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01101001000111)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01101001001000) && ({row_reg, col_reg}<14'b01101010110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101010110011) && ({row_reg, col_reg}<14'b01101010110110)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101010110110) && ({row_reg, col_reg}<14'b01101010111000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101010111000)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01101010111001) && ({row_reg, col_reg}<14'b01101010111011)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==14'b01101010111011)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}==14'b01101010111100)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b01101010111101) && ({row_reg, col_reg}<14'b01101010111111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101010111111) && ({row_reg, col_reg}<14'b01101011000001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101011000001) && ({row_reg, col_reg}<14'b01101011000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101011000011) && ({row_reg, col_reg}<14'b01101011000101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01101011000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b01101011000110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101011000111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101011001000) && ({row_reg, col_reg}<14'b01101011010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101011010010)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01101011010011) && ({row_reg, col_reg}<14'b01101100110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101100110011) && ({row_reg, col_reg}<14'b01101100110110)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01101100110110) && ({row_reg, col_reg}<14'b01101100111000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101100111000) && ({row_reg, col_reg}<14'b01101100111010)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101100111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101100111011)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01101100111100) && ({row_reg, col_reg}<14'b01101100111111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101100111111)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01101101000000) && ({row_reg, col_reg}<14'b01101101000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101101000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101101000100) && ({row_reg, col_reg}<14'b01101101000111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01101101000111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101101001000) && ({row_reg, col_reg}<14'b01101101010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101101010000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01101101010001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101101010010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01101101010011)) color_data = 12'b110110101000;

		if(({row_reg, col_reg}>=14'b01101101010100) && ({row_reg, col_reg}<14'b01101110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101110110101) && ({row_reg, col_reg}<14'b01101110111000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101110111000) && ({row_reg, col_reg}<14'b01101110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101110111100) && ({row_reg, col_reg}<14'b01101110111110)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101110111110) && ({row_reg, col_reg}<14'b01101111000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101111000000) && ({row_reg, col_reg}<14'b01101111000010)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01101111000010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101111000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101111000100) && ({row_reg, col_reg}<14'b01101111000110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01101111000110) && ({row_reg, col_reg}<14'b01101111001000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101111001000) && ({row_reg, col_reg}<14'b01101111001010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01101111001010) && ({row_reg, col_reg}<14'b01101111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101111010000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01101111010001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101111010010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01101111010011)) color_data = 12'b110110101000;
		if(({row_reg, col_reg}==14'b01101111010100)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01101111010101) && ({row_reg, col_reg}<14'b01110000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110000110101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110000110110) && ({row_reg, col_reg}<14'b01110000111000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110000111000) && ({row_reg, col_reg}<14'b01110000111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110000111011) && ({row_reg, col_reg}<14'b01110000111101)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01110000111101) && ({row_reg, col_reg}<14'b01110001000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110001000000) && ({row_reg, col_reg}<14'b01110001000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110001000011)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01110001000100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01110001000101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01110001000110) && ({row_reg, col_reg}<14'b01110001001010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01110001001010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110001001011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110001001100) && ({row_reg, col_reg}<14'b01110001001110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01110001001110) && ({row_reg, col_reg}<14'b01110001010000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110001010000) && ({row_reg, col_reg}<14'b01110001010011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110001010011)) color_data = 12'b110110101000;
		if(({row_reg, col_reg}==14'b01110001010100)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01110001010101) && ({row_reg, col_reg}<14'b01110010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010110101) && ({row_reg, col_reg}<14'b01110010111000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110010111000) && ({row_reg, col_reg}<14'b01110010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010111010) && ({row_reg, col_reg}<14'b01110010111100)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01110010111100) && ({row_reg, col_reg}<14'b01110010111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110010111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110011000000) && ({row_reg, col_reg}<14'b01110011000100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110011000100) && ({row_reg, col_reg}<14'b01110011000110)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01110011000110) && ({row_reg, col_reg}<14'b01110011001000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110011001000) && ({row_reg, col_reg}<14'b01110011001010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01110011001010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110011001011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110011001100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01110011001101) && ({row_reg, col_reg}<14'b01110011010000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110011010000) && ({row_reg, col_reg}<14'b01110011010100)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01110011010100) && ({row_reg, col_reg}<14'b01110100110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110100110101) && ({row_reg, col_reg}<14'b01110100111000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110100111000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110100111001) && ({row_reg, col_reg}<14'b01110100111011)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01110100111011) && ({row_reg, col_reg}<14'b01110101000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01110101000000) && ({row_reg, col_reg}<14'b01110101000100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110101000100) && ({row_reg, col_reg}<14'b01110101000110)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01110101000110) && ({row_reg, col_reg}<14'b01110101001000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110101001000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01110101001001) && ({row_reg, col_reg}<14'b01110101001011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110101001011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110101001100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01110101001101) && ({row_reg, col_reg}<14'b01110101010000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110101010000) && ({row_reg, col_reg}<14'b01110101010010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01110101010010)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01110101010011) && ({row_reg, col_reg}<14'b01110110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110110110101) && ({row_reg, col_reg}<14'b01110110111001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110110111001) && ({row_reg, col_reg}<14'b01110110111011)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01110110111011) && ({row_reg, col_reg}<14'b01110111000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01110111000001) && ({row_reg, col_reg}<14'b01110111000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110111000011)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01110111000100) && ({row_reg, col_reg}<14'b01110111000111)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110111000111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110111001000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110111001001) && ({row_reg, col_reg}<14'b01110111010010)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01110111010010) && ({row_reg, col_reg}<14'b01111000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000110101) && ({row_reg, col_reg}<14'b01111000111001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111000111001) && ({row_reg, col_reg}<14'b01111000111011)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01111000111011)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}>=14'b01111000111100) && ({row_reg, col_reg}<14'b01111001000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01111001000001) && ({row_reg, col_reg}<14'b01111001000011)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111001000011)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01111001000100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111001000101) && ({row_reg, col_reg}<14'b01111001001000)) color_data = 12'b100101110110;

		if(({row_reg, col_reg}>=14'b01111001001000) && ({row_reg, col_reg}<14'b01111010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010110101) && ({row_reg, col_reg}<14'b01111010111001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111010111001)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01111010111010) && ({row_reg, col_reg}<14'b01111010111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010111100) && ({row_reg, col_reg}<14'b01111011000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01111011000010) && ({row_reg, col_reg}<14'b01111011000100)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01111011000100) && ({row_reg, col_reg}<14'b01111011000111)) color_data = 12'b100001100101;

		if(({row_reg, col_reg}>=14'b01111011000111) && ({row_reg, col_reg}<14'b01111100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100110110) && ({row_reg, col_reg}<14'b01111100111000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111100111000) && ({row_reg, col_reg}<14'b01111100111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100111100) && ({row_reg, col_reg}<14'b01111101000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111101000010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111101000011)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01111101000100) && ({row_reg, col_reg}<14'b01111101000110)) color_data = 12'b100001100101;

		if(({row_reg, col_reg}>=14'b01111101000110) && ({row_reg, col_reg}<14'b01111110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110111101) && ({row_reg, col_reg}<14'b01111111000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111111000011)) color_data = 12'b100010000110;
		if(({row_reg, col_reg}==14'b01111111000100)) color_data = 12'b100001100101;

		if(({row_reg, col_reg}>=14'b01111111000101) && ({row_reg, col_reg}<14'b10000000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000000111101) && ({row_reg, col_reg}<14'b10000001000100)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10000001000100) && ({row_reg, col_reg}<14'b10000010111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000010111101) && ({row_reg, col_reg}<14'b10000011000100)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10000011000100) && ({row_reg, col_reg}<14'b10000100111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000100111001) && ({row_reg, col_reg}<14'b10000100111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000100111011) && ({row_reg, col_reg}<14'b10000100111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10000100111101) && ({row_reg, col_reg}<14'b10000101000101)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10000101000101) && ({row_reg, col_reg}<14'b10000110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000110110111) && ({row_reg, col_reg}<14'b10000110111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000110111011) && ({row_reg, col_reg}<14'b10000111000001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10000111000001) && ({row_reg, col_reg}<14'b10000111000101)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10000111000101) && ({row_reg, col_reg}<14'b10001000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001000110110) && ({row_reg, col_reg}<14'b10001000111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001000111011) && ({row_reg, col_reg}<14'b10001001000001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001001000001) && ({row_reg, col_reg}<14'b10001001000101)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10001001000101) && ({row_reg, col_reg}<14'b10001010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001010110110) && ({row_reg, col_reg}<14'b10001010111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001010111100) && ({row_reg, col_reg}<14'b10001011000001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001011000001) && ({row_reg, col_reg}<14'b10001011000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001011000101)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001011000110) && ({row_reg, col_reg}<14'b10001100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001100110110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001100110111) && ({row_reg, col_reg}<14'b10001100111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001100111100) && ({row_reg, col_reg}<14'b10001101000000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001101000000) && ({row_reg, col_reg}<14'b10001101000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001101000100) && ({row_reg, col_reg}<14'b10001101000110)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001101000110) && ({row_reg, col_reg}<14'b10001110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001110110110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001110110111) && ({row_reg, col_reg}<14'b10001110111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001110111100) && ({row_reg, col_reg}<14'b10001110111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001110111111) && ({row_reg, col_reg}<14'b10001111000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001111000100) && ({row_reg, col_reg}<14'b10001111000110)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001111000110) && ({row_reg, col_reg}<14'b10010000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010000110110) && ({row_reg, col_reg}<14'b10010000111000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010000111000) && ({row_reg, col_reg}<14'b10010000111010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010000111010) && ({row_reg, col_reg}<14'b10010000111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010000111101) && ({row_reg, col_reg}<14'b10010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010001000000) && ({row_reg, col_reg}<14'b10010001000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010001000100) && ({row_reg, col_reg}<14'b10010001000110)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10010001000110) && ({row_reg, col_reg}<14'b10010010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010010110110) && ({row_reg, col_reg}<14'b10010010111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010010111101) && ({row_reg, col_reg}<14'b10010011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010011000000) && ({row_reg, col_reg}<14'b10010011000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010011000100) && ({row_reg, col_reg}<14'b10010011000111)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10010011000111) && ({row_reg, col_reg}<14'b10010100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010100110110)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10010100110111) && ({row_reg, col_reg}<14'b10010100111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010100111100) && ({row_reg, col_reg}<14'b10010101000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010101000001) && ({row_reg, col_reg}<14'b10010101000011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010101000011) && ({row_reg, col_reg}<14'b10010101000111)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10010101000111) && ({row_reg, col_reg}<14'b10010110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010110110110) && ({row_reg, col_reg}<14'b10010110111000)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10010110111000) && ({row_reg, col_reg}<14'b10010110111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10010110111011)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10010110111100) && ({row_reg, col_reg}<14'b10010111000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010111000001) && ({row_reg, col_reg}<14'b10010111000011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010111000011) && ({row_reg, col_reg}<14'b10010111000111)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10010111000111) && ({row_reg, col_reg}<14'b10011000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011000110110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011000110111) && ({row_reg, col_reg}<14'b10011000111011)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011000111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011000111100) && ({row_reg, col_reg}<14'b10011001000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011001000001) && ({row_reg, col_reg}<14'b10011001000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10011001000100) && ({row_reg, col_reg}<14'b10011001001000)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10011001001000) && ({row_reg, col_reg}<14'b10011010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011010110110) && ({row_reg, col_reg}<14'b10011010111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011010111100) && ({row_reg, col_reg}<14'b10011011000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011011000010) && ({row_reg, col_reg}<14'b10011011000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10011011000100) && ({row_reg, col_reg}<14'b10011011001000)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10011011001000) && ({row_reg, col_reg}<14'b10011100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011100110110) && ({row_reg, col_reg}<14'b10011100111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011100111011) && ({row_reg, col_reg}<14'b10011101000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011101000010) && ({row_reg, col_reg}<14'b10011101000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10011101000101) && ({row_reg, col_reg}<14'b10011101001000)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10011101001000) && ({row_reg, col_reg}<14'b10011110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011110110111) && ({row_reg, col_reg}<14'b10011110111010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011110111010) && ({row_reg, col_reg}<14'b10011111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011111000010) && ({row_reg, col_reg}<14'b10011111000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10011111000101) && ({row_reg, col_reg}<14'b10011111001000)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10011111001000) && ({row_reg, col_reg}<14'b10100000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100000110111) && ({row_reg, col_reg}<14'b10100000111010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100000111010) && ({row_reg, col_reg}<14'b10100001000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100001000011) && ({row_reg, col_reg}<14'b10100001000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10100001000101) && ({row_reg, col_reg}<14'b10100001001000)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10100001001000) && ({row_reg, col_reg}<14'b10100010110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100010110111) && ({row_reg, col_reg}<14'b10100010111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100010111011) && ({row_reg, col_reg}<14'b10100011000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100011000011) && ({row_reg, col_reg}<14'b10100011000110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10100011000110) && ({row_reg, col_reg}<14'b10100011001000)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10100011001000) && ({row_reg, col_reg}<14'b10100100110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100100110111) && ({row_reg, col_reg}<14'b10100100111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100100111011) && ({row_reg, col_reg}<14'b10100101000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100101000011) && ({row_reg, col_reg}<14'b10100101001000)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10100101001000) && ({row_reg, col_reg}<14'b10100110111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100110111000) && ({row_reg, col_reg}<14'b10100110111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100110111011) && ({row_reg, col_reg}<14'b10100111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100111000011) && ({row_reg, col_reg}<14'b10100111001000)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10100111001000) && ({row_reg, col_reg}<14'b10101000111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10101000111000) && ({row_reg, col_reg}<14'b10101000111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10101000111011) && ({row_reg, col_reg}<14'b10101001000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10101001000011) && ({row_reg, col_reg}<14'b10101001001000)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10101001001000) && ({row_reg, col_reg}<14'b10101011000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10101011000100) && ({row_reg, col_reg}<14'b10101011000111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10101011000111)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10101011001000) && ({row_reg, col_reg}<14'b10101101000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10101101000100) && ({row_reg, col_reg}<14'b10101101000111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10101101000111)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10101101001000) && ({row_reg, col_reg}<14'b10101111000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10101111000100) && ({row_reg, col_reg}<14'b10101111000111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10101111000111)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10101111001000) && ({row_reg, col_reg}<14'b10110001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110001000101) && ({row_reg, col_reg}<14'b10110001000111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10110001000111)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10110001001000) && ({row_reg, col_reg}<14'b10110011000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110011000101) && ({row_reg, col_reg}<14'b10110011000111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10110011000111)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10110011001000) && ({row_reg, col_reg}<14'b10110101000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110101000101) && ({row_reg, col_reg}<14'b10110101000111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10110101000111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10110101001000)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10110101001001) && ({row_reg, col_reg}<14'b10110111000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10110111000101) && ({row_reg, col_reg}<14'b10110111000111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10110111000111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10110111001000)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10110111001001) && ({row_reg, col_reg}<14'b10111001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10111001000101) && ({row_reg, col_reg}<14'b10111001000111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10111001000111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10111001001000)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10111001001001) && ({row_reg, col_reg}<14'b10111011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10111011000110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10111011000111) && ({row_reg, col_reg}<14'b10111011001001)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10111011001001) && ({row_reg, col_reg}<14'b10111101000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10111101000111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10111101001000)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10111101001001)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10111101001010) && ({row_reg, col_reg}<14'b10111111000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10111111000111) && ({row_reg, col_reg}<14'b10111111001010)) color_data = 12'b010001000010;































		if(({row_reg, col_reg}>=14'b10111111001010) && ({row_reg, col_reg}<=14'b11111011111101)) color_data = 12'b000000000000;
	end
endmodule