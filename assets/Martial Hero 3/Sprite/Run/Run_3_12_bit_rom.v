module Run/Run_3_rom
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











































		if(({row_reg, col_reg}>=14'b00000000000000) && ({row_reg, col_reg}<14'b01010111000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010111000111) && ({row_reg, col_reg}<14'b01010111001011)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01010111001011) && ({row_reg, col_reg}<14'b01011001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011001000110) && ({row_reg, col_reg}<14'b01011001001101)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01011001001101) && ({row_reg, col_reg}<14'b01011010111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011010111001) && ({row_reg, col_reg}<14'b01011010111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011010111011) && ({row_reg, col_reg}<14'b01011010111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011010111110) && ({row_reg, col_reg}<14'b01011011000000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011011000000) && ({row_reg, col_reg}<14'b01011011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011011000110) && ({row_reg, col_reg}<14'b01011011001010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011011001010) && ({row_reg, col_reg}<14'b01011011001101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011011001101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011011001110) && ({row_reg, col_reg}<14'b01011011010001)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01011011010001) && ({row_reg, col_reg}<14'b01011100111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011100111010)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01011100111011)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01011100111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011100111101) && ({row_reg, col_reg}<14'b01011101000000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011101000000)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01011101000001) && ({row_reg, col_reg}<14'b01011101000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011101000100)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01011101000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011101000110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011101000111) && ({row_reg, col_reg}<14'b01011101001001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011101001001) && ({row_reg, col_reg}<14'b01011101001011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011101001011) && ({row_reg, col_reg}<14'b01011101001101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011101001101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011101001110) && ({row_reg, col_reg}<14'b01011101010001)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01011101010001) && ({row_reg, col_reg}<14'b01011110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011110111011) && ({row_reg, col_reg}<14'b01011110111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011110111110) && ({row_reg, col_reg}<14'b01011111000000)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01011111000000) && ({row_reg, col_reg}<14'b01011111000010)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01011111000010) && ({row_reg, col_reg}<14'b01011111000101)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01011111000101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011111000110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011111000111) && ({row_reg, col_reg}<14'b01011111001001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011111001001) && ({row_reg, col_reg}<14'b01011111001100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011111001100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01011111001101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011111001110) && ({row_reg, col_reg}<14'b01011111010000)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01011111010000) && ({row_reg, col_reg}<14'b01100000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100000111100) && ({row_reg, col_reg}<14'b01100000111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100000111111)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01100001000000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100001000001) && ({row_reg, col_reg}<14'b01100001000011)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01100001000011) && ({row_reg, col_reg}<14'b01100001000101)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01100001000101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100001000110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100001000111) && ({row_reg, col_reg}<14'b01100001001010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100001001010) && ({row_reg, col_reg}<14'b01100001001100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100001001100)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01100001001101) && ({row_reg, col_reg}<14'b01100010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100010111010) && ({row_reg, col_reg}<14'b01100010111101)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01100010111101) && ({row_reg, col_reg}<14'b01100010111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100010111111)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01100011000000) && ({row_reg, col_reg}<14'b01100011000010)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==14'b01100011000010)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01100011000011) && ({row_reg, col_reg}<14'b01100011000101)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01100011000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100011000110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100011000111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100011001000) && ({row_reg, col_reg}<14'b01100011001010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100011001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b01100011001011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100011001100)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01100011001101) && ({row_reg, col_reg}<14'b01100100111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100100111010) && ({row_reg, col_reg}<14'b01100100111101)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01100100111101) && ({row_reg, col_reg}<14'b01100100111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100100111111) && ({row_reg, col_reg}<14'b01100101000100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100101000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100101000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100101000110) && ({row_reg, col_reg}<14'b01100101001000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100101001000) && ({row_reg, col_reg}<14'b01100101001100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100101001100)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01100101001101) && ({row_reg, col_reg}<14'b01100110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100110111100) && ({row_reg, col_reg}<14'b01100110111111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100110111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100111000000) && ({row_reg, col_reg}<14'b01100111000011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01100111000011) && ({row_reg, col_reg}<14'b01100111000110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100111000110)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01100111000111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100111001000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100111001001) && ({row_reg, col_reg}<14'b01100111001100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100111001100)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01100111001101) && ({row_reg, col_reg}<14'b01101000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101000111100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101000111101) && ({row_reg, col_reg}<14'b01101000111111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101000111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101001000000) && ({row_reg, col_reg}<14'b01101001000011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101001000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101001000100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101001000101)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01101001000110)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101001000111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101001001000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101001001001) && ({row_reg, col_reg}<14'b01101001001011)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01101001001011) && ({row_reg, col_reg}<14'b01101001001101)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01101001001101) && ({row_reg, col_reg}<14'b01101010111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101010111100) && ({row_reg, col_reg}<14'b01101010111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101010111111) && ({row_reg, col_reg}<14'b01101011000001)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01101011000001)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101011000010) && ({row_reg, col_reg}<14'b01101011000100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101011000100) && ({row_reg, col_reg}<14'b01101011000111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101011000111) && ({row_reg, col_reg}<14'b01101011001001)) color_data = 12'b100101110110;

		if(({row_reg, col_reg}>=14'b01101011001001) && ({row_reg, col_reg}<14'b01101100111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101100111100) && ({row_reg, col_reg}<14'b01101100111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101100111111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101101000000) && ({row_reg, col_reg}<14'b01101101000010)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01101101000010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101101000011) && ({row_reg, col_reg}<14'b01101101001000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101101001000)) color_data = 12'b100101110110;

		if(({row_reg, col_reg}>=14'b01101101001001) && ({row_reg, col_reg}<14'b01101110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101110111100) && ({row_reg, col_reg}<14'b01101111000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101111000000) && ({row_reg, col_reg}<14'b01101111000010)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01101111000010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101111000011) && ({row_reg, col_reg}<14'b01101111001000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101111001000)) color_data = 12'b100101110110;

		if(({row_reg, col_reg}>=14'b01101111001001) && ({row_reg, col_reg}<14'b01110000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110000111100) && ({row_reg, col_reg}<14'b01110001000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110001000000)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}>=14'b01110001000001) && ({row_reg, col_reg}<14'b01110001001000)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110001001000)) color_data = 12'b100101110110;

		if(({row_reg, col_reg}>=14'b01110001001001) && ({row_reg, col_reg}<14'b01110010111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010111100) && ({row_reg, col_reg}<14'b01110011000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110011000000) && ({row_reg, col_reg}<14'b01110011000011)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01110011000011) && ({row_reg, col_reg}<14'b01110011001000)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01110011001000)) color_data = 12'b100001100101;

		if(({row_reg, col_reg}>=14'b01110011001001) && ({row_reg, col_reg}<14'b01110100111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110100111101) && ({row_reg, col_reg}<14'b01110100111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110100111111) && ({row_reg, col_reg}<14'b01110101000110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110101000110)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01110101000111)) color_data = 12'b100001100101;

		if(({row_reg, col_reg}>=14'b01110101001000) && ({row_reg, col_reg}<14'b01110110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110110111101) && ({row_reg, col_reg}<14'b01110111000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110111000000) && ({row_reg, col_reg}<14'b01110111000010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01110111000010) && ({row_reg, col_reg}<14'b01110111000101)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01110111000101) && ({row_reg, col_reg}<14'b01110111000111)) color_data = 12'b100001100101;

		if(({row_reg, col_reg}>=14'b01110111000111) && ({row_reg, col_reg}<14'b01111000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000111101) && ({row_reg, col_reg}<14'b01111001000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111001000011)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01111001000100) && ({row_reg, col_reg}<14'b01111001000110)) color_data = 12'b100001100101;

		if(({row_reg, col_reg}>=14'b01111001000110) && ({row_reg, col_reg}<14'b01111010111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010111101) && ({row_reg, col_reg}<14'b01111011000110)) color_data = 12'b100010000110;

		if(({row_reg, col_reg}>=14'b01111011000110) && ({row_reg, col_reg}<14'b01111100111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100111101) && ({row_reg, col_reg}<14'b01111101000101)) color_data = 12'b011001100101;

		if(({row_reg, col_reg}>=14'b01111101000101) && ({row_reg, col_reg}<14'b01111110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110111101) && ({row_reg, col_reg}<14'b01111111000010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111111000010) && ({row_reg, col_reg}<14'b01111111000101)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b01111111000101) && ({row_reg, col_reg}<14'b10000000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000000111101) && ({row_reg, col_reg}<14'b10000000111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000000111111) && ({row_reg, col_reg}<14'b10000001000011)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10000001000011) && ({row_reg, col_reg}<14'b10000001000101)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10000001000101) && ({row_reg, col_reg}<14'b10000010111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000010111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000010111110) && ({row_reg, col_reg}<14'b10000011000100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b10000011000100)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10000011000101) && ({row_reg, col_reg}<14'b10000100111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000100111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000100111110) && ({row_reg, col_reg}<14'b10000101000100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b10000101000100)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10000101000101) && ({row_reg, col_reg}<14'b10000110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000110111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000110111110) && ({row_reg, col_reg}<14'b10000111000100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b10000111000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000111000101)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10000111000110) && ({row_reg, col_reg}<14'b10001000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001000111101) && ({row_reg, col_reg}<14'b10001000111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001000111111) && ({row_reg, col_reg}<14'b10001001000100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001001000100) && ({row_reg, col_reg}<14'b10001001000111)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10001001000111) && ({row_reg, col_reg}<14'b10001010111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001010111101) && ({row_reg, col_reg}<14'b10001010111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001010111111) && ({row_reg, col_reg}<14'b10001011000100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001011000100) && ({row_reg, col_reg}<14'b10001011000111)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10001011000111) && ({row_reg, col_reg}<14'b10001100111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001100111110) && ({row_reg, col_reg}<14'b10001101000000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001101000000) && ({row_reg, col_reg}<14'b10001101000100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001101000100) && ({row_reg, col_reg}<14'b10001101001000)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10001101001000) && ({row_reg, col_reg}<14'b10001110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001110111110) && ({row_reg, col_reg}<14'b10001111000000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001111000000) && ({row_reg, col_reg}<14'b10001111000100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001111000100) && ({row_reg, col_reg}<14'b10001111001000)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10001111001000) && ({row_reg, col_reg}<14'b10010000111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010000111111) && ({row_reg, col_reg}<14'b10010001000001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010001000001) && ({row_reg, col_reg}<14'b10010001000100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10010001000100) && ({row_reg, col_reg}<14'b10010001001000)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10010001001000) && ({row_reg, col_reg}<14'b10010010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010010111010) && ({row_reg, col_reg}<14'b10010010111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010010111101) && ({row_reg, col_reg}<14'b10010010111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010010111111) && ({row_reg, col_reg}<14'b10010011000001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010011000001) && ({row_reg, col_reg}<14'b10010011000100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10010011000100) && ({row_reg, col_reg}<14'b10010011001000)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10010011001000) && ({row_reg, col_reg}<14'b10010100111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010100111000) && ({row_reg, col_reg}<14'b10010100111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010100111111) && ({row_reg, col_reg}<14'b10010101001000)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10010101001000) && ({row_reg, col_reg}<14'b10010110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010110110111) && ({row_reg, col_reg}<14'b10010111000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010111000000) && ({row_reg, col_reg}<14'b10010111000011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010111000011)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10010111000100) && ({row_reg, col_reg}<14'b10011000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011000110110) && ({row_reg, col_reg}<14'b10011000111000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011000111000) && ({row_reg, col_reg}<14'b10011000111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011000111111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10011001000000) && ({row_reg, col_reg}<14'b10011001000011)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10011001000011) && ({row_reg, col_reg}<14'b10011010111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011010111110) && ({row_reg, col_reg}<14'b10011011000000)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011011000000)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10011011000001) && ({row_reg, col_reg}<14'b10011100111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011100111100)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10011100111101)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10011100111110) && ({row_reg, col_reg}<14'b10011101000000)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10011101000000) && ({row_reg, col_reg}<14'b10011110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011110111010)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011110111011) && ({row_reg, col_reg}<14'b10011110111101)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011110111101)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10011110111110) && ({row_reg, col_reg}<14'b10100000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100000111010) && ({row_reg, col_reg}<14'b10100000111100)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10100000111100)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10100000111101) && ({row_reg, col_reg}<14'b10100010111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100010111011) && ({row_reg, col_reg}<14'b10100010111110)) color_data = 12'b010001000010;













































		if(({row_reg, col_reg}>=14'b10100010111110) && ({row_reg, col_reg}<=14'b11111011111101)) color_data = 12'b000000000000;
	end
endmodule