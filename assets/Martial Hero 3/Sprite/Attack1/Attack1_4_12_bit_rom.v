module Attack1_4_rom
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


		if(({row_reg, col_reg}>=14'b00000000000000) && ({row_reg, col_reg}<14'b00000100111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00000100111110) && ({row_reg, col_reg}<14'b00000101010000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00000101010000) && ({row_reg, col_reg}<14'b00000111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00000111000010) && ({row_reg, col_reg}<14'b00000111010011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00000111010011) && ({row_reg, col_reg}<14'b00001001000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00001001000111) && ({row_reg, col_reg}<14'b00001001010111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00001001010111) && ({row_reg, col_reg}<14'b00001011001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00001011001010) && ({row_reg, col_reg}<14'b00001011011001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00001011011001) && ({row_reg, col_reg}<14'b00001101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00001101001100) && ({row_reg, col_reg}<14'b00001101011100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00001101011100) && ({row_reg, col_reg}<14'b00001111001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00001111001110) && ({row_reg, col_reg}<14'b00001111011110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00001111011110) && ({row_reg, col_reg}<14'b00010001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00010001001111) && ({row_reg, col_reg}<14'b00010001100000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00010001100000) && ({row_reg, col_reg}<14'b00010011010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00010011010001) && ({row_reg, col_reg}<14'b00010011100001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00010011100001) && ({row_reg, col_reg}<14'b00010101010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00010101010010) && ({row_reg, col_reg}<14'b00010101100011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00010101100011) && ({row_reg, col_reg}<14'b00010111010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00010111010100) && ({row_reg, col_reg}<14'b00010111100101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00010111100101) && ({row_reg, col_reg}<14'b00011001010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00011001010101) && ({row_reg, col_reg}<14'b00011001100111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00011001100111) && ({row_reg, col_reg}<14'b00011011010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00011011010110) && ({row_reg, col_reg}<14'b00011011101000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00011011101000) && ({row_reg, col_reg}<14'b00011101010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00011101010111) && ({row_reg, col_reg}<14'b00011101101010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00011101101010) && ({row_reg, col_reg}<14'b00011111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00011111010111) && ({row_reg, col_reg}<14'b00011111101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00011111101011) && ({row_reg, col_reg}<14'b00100001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00100001011000) && ({row_reg, col_reg}<14'b00100001101100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00100001101100) && ({row_reg, col_reg}<14'b00100011011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00100011011001) && ({row_reg, col_reg}<14'b00100011101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00100011101101) && ({row_reg, col_reg}<14'b00100101011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00100101011010) && ({row_reg, col_reg}<14'b00100101101111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00100101101111) && ({row_reg, col_reg}<14'b00100111011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00100111011011) && ({row_reg, col_reg}<14'b00100111110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00100111110000) && ({row_reg, col_reg}<14'b00101001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101001011100) && ({row_reg, col_reg}<14'b00101001110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00101001110001) && ({row_reg, col_reg}<14'b00101011011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101011011101) && ({row_reg, col_reg}<14'b00101011110010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00101011110010) && ({row_reg, col_reg}<14'b00101101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101101011110) && ({row_reg, col_reg}<14'b00101101110011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00101101110011) && ({row_reg, col_reg}<14'b00101111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101111011110) && ({row_reg, col_reg}<14'b00101111110100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00101111110100) && ({row_reg, col_reg}<14'b00110001011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110001011111) && ({row_reg, col_reg}<14'b00110001110101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00110001110101) && ({row_reg, col_reg}<14'b00110011011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110011011111) && ({row_reg, col_reg}<14'b00110011110101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00110011110101) && ({row_reg, col_reg}<14'b00110101100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110101100000) && ({row_reg, col_reg}<14'b00110101110110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00110101110110) && ({row_reg, col_reg}<14'b00110111100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110111100000) && ({row_reg, col_reg}<14'b00110111110111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00110111110111) && ({row_reg, col_reg}<14'b00111001100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111001100001) && ({row_reg, col_reg}<14'b00111001111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00111001111000) && ({row_reg, col_reg}<14'b00111011100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111011100001) && ({row_reg, col_reg}<14'b00111011111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00111011111000) && ({row_reg, col_reg}<14'b00111101100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111101100010) && ({row_reg, col_reg}<14'b00111101111001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00111101111001) && ({row_reg, col_reg}<14'b00111111100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111111100010) && ({row_reg, col_reg}<14'b00111111111001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b00111111111001) && ({row_reg, col_reg}<14'b01000001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000001100010) && ({row_reg, col_reg}<14'b01000001111010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01000001111010) && ({row_reg, col_reg}<14'b01000011100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000011100010) && ({row_reg, col_reg}<14'b01000011111010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01000011111010) && ({row_reg, col_reg}<14'b01000101100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000101100011) && ({row_reg, col_reg}<14'b01000101111011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01000101111011) && ({row_reg, col_reg}<14'b01000111100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000111100011) && ({row_reg, col_reg}<14'b01000111111011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01000111111011) && ({row_reg, col_reg}<14'b01001001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001001100100) && ({row_reg, col_reg}<14'b01001001111011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01001001111011) && ({row_reg, col_reg}<14'b01001011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001011100100) && ({row_reg, col_reg}<14'b01001011111100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01001011111100) && ({row_reg, col_reg}<14'b01001101100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001101100100) && ({row_reg, col_reg}<14'b01001101111100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01001101111100) && ({row_reg, col_reg}<14'b01001111100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001111100100) && ({row_reg, col_reg}<14'b01001111111100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01001111111100) && ({row_reg, col_reg}<14'b01010001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010001100100) && ({row_reg, col_reg}<14'b01010001111100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01010001111100) && ({row_reg, col_reg}<14'b01010011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010011100100) && ({row_reg, col_reg}<14'b01010011111101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01010011111101) && ({row_reg, col_reg}<14'b01010101100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010101100100) && ({row_reg, col_reg}<14'b01010101111101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01010101111101) && ({row_reg, col_reg}<14'b01010111100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010111100100) && ({row_reg, col_reg}<14'b01010111111101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01010111111101) && ({row_reg, col_reg}<14'b01011001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011001100100) && ({row_reg, col_reg}<14'b01011001111101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01011001111101) && ({row_reg, col_reg}<14'b01011011100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011011100011) && ({row_reg, col_reg}<14'b01011011111101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01011011111101) && ({row_reg, col_reg}<14'b01011101100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011101100011) && ({row_reg, col_reg}<14'b01011101111101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01011101111101) && ({row_reg, col_reg}<14'b01011111100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011111100010) && ({row_reg, col_reg}<14'b01011111111101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01011111111101) && ({row_reg, col_reg}<14'b01100001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100001100010) && ({row_reg, col_reg}<14'b01100001111101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01100001111101) && ({row_reg, col_reg}<14'b01100011100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100011100010) && ({row_reg, col_reg}<14'b01100011111101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01100011111101) && ({row_reg, col_reg}<14'b01100101100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100101100010) && ({row_reg, col_reg}<14'b01100101111101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01100101111101) && ({row_reg, col_reg}<14'b01100111100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100111100001) && ({row_reg, col_reg}<14'b01100111111100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01100111111100) && ({row_reg, col_reg}<14'b01101001100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101001100001) && ({row_reg, col_reg}<14'b01101001111100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01101001111100) && ({row_reg, col_reg}<14'b01101011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101011100000) && ({row_reg, col_reg}<14'b01101011111100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01101011111100) && ({row_reg, col_reg}<14'b01101101100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101101100000) && ({row_reg, col_reg}<14'b01101101111100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01101101111100) && ({row_reg, col_reg}<14'b01101111011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101111011111) && ({row_reg, col_reg}<14'b01101111111011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01101111111011) && ({row_reg, col_reg}<14'b01110001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110001000110) && ({row_reg, col_reg}<14'b01110001001010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110001001010) && ({row_reg, col_reg}<14'b01110001010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110001010101) && ({row_reg, col_reg}<14'b01110001011001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01110001011001) && ({row_reg, col_reg}<14'b01110001011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110001011111) && ({row_reg, col_reg}<14'b01110001111011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01110001111011) && ({row_reg, col_reg}<14'b01110011000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110011000101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110011000110) && ({row_reg, col_reg}<14'b01110011001101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110011001101) && ({row_reg, col_reg}<14'b01110011010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110011010100) && ({row_reg, col_reg}<14'b01110011011010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01110011011010) && ({row_reg, col_reg}<14'b01110011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110011011110) && ({row_reg, col_reg}<14'b01110011111011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01110011111011) && ({row_reg, col_reg}<14'b01110101000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110101000101) && ({row_reg, col_reg}<14'b01110101000111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110101000111) && ({row_reg, col_reg}<14'b01110101001110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110101001110) && ({row_reg, col_reg}<14'b01110101010001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01110101010001) && ({row_reg, col_reg}<14'b01110101010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110101010011) && ({row_reg, col_reg}<14'b01110101010110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110101010110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110101010111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110101011000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01110101011001) && ({row_reg, col_reg}<14'b01110101011011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01110101011011) && ({row_reg, col_reg}<14'b01110101011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110101011101) && ({row_reg, col_reg}<14'b01110101111010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01110101111010) && ({row_reg, col_reg}<14'b01110111000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110111000101) && ({row_reg, col_reg}<14'b01110111001000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110111001000) && ({row_reg, col_reg}<14'b01110111001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110111001010) && ({row_reg, col_reg}<14'b01110111001101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110111001101) && ({row_reg, col_reg}<14'b01110111010010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110111010010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01110111010011) && ({row_reg, col_reg}<14'b01110111010101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110111010101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110111010110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01110111010111) && ({row_reg, col_reg}<14'b01110111011001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110111011001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110111011010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110111011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110111011100) && ({row_reg, col_reg}<14'b01110111111010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01110111111010) && ({row_reg, col_reg}<14'b01111001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111001000101) && ({row_reg, col_reg}<14'b01111001000111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111001000111) && ({row_reg, col_reg}<14'b01111001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111001001010) && ({row_reg, col_reg}<14'b01111001001101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111001001101)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111001001110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111001001111) && ({row_reg, col_reg}<14'b01111001010001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111001010001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111001010010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01111001010011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01111001010100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01111001010101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111001010110) && ({row_reg, col_reg}<14'b01111001011000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01111001011000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111001011001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01111001011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111001011011) && ({row_reg, col_reg}<14'b01111001111001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01111001111001) && ({row_reg, col_reg}<14'b01111011000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111011000101) && ({row_reg, col_reg}<14'b01111011000111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111011000111) && ({row_reg, col_reg}<14'b01111011001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111011001001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111011001010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111011001011) && ({row_reg, col_reg}<14'b01111011001101)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111011001101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111011001110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01111011001111) && ({row_reg, col_reg}<14'b01111011010011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111011010011) && ({row_reg, col_reg}<14'b01111011010111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01111011010111) && ({row_reg, col_reg}<14'b01111011011001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111011011001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111011011010) && ({row_reg, col_reg}<14'b01111011111001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01111011111001) && ({row_reg, col_reg}<14'b01111101000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111101000100) && ({row_reg, col_reg}<14'b01111101000111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111101000111) && ({row_reg, col_reg}<14'b01111101001001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01111101001001) && ({row_reg, col_reg}<14'b01111101001011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111101001011) && ({row_reg, col_reg}<14'b01111101001110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111101001110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01111101001111) && ({row_reg, col_reg}<14'b01111101010100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111101010100) && ({row_reg, col_reg}<14'b01111101010110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01111101010110) && ({row_reg, col_reg}<14'b01111101011000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111101011000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111101011001) && ({row_reg, col_reg}<14'b01111101111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01111101111000) && ({row_reg, col_reg}<14'b01111111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111111000011) && ({row_reg, col_reg}<14'b01111111000101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111111000101) && ({row_reg, col_reg}<14'b01111111001001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111111001001) && ({row_reg, col_reg}<14'b01111111001110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111111001110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111111001111) && ({row_reg, col_reg}<14'b01111111010011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111111010011) && ({row_reg, col_reg}<14'b01111111010110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01111111010110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111111010111) && ({row_reg, col_reg}<14'b01111111111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01111111111000) && ({row_reg, col_reg}<14'b10000001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000001000010)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b10000001000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000001000100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b10000001000101) && ({row_reg, col_reg}<14'b10000001001001)) color_data = 12'b100010000110;
		if(({row_reg, col_reg}>=14'b10000001001001) && ({row_reg, col_reg}<14'b10000001001011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b10000001001011) && ({row_reg, col_reg}<14'b10000001001101)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b10000001001101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b10000001001110) && ({row_reg, col_reg}<14'b10000001010010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b10000001010010) && ({row_reg, col_reg}<14'b10000001010110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b10000001010110) && ({row_reg, col_reg}<14'b10000001110111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10000001110111) && ({row_reg, col_reg}<14'b10000011000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000011000101) && ({row_reg, col_reg}<14'b10000011001011)) color_data = 12'b011001100101;
		if(({row_reg, col_reg}>=14'b10000011001011) && ({row_reg, col_reg}<14'b10000011001111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b10000011001111) && ({row_reg, col_reg}<14'b10000011010010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b10000011010010) && ({row_reg, col_reg}<14'b10000011010100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10000011010100) && ({row_reg, col_reg}<14'b10000011010111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b10000011010111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b10000011011000) && ({row_reg, col_reg}<14'b10000011110110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10000011110110) && ({row_reg, col_reg}<14'b10000101000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000101000101) && ({row_reg, col_reg}<14'b10000101000111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000101000111) && ({row_reg, col_reg}<14'b10000101001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000101001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000101001110) && ({row_reg, col_reg}<14'b10000101010010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b10000101010010) && ({row_reg, col_reg}<14'b10000101010100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b10000101010100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b10000101010101) && ({row_reg, col_reg}<14'b10000101010111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b10000101010111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10000101011000) && ({row_reg, col_reg}<14'b10000101110101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10000101110101) && ({row_reg, col_reg}<14'b10000111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000111000011) && ({row_reg, col_reg}<14'b10000111001000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000111001000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000111001001) && ({row_reg, col_reg}<14'b10000111001101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000111001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000111001110) && ({row_reg, col_reg}<14'b10000111010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000111010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b10000111010011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b10000111010100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b10000111010101) && ({row_reg, col_reg}<14'b10000111010111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10000111010111) && ({row_reg, col_reg}<14'b10000111011001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b10000111011001) && ({row_reg, col_reg}<14'b10000111110101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10000111110101) && ({row_reg, col_reg}<14'b10001001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001001000010) && ({row_reg, col_reg}<14'b10001001000101)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001001000101) && ({row_reg, col_reg}<14'b10001001001000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001001001000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001001001001) && ({row_reg, col_reg}<14'b10001001001111)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001001001111) && ({row_reg, col_reg}<14'b10001001010001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001001010001) && ({row_reg, col_reg}<14'b10001001010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b10001001010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001001010100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b10001001010101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10001001010110) && ({row_reg, col_reg}<14'b10001001011001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b10001001011001) && ({row_reg, col_reg}<14'b10001001110100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10001001110100) && ({row_reg, col_reg}<14'b10001011000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001011000001) && ({row_reg, col_reg}<14'b10001011000101)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001011000101) && ({row_reg, col_reg}<14'b10001011001001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001011001001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001011001010) && ({row_reg, col_reg}<14'b10001011001101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001011001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001011001110) && ({row_reg, col_reg}<14'b10001011010100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001011010100)) color_data = 12'b101110000110;
		if(({row_reg, col_reg}>=14'b10001011010101) && ({row_reg, col_reg}<14'b10001011011000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10001011011000) && ({row_reg, col_reg}<14'b10001011011010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b10001011011010) && ({row_reg, col_reg}<14'b10001011110011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10001011110011) && ({row_reg, col_reg}<14'b10001101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001101000000) && ({row_reg, col_reg}<14'b10001101000100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001101000100) && ({row_reg, col_reg}<14'b10001101001001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001101001001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001101001010) && ({row_reg, col_reg}<14'b10001101001100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001101001100) && ({row_reg, col_reg}<14'b10001101001110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001101001110) && ({row_reg, col_reg}<14'b10001101010101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001101010101)) color_data = 12'b101110000110;
		if(({row_reg, col_reg}>=14'b10001101010110) && ({row_reg, col_reg}<14'b10001101011001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b10001101011001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b10001101011010) && ({row_reg, col_reg}<14'b10001101110010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10001101110010) && ({row_reg, col_reg}<14'b10001110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001110111100) && ({row_reg, col_reg}<14'b10001110111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b10001110111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001111000000) && ({row_reg, col_reg}<14'b10001111000011)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001111000011) && ({row_reg, col_reg}<14'b10001111001001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001111001001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001111001010) && ({row_reg, col_reg}<14'b10001111001100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001111001100) && ({row_reg, col_reg}<14'b10001111001110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001111001110) && ({row_reg, col_reg}<14'b10001111010101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001111010101) && ({row_reg, col_reg}<14'b10001111010111)) color_data = 12'b101110000110;
		if(({row_reg, col_reg}>=14'b10001111010111) && ({row_reg, col_reg}<14'b10001111011010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10001111011010) && ({row_reg, col_reg}<14'b10001111110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10001111110001) && ({row_reg, col_reg}<14'b10010000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010000110101) && ({row_reg, col_reg}<14'b10010000111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b10010000111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010001000000) && ({row_reg, col_reg}<14'b10010001000010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10010001000010) && ({row_reg, col_reg}<14'b10010001001001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010001001001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010001001010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010001001011) && ({row_reg, col_reg}<14'b10010001001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010001001101) && ({row_reg, col_reg}<14'b10010001010101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010001010101) && ({row_reg, col_reg}<14'b10010001110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10010001110000) && ({row_reg, col_reg}<14'b10010010110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010010110011) && ({row_reg, col_reg}<14'b10010010111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10010010111111) && ({row_reg, col_reg}<14'b10010011000111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010011000111) && ({row_reg, col_reg}<14'b10010011001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10010011001001) && ({row_reg, col_reg}<14'b10010011001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010011001101) && ({row_reg, col_reg}<14'b10010011010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10010011010000) && ({row_reg, col_reg}<14'b10010011010101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010011010101) && ({row_reg, col_reg}<14'b10010011101110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10010011101110) && ({row_reg, col_reg}<14'b10010100110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010100110011) && ({row_reg, col_reg}<14'b10010100111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b10010100111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010100111111) && ({row_reg, col_reg}<14'b10010101000110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010101000110) && ({row_reg, col_reg}<14'b10010101001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10010101001001) && ({row_reg, col_reg}<14'b10010101001100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010101001100) && ({row_reg, col_reg}<14'b10010101010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10010101010000) && ({row_reg, col_reg}<14'b10010101010100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010101010100) && ({row_reg, col_reg}<14'b10010101101101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10010101101101) && ({row_reg, col_reg}<14'b10010110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010110110011) && ({row_reg, col_reg}<14'b10010110111011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10010110111011) && ({row_reg, col_reg}<14'b10010110111111)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10010110111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010111000000) && ({row_reg, col_reg}<14'b10010111000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010111000101) && ({row_reg, col_reg}<14'b10010111010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10010111010000) && ({row_reg, col_reg}<14'b10010111010011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010111010011) && ({row_reg, col_reg}<14'b10010111101011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10010111101011) && ({row_reg, col_reg}<14'b10011000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011000110011) && ({row_reg, col_reg}<14'b10011000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10011000111010) && ({row_reg, col_reg}<14'b10011000111111)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011000111111) && ({row_reg, col_reg}<14'b10011001000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011001000001) && ({row_reg, col_reg}<14'b10011001000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10011001000100) && ({row_reg, col_reg}<14'b10011001010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10011001010000) && ({row_reg, col_reg}<14'b10011001010011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011001010011) && ({row_reg, col_reg}<14'b10011001101010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10011001101010) && ({row_reg, col_reg}<14'b10011010110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011010110100) && ({row_reg, col_reg}<14'b10011010111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10011010111000) && ({row_reg, col_reg}<14'b10011010111110)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011010111110) && ({row_reg, col_reg}<14'b10011011000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011011000001) && ({row_reg, col_reg}<14'b10011011000011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10011011000011) && ({row_reg, col_reg}<14'b10011011010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10011011010000) && ({row_reg, col_reg}<14'b10011011010010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011011010010) && ({row_reg, col_reg}<14'b10011011101000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10011011101000) && ({row_reg, col_reg}<14'b10011100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011100110110) && ({row_reg, col_reg}<14'b10011100111001)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011100111001) && ({row_reg, col_reg}<14'b10011100111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011100111110) && ({row_reg, col_reg}<14'b10011101001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10011101001111) && ({row_reg, col_reg}<14'b10011101010001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011101010001) && ({row_reg, col_reg}<14'b10011101100110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10011101100110) && ({row_reg, col_reg}<14'b10011110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011110110101) && ({row_reg, col_reg}<14'b10011110110111)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011110110111) && ({row_reg, col_reg}<14'b10011110111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011110111001) && ({row_reg, col_reg}<14'b10011111001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10011111001111) && ({row_reg, col_reg}<14'b10011111010001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011111010001) && ({row_reg, col_reg}<14'b10011111100011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10011111100011) && ({row_reg, col_reg}<14'b10100000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100000110101) && ({row_reg, col_reg}<14'b10100000110111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100000110111) && ({row_reg, col_reg}<14'b10100000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100000111110) && ({row_reg, col_reg}<14'b10100001001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10100001001111) && ({row_reg, col_reg}<14'b10100001010001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100001010001) && ({row_reg, col_reg}<14'b10100001100000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10100001100000) && ({row_reg, col_reg}<14'b10100010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100010110110) && ({row_reg, col_reg}<14'b10100010111000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100010111000) && ({row_reg, col_reg}<14'b10100011000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100011000100) && ({row_reg, col_reg}<14'b10100011001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10100011001111) && ({row_reg, col_reg}<14'b10100011010011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100011010011) && ({row_reg, col_reg}<14'b10100011011011)) color_data = 12'b111111111111;













































		if(({row_reg, col_reg}>=14'b10100011011011) && ({row_reg, col_reg}<=14'b11111011111101)) color_data = 12'b000000000000;
	end
endmodule