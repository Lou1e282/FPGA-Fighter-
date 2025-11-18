module Run_1_rom
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









































		if(({row_reg, col_reg}>=14'b00000000000000) && ({row_reg, col_reg}<14'b01010011001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010011001000) && ({row_reg, col_reg}<14'b01010011001100)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01010011001100) && ({row_reg, col_reg}<14'b01010101000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010101000111) && ({row_reg, col_reg}<14'b01010101001110)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01010101001110) && ({row_reg, col_reg}<14'b01010111000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010111000111) && ({row_reg, col_reg}<14'b01010111001011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01010111001011) && ({row_reg, col_reg}<14'b01010111001110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01010111001110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01010111001111) && ({row_reg, col_reg}<14'b01010111010010)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01010111010010) && ({row_reg, col_reg}<14'b01011000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011000111110) && ({row_reg, col_reg}<14'b01011001000000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011001000001)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01011001000010) && ({row_reg, col_reg}<14'b01011001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011001000101)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01011001000110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011001000111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011001001000) && ({row_reg, col_reg}<14'b01011001001010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011001001010) && ({row_reg, col_reg}<14'b01011001001100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011001001100) && ({row_reg, col_reg}<14'b01011001001110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011001001110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011001001111) && ({row_reg, col_reg}<14'b01011001010010)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01011001010010) && ({row_reg, col_reg}<14'b01011010111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011010111101) && ({row_reg, col_reg}<14'b01011010111111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011010111111) && ({row_reg, col_reg}<14'b01011011000001)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01011011000001) && ({row_reg, col_reg}<14'b01011011000011)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01011011000011) && ({row_reg, col_reg}<14'b01011011000110)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01011011000110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011011000111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011011001000) && ({row_reg, col_reg}<14'b01011011001010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011011001010) && ({row_reg, col_reg}<14'b01011011001101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011011001101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01011011001110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011011001111) && ({row_reg, col_reg}<14'b01011011010001)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01011011010001) && ({row_reg, col_reg}<14'b01011100111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011100111100)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}>=14'b01011100111101) && ({row_reg, col_reg}<14'b01011101000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011101000000)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01011101000001)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01011101000010) && ({row_reg, col_reg}<14'b01011101000100)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01011101000100) && ({row_reg, col_reg}<14'b01011101000110)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01011101000110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011101000111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011101001000) && ({row_reg, col_reg}<14'b01011101001011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011101001011) && ({row_reg, col_reg}<14'b01011101001101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011101001101)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01011101001110) && ({row_reg, col_reg}<14'b01011110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011110111011)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}==14'b01011110111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011110111101)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01011110111110) && ({row_reg, col_reg}<14'b01011111000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011111000000)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01011111000001) && ({row_reg, col_reg}<14'b01011111000011)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==14'b01011111000011)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01011111000100) && ({row_reg, col_reg}<14'b01011111000110)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01011111000110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011111000111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011111001000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011111001001) && ({row_reg, col_reg}<14'b01011111001011)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01011111001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b01011111001100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011111001101)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01011111001110) && ({row_reg, col_reg}<14'b01100000111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100000111011) && ({row_reg, col_reg}<14'b01100000111110)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01100000111110) && ({row_reg, col_reg}<14'b01100001000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100001000000) && ({row_reg, col_reg}<14'b01100001000101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100001000101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100001000110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100001000111) && ({row_reg, col_reg}<14'b01100001001001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100001001001) && ({row_reg, col_reg}<14'b01100001001101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100001001101)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01100001001110) && ({row_reg, col_reg}<14'b01100010111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100010111101) && ({row_reg, col_reg}<14'b01100011000000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100011000001) && ({row_reg, col_reg}<14'b01100011000100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100011000100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100011000101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01100011000110)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01100011000111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100011001000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100011001001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100011001010) && ({row_reg, col_reg}<14'b01100011001101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01100011001101) && ({row_reg, col_reg}<14'b01100011010000)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01100011010000) && ({row_reg, col_reg}<14'b01100100111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100100111101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100100111110) && ({row_reg, col_reg}<14'b01100101000000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100101000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100101000001) && ({row_reg, col_reg}<14'b01100101000100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100101000100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100101000101) && ({row_reg, col_reg}<14'b01100101001000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01100101001000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100101001001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100101001010) && ({row_reg, col_reg}<14'b01100101001100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01100101001100) && ({row_reg, col_reg}<14'b01100101010001)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01100101010001) && ({row_reg, col_reg}<14'b01100110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100110111101) && ({row_reg, col_reg}<14'b01100111000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100111000000) && ({row_reg, col_reg}<14'b01100111000010)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01100111000010)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100111000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100111000100) && ({row_reg, col_reg}<14'b01100111001001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01100111001001)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01100111001010) && ({row_reg, col_reg}<14'b01100111001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100111001100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100111001101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100111001110) && ({row_reg, col_reg}<14'b01100111010001)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01100111010001) && ({row_reg, col_reg}<14'b01101000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101000111101) && ({row_reg, col_reg}<14'b01101001000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101001000000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101001000001) && ({row_reg, col_reg}<14'b01101001000011)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01101001000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101001000100) && ({row_reg, col_reg}<14'b01101001001001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101001001001)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01101001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101001001011) && ({row_reg, col_reg}<14'b01101001001101)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01101001001101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101001001110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101001001111)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01101001010000) && ({row_reg, col_reg}<14'b01101010111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101010111101) && ({row_reg, col_reg}<14'b01101011000001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101011000001) && ({row_reg, col_reg}<14'b01101011000011)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}>=14'b01101011000011) && ({row_reg, col_reg}<14'b01101011001001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01101011001001)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01101011001010) && ({row_reg, col_reg}<14'b01101011001110)) color_data = 12'b100001100100;

		if(({row_reg, col_reg}>=14'b01101011001110) && ({row_reg, col_reg}<14'b01101100111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101100111101) && ({row_reg, col_reg}<14'b01101101000001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101101000001)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}>=14'b01101101000010) && ({row_reg, col_reg}<14'b01101101000100)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01101101000100) && ({row_reg, col_reg}<14'b01101101001001)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01101101001001)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101101001010) && ({row_reg, col_reg}<14'b01101101001101)) color_data = 12'b100001100100;

		if(({row_reg, col_reg}>=14'b01101101001101) && ({row_reg, col_reg}<14'b01101110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101110111101) && ({row_reg, col_reg}<14'b01101111000001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101111000001) && ({row_reg, col_reg}<14'b01101111000111)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01101111000111)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01101111001000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101111001001) && ({row_reg, col_reg}<14'b01101111001100)) color_data = 12'b100001100100;

		if(({row_reg, col_reg}>=14'b01101111001100) && ({row_reg, col_reg}<14'b01110000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110000111110) && ({row_reg, col_reg}<14'b01110001000001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110001000001) && ({row_reg, col_reg}<14'b01110001000011)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01110001000011) && ({row_reg, col_reg}<14'b01110001000110)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01110001000110)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110001000111)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01110001001000) && ({row_reg, col_reg}<14'b01110010111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010111110) && ({row_reg, col_reg}<14'b01110011000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110011000011) && ({row_reg, col_reg}<14'b01110011000111)) color_data = 12'b100101110110;

		if(({row_reg, col_reg}>=14'b01110011000111) && ({row_reg, col_reg}<14'b01110100111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110100111110) && ({row_reg, col_reg}<14'b01110101000110)) color_data = 12'b100010000110;

		if(({row_reg, col_reg}>=14'b01110101000110) && ({row_reg, col_reg}<14'b01110110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110110111110) && ({row_reg, col_reg}<14'b01110111000101)) color_data = 12'b011001100101;

		if(({row_reg, col_reg}>=14'b01110111000101) && ({row_reg, col_reg}<14'b01111000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000111110) && ({row_reg, col_reg}<14'b01111001000011)) color_data = 12'b011001100101;
		if(({row_reg, col_reg}>=14'b01111001000011) && ({row_reg, col_reg}<14'b01111001001100)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01111001001100) && ({row_reg, col_reg}<14'b01111010111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010111110) && ({row_reg, col_reg}<14'b01111011000011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111011000011) && ({row_reg, col_reg}<14'b01111011001101)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01111011001101) && ({row_reg, col_reg}<14'b01111100111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111100111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111100111111) && ({row_reg, col_reg}<14'b01111101001110)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01111101001110) && ({row_reg, col_reg}<14'b01111110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110101111) && ({row_reg, col_reg}<14'b01111110110001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01111110110001) && ({row_reg, col_reg}<14'b01111110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110111110) && ({row_reg, col_reg}<14'b01111111000000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111111000000) && ({row_reg, col_reg}<14'b01111111001110)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01111111001110) && ({row_reg, col_reg}<14'b10000000101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000000101110) && ({row_reg, col_reg}<14'b10000000110010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000000110010) && ({row_reg, col_reg}<14'b10000000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000000111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000000111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000000111111) && ({row_reg, col_reg}<14'b10000001000011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000001000011) && ({row_reg, col_reg}<14'b10000001001010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10000001001010) && ({row_reg, col_reg}<14'b10000001001110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000001001110)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10000001001111) && ({row_reg, col_reg}<14'b10000010101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000010101101) && ({row_reg, col_reg}<14'b10000010101111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000010101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000010110000) && ({row_reg, col_reg}<14'b10000010110011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000010110011) && ({row_reg, col_reg}<14'b10000010111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000010111100) && ({row_reg, col_reg}<14'b10000010111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000010111110) && ({row_reg, col_reg}<14'b10000011000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000011000000) && ({row_reg, col_reg}<14'b10000011001101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000011001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000011001110)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10000011001111) && ({row_reg, col_reg}<14'b10000100110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000100110001) && ({row_reg, col_reg}<14'b10000100110101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000100110101) && ({row_reg, col_reg}<14'b10000100111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000100111010) && ({row_reg, col_reg}<14'b10000100111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000100111110) && ({row_reg, col_reg}<14'b10000101000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000101000011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000101000100) && ({row_reg, col_reg}<14'b10000101001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000101001011) && ({row_reg, col_reg}<14'b10000101001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000101001101)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10000101001110)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10000101001111) && ({row_reg, col_reg}<14'b10000110110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000110110010) && ({row_reg, col_reg}<14'b10000110110110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000110110110) && ({row_reg, col_reg}<14'b10000110111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000110111000) && ({row_reg, col_reg}<14'b10000110111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000110111101) && ({row_reg, col_reg}<14'b10000111000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000111000010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000111000011) && ({row_reg, col_reg}<14'b10000111001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000111001100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000111001101)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10000111001110)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10000111001111) && ({row_reg, col_reg}<14'b10001000110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001000110010) && ({row_reg, col_reg}<14'b10001000110111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001000110111) && ({row_reg, col_reg}<14'b10001000111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001000111101) && ({row_reg, col_reg}<14'b10001001000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001001000001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001001000010) && ({row_reg, col_reg}<14'b10001001001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001001001100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001001001101)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10001001001110)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10001001001111) && ({row_reg, col_reg}<14'b10001010110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001010110011) && ({row_reg, col_reg}<14'b10001010110111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001010110111) && ({row_reg, col_reg}<14'b10001011000001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001011000001) && ({row_reg, col_reg}<14'b10001011001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001011001100) && ({row_reg, col_reg}<14'b10001011001110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001011001110)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10001011001111) && ({row_reg, col_reg}<14'b10001100110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001100110100) && ({row_reg, col_reg}<14'b10001100110111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001100110111) && ({row_reg, col_reg}<14'b10001100111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001100111111) && ({row_reg, col_reg}<14'b10001101001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001101001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001101001110)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10001101001111) && ({row_reg, col_reg}<14'b10001110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001110110101) && ({row_reg, col_reg}<14'b10001110111000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001110111000) && ({row_reg, col_reg}<14'b10001110111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001110111100) && ({row_reg, col_reg}<14'b10001111001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001111001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001111001110)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10001111001111)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10001111010000) && ({row_reg, col_reg}<14'b10010001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010001001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010001001110) && ({row_reg, col_reg}<14'b10010001010000)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10010001010000) && ({row_reg, col_reg}<14'b10010011001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010011001110) && ({row_reg, col_reg}<14'b10010011010010)) color_data = 12'b010001000010;





















































		if(({row_reg, col_reg}>=14'b10010011010010) && ({row_reg, col_reg}<=14'b11111011111101)) color_data = 12'b000000000000;
	end
endmodule