module Attack1_1_rom
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
















		if(({row_reg, col_reg}>=14'b00000000000000) && ({row_reg, col_reg}<14'b00100000011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00100000011010) && ({row_reg, col_reg}<14'b00100000011101)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00100000011101) && ({row_reg, col_reg}<14'b00100010011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00100010011001) && ({row_reg, col_reg}<14'b00100010011110)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00100010011110) && ({row_reg, col_reg}<14'b00100100011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00100100011001) && ({row_reg, col_reg}<14'b00100100011110)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00100100011110) && ({row_reg, col_reg}<14'b00100110011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00100110011001) && ({row_reg, col_reg}<14'b00100110011110)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00100110011110) && ({row_reg, col_reg}<14'b00101000011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101000011010) && ({row_reg, col_reg}<14'b00101000011111)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00101000011111) && ({row_reg, col_reg}<14'b00101010011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101010011011) && ({row_reg, col_reg}<14'b00101010011111)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00101010011111) && ({row_reg, col_reg}<14'b00101100011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101100011100) && ({row_reg, col_reg}<14'b00101100100001)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00101100100001) && ({row_reg, col_reg}<14'b00101110011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101110011101) && ({row_reg, col_reg}<14'b00101110100001)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00101110100001) && ({row_reg, col_reg}<14'b00110000011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110000011101) && ({row_reg, col_reg}<14'b00110000100010)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00110000100010) && ({row_reg, col_reg}<14'b00110010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110010011110) && ({row_reg, col_reg}<14'b00110010100010)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00110010100010) && ({row_reg, col_reg}<14'b00110100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110100011110) && ({row_reg, col_reg}<14'b00110100100011)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00110100100011) && ({row_reg, col_reg}<14'b00110110011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110110011111) && ({row_reg, col_reg}<14'b00110110100011)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00110110100011) && ({row_reg, col_reg}<14'b00111000011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111000011111) && ({row_reg, col_reg}<14'b00111000100100)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00111000100100) && ({row_reg, col_reg}<14'b00111010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111010100000) && ({row_reg, col_reg}<14'b00111010100100)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00111010100100) && ({row_reg, col_reg}<14'b00111100100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111100100001) && ({row_reg, col_reg}<14'b00111100100101)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00111100100101) && ({row_reg, col_reg}<14'b00111110100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111110100010) && ({row_reg, col_reg}<14'b00111110100110)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00111110100110) && ({row_reg, col_reg}<14'b01000000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000000100010) && ({row_reg, col_reg}<14'b01000000100110)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01000000100110) && ({row_reg, col_reg}<14'b01000010100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000010100011) && ({row_reg, col_reg}<14'b01000010100111)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01000010100111) && ({row_reg, col_reg}<14'b01000100100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000100100011) && ({row_reg, col_reg}<14'b01000100100111)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01000100100111) && ({row_reg, col_reg}<14'b01000110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000110100100) && ({row_reg, col_reg}<14'b01000110101000)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01000110101000) && ({row_reg, col_reg}<14'b01001000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001000100100) && ({row_reg, col_reg}<14'b01001000101000)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01001000101000) && ({row_reg, col_reg}<14'b01001010100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001010100101) && ({row_reg, col_reg}<14'b01001010101001)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b01001010101001) && ({row_reg, col_reg}<14'b01001010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001010111010) && ({row_reg, col_reg}<14'b01001010111110)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01001010111110) && ({row_reg, col_reg}<14'b01001100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001100100110) && ({row_reg, col_reg}<14'b01001100101001)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}==14'b01001100101001)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01001100101010) && ({row_reg, col_reg}<14'b01001100111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001100111001) && ({row_reg, col_reg}<14'b01001101000000)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01001101000000) && ({row_reg, col_reg}<14'b01001110100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001110100111) && ({row_reg, col_reg}<14'b01001110101010)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01001110101010) && ({row_reg, col_reg}<14'b01001110111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001110111001) && ({row_reg, col_reg}<14'b01001110111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01001110111101) && ({row_reg, col_reg}<14'b01001111000000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01001111000000)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01001111000001) && ({row_reg, col_reg}<14'b01010000100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010000100111) && ({row_reg, col_reg}<14'b01010000101001)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}==14'b01010000101001)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01010000101010) && ({row_reg, col_reg}<14'b01010000101100)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01010000101100) && ({row_reg, col_reg}<14'b01010000111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010000111000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01010000111001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01010000111010) && ({row_reg, col_reg}<14'b01010000111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01010000111100) && ({row_reg, col_reg}<14'b01010000111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01010000111110) && ({row_reg, col_reg}<14'b01010001000000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01010001000000)) color_data = 12'b000000000001;

		if(({row_reg, col_reg}>=14'b01010001000001) && ({row_reg, col_reg}<14'b01010010100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010010100111)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}==14'b01010010101000)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01010010101001) && ({row_reg, col_reg}<14'b01010010101100)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01010010101100) && ({row_reg, col_reg}<14'b01010010111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010010111000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01010010111001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01010010111010) && ({row_reg, col_reg}<14'b01010010111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01010010111100) && ({row_reg, col_reg}<14'b01010010111111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01010010111111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01010011000000)) color_data = 12'b000000000001;

		if(({row_reg, col_reg}>=14'b01010011000001) && ({row_reg, col_reg}<14'b01010100101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010100101001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01010100101010) && ({row_reg, col_reg}<14'b01010100101100)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01010100101100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01010100101101) && ({row_reg, col_reg}<14'b01010100111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010100111000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01010100111001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01010100111010) && ({row_reg, col_reg}<14'b01010100111100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01010100111100) && ({row_reg, col_reg}<14'b01010100111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01010100111110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01010100111111)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01010101000000) && ({row_reg, col_reg}<14'b01010110101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010110101001) && ({row_reg, col_reg}<14'b01010110101100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01010110101100)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01010110101101) && ({row_reg, col_reg}<14'b01010110111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010110111000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01010110111001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01010110111010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01010110111011)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01010110111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b01010110111101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01010110111110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01010110111111)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01010111000000) && ({row_reg, col_reg}<14'b01011000101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011000101010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011000101011)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}==14'b01011000101100)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01011000101101) && ({row_reg, col_reg}<14'b01011000111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011000111000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011000111001)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01011000111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011000111011) && ({row_reg, col_reg}<14'b01011000111111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01011000111111)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01011001000000) && ({row_reg, col_reg}<14'b01011010101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011010101010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01011010101011) && ({row_reg, col_reg}<14'b01011010101101)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01011010101101) && ({row_reg, col_reg}<14'b01011010111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011010111000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011010111001)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01011010111010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011010111011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011010111100) && ({row_reg, col_reg}<14'b01011010111111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01011010111111)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01011011000000) && ({row_reg, col_reg}<14'b01011100101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011100101010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01011100101011) && ({row_reg, col_reg}<14'b01011100101101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011100101101) && ({row_reg, col_reg}<14'b01011100110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011100110111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011100111000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011100111001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011100111010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011100111011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011100111100) && ({row_reg, col_reg}<14'b01011100111110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01011100111110) && ({row_reg, col_reg}<14'b01011101000000)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01011101000000) && ({row_reg, col_reg}<14'b01011110101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011110101010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01011110101011) && ({row_reg, col_reg}<14'b01011110101110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011110101110) && ({row_reg, col_reg}<14'b01011110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011110110011) && ({row_reg, col_reg}<14'b01011110110110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011110110110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011110110111)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01011110111000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011110111001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011110111010) && ({row_reg, col_reg}<14'b01011110111100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01011110111100) && ({row_reg, col_reg}<14'b01011110111110)) color_data = 12'b100101110101;

		if(({row_reg, col_reg}>=14'b01011110111110) && ({row_reg, col_reg}<14'b01100000101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100000101011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100000101100) && ({row_reg, col_reg}<14'b01100000110101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100000110101) && ({row_reg, col_reg}<14'b01100000111000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100000111000) && ({row_reg, col_reg}<14'b01100000111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100000111010)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01100000111011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100000111100)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01100000111101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100000111110)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01100000111111) && ({row_reg, col_reg}<14'b01100001000010)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01100001000010) && ({row_reg, col_reg}<14'b01100010101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100010101011) && ({row_reg, col_reg}<14'b01100010101101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100010101101) && ({row_reg, col_reg}<14'b01100010110101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100010110101) && ({row_reg, col_reg}<14'b01100010111001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100010111001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100010111010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100010111011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100010111100) && ({row_reg, col_reg}<14'b01100010111110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01100010111110) && ({row_reg, col_reg}<14'b01100011000011)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01100011000011) && ({row_reg, col_reg}<14'b01100100101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100100101011) && ({row_reg, col_reg}<14'b01100100110000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100100110000) && ({row_reg, col_reg}<14'b01100100110100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100100110100) && ({row_reg, col_reg}<14'b01100100111001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100100111001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100100111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100100111011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100100111100) && ({row_reg, col_reg}<14'b01100100111110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01100100111110)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01100100111111) && ({row_reg, col_reg}<14'b01100101000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01100101000011)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01100101000100) && ({row_reg, col_reg}<14'b01100110110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100110110001) && ({row_reg, col_reg}<14'b01100110111001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100110111001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01100110111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100110111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100110111100) && ({row_reg, col_reg}<14'b01100110111110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01100110111110) && ({row_reg, col_reg}<14'b01100111000000)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01100111000000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100111000001) && ({row_reg, col_reg}<14'b01100111000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100111000011)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01100111000100) && ({row_reg, col_reg}<14'b01101000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101000110101) && ({row_reg, col_reg}<14'b01101000111000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101000111000) && ({row_reg, col_reg}<14'b01101000111011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101000111011)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}>=14'b01101000111100) && ({row_reg, col_reg}<14'b01101000111110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01101000111110)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01101000111111)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01101001000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101001000001) && ({row_reg, col_reg}<14'b01101001000011)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01101001000011) && ({row_reg, col_reg}<14'b01101001000101)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01101001000101) && ({row_reg, col_reg}<14'b01101010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101010110101) && ({row_reg, col_reg}<14'b01101010111000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101010111000) && ({row_reg, col_reg}<14'b01101010111011)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01101010111011)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01101010111100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101010111101)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01101010111110) && ({row_reg, col_reg}<14'b01101011000000)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01101011000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101011000001)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01101011000010) && ({row_reg, col_reg}<14'b01101011000101)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01101011000101) && ({row_reg, col_reg}<14'b01101100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101100110110) && ({row_reg, col_reg}<14'b01101100111010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101100111010) && ({row_reg, col_reg}<14'b01101100111100)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01101100111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01101100111101) && ({row_reg, col_reg}<14'b01101101000000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101101000001) && ({row_reg, col_reg}<14'b01101101000100)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01101101000100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101101000101)) color_data = 12'b101110000111;

		if(({row_reg, col_reg}>=14'b01101101000110) && ({row_reg, col_reg}<14'b01101110111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101110111000) && ({row_reg, col_reg}<14'b01101110111010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101110111010) && ({row_reg, col_reg}<14'b01101110111110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01101110111110)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01101110111111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01101111000000) && ({row_reg, col_reg}<14'b01101111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101111000010)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01101111000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101111000100) && ({row_reg, col_reg}<14'b01101111000111)) color_data = 12'b101110000111;

		if(({row_reg, col_reg}>=14'b01101111000111) && ({row_reg, col_reg}<14'b01110000111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110000111001) && ({row_reg, col_reg}<14'b01110001000001)) color_data = 12'b100010000110;
		if(({row_reg, col_reg}>=14'b01110001000001) && ({row_reg, col_reg}<14'b01110001000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110001000011) && ({row_reg, col_reg}<14'b01110001000101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110001000101) && ({row_reg, col_reg}<14'b01110001001000)) color_data = 12'b101110000111;

		if(({row_reg, col_reg}>=14'b01110001001000) && ({row_reg, col_reg}<14'b01110010111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010111001) && ({row_reg, col_reg}<14'b01110011000001)) color_data = 12'b011001100101;
		if(({row_reg, col_reg}>=14'b01110011000001) && ({row_reg, col_reg}<14'b01110011000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110011000101) && ({row_reg, col_reg}<14'b01110011001001)) color_data = 12'b101110000111;

		if(({row_reg, col_reg}>=14'b01110011001001) && ({row_reg, col_reg}<14'b01110100111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110100111000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110100111001)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b01110100111010) && ({row_reg, col_reg}<14'b01110101000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01110101000001) && ({row_reg, col_reg}<14'b01110101000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110101000111) && ({row_reg, col_reg}<14'b01110101001011)) color_data = 12'b101110000111;

		if(({row_reg, col_reg}>=14'b01110101001011) && ({row_reg, col_reg}<14'b01110110111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110110111000)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b01110110111001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01110110111010) && ({row_reg, col_reg}<14'b01110111000010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b01110111000010) && ({row_reg, col_reg}<14'b01110111001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110111001001) && ({row_reg, col_reg}<14'b01110111001100)) color_data = 12'b101110000111;

		if(({row_reg, col_reg}>=14'b01110111001100) && ({row_reg, col_reg}<14'b01111000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000110111) && ({row_reg, col_reg}<14'b01111000111010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b01111000111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01111000111011) && ({row_reg, col_reg}<14'b01111001000001)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01111001000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111001000010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01111001000011)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01111001000100) && ({row_reg, col_reg}<14'b01111001001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111001001001) && ({row_reg, col_reg}<14'b01111001001110)) color_data = 12'b101110000111;

		if(({row_reg, col_reg}>=14'b01111001001110) && ({row_reg, col_reg}<14'b01111010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010110110) && ({row_reg, col_reg}<14'b01111010111010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b01111010111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01111010111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01111010111100) && ({row_reg, col_reg}<14'b01111011000000)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01111011000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01111011000001) && ({row_reg, col_reg}<14'b01111011000011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111011000011) && ({row_reg, col_reg}<14'b01111011000101)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01111011000101) && ({row_reg, col_reg}<14'b01111011001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111011001010)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01111011001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111011001100)) color_data = 12'b101110000111;

		if(({row_reg, col_reg}>=14'b01111011001101) && ({row_reg, col_reg}<14'b01111100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100110110) && ({row_reg, col_reg}<14'b01111100111011)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01111100111011) && ({row_reg, col_reg}<14'b01111100111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111100111111)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01111101000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111101000001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111101000010) && ({row_reg, col_reg}<14'b01111101000101)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01111101000101) && ({row_reg, col_reg}<14'b01111110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110110101) && ({row_reg, col_reg}<14'b01111110111011)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01111110111011) && ({row_reg, col_reg}<14'b01111110111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111110111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01111110111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111111000000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111111000001) && ({row_reg, col_reg}<14'b01111111000110)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01111111000110) && ({row_reg, col_reg}<14'b10000000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000000110101) && ({row_reg, col_reg}<14'b10000000111011)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10000000111011) && ({row_reg, col_reg}<14'b10000000111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000000111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000000111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000001000000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000001000001) && ({row_reg, col_reg}<14'b10000001000111)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000001000111) && ({row_reg, col_reg}<14'b10000010110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000010110100) && ({row_reg, col_reg}<14'b10000010111010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b10000010111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10000010111011) && ({row_reg, col_reg}<14'b10000010111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000010111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000010111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000011000000) && ({row_reg, col_reg}<14'b10000011000010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000011000010) && ({row_reg, col_reg}<14'b10000011001000)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000011001000) && ({row_reg, col_reg}<14'b10000100110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000100110100) && ({row_reg, col_reg}<14'b10000100111010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b10000100111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10000100111011) && ({row_reg, col_reg}<14'b10000100111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000100111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000100111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000101000000) && ({row_reg, col_reg}<14'b10000101000011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000101000011) && ({row_reg, col_reg}<14'b10000101001000)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000101001000) && ({row_reg, col_reg}<14'b10000110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000110110011) && ({row_reg, col_reg}<14'b10000110111010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b10000110111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10000110111011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10000110111100) && ({row_reg, col_reg}<14'b10000110111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000110111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000111000000) && ({row_reg, col_reg}<14'b10000111000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000111000100) && ({row_reg, col_reg}<14'b10000111001001)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000111001001) && ({row_reg, col_reg}<14'b10001000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001000110011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001000110100) && ({row_reg, col_reg}<14'b10001000111001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b10001000111001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001000111010) && ({row_reg, col_reg}<14'b10001000111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001000111100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001000111101) && ({row_reg, col_reg}<14'b10001000111111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001000111111) && ({row_reg, col_reg}<14'b10001001000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001001000001) && ({row_reg, col_reg}<14'b10001001000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001001000101) && ({row_reg, col_reg}<14'b10001001001001)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001001001001) && ({row_reg, col_reg}<14'b10001010110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001010110011) && ({row_reg, col_reg}<14'b10001010110101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001010110101) && ({row_reg, col_reg}<14'b10001010111000)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001010111000) && ({row_reg, col_reg}<14'b10001010111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001010111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001010111100) && ({row_reg, col_reg}<14'b10001010111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001010111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001010111111) && ({row_reg, col_reg}<14'b10001011000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001011000010) && ({row_reg, col_reg}<14'b10001011001010)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10001011001010) && ({row_reg, col_reg}<14'b10001100110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001100110011) && ({row_reg, col_reg}<14'b10001100111001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001100111001) && ({row_reg, col_reg}<14'b10001100111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001100111100) && ({row_reg, col_reg}<14'b10001100111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001100111110) && ({row_reg, col_reg}<14'b10001101000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001101000011) && ({row_reg, col_reg}<14'b10001101001010)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10001101001010) && ({row_reg, col_reg}<14'b10001110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001110110100) && ({row_reg, col_reg}<14'b10001110110111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001110110111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001110111000)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10001110111001) && ({row_reg, col_reg}<14'b10001111000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001111000100) && ({row_reg, col_reg}<14'b10001111000110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001111000110) && ({row_reg, col_reg}<14'b10001111001010)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10001111001010) && ({row_reg, col_reg}<14'b10010000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010000110101) && ({row_reg, col_reg}<14'b10010000110111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010000110111) && ({row_reg, col_reg}<14'b10010000111001)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10010000111001) && ({row_reg, col_reg}<14'b10010001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010001000110) && ({row_reg, col_reg}<14'b10010001001010)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10010001001010) && ({row_reg, col_reg}<14'b10010010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010010110101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010010110110)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10010010110111)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10010010111000)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10010010111001) && ({row_reg, col_reg}<14'b10010011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010011000110) && ({row_reg, col_reg}<14'b10010011001001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010011001001)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10010011001010)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10010011001011) && ({row_reg, col_reg}<14'b10010100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010100110110)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10010100110111) && ({row_reg, col_reg}<14'b10010100111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010100111001) && ({row_reg, col_reg}<14'b10010101000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010101000111) && ({row_reg, col_reg}<14'b10010101001001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010101001001) && ({row_reg, col_reg}<14'b10010101001011)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10010101001011) && ({row_reg, col_reg}<14'b10010110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010110110110) && ({row_reg, col_reg}<14'b10010110111000)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10010110111000) && ({row_reg, col_reg}<14'b10010111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010111001000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010111001001) && ({row_reg, col_reg}<14'b10010111001011)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10010111001011) && ({row_reg, col_reg}<14'b10011000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011000110110) && ({row_reg, col_reg}<14'b10011000111000)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10011000111000) && ({row_reg, col_reg}<14'b10011001001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011001001001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011001001010) && ({row_reg, col_reg}<14'b10011001001100)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011001001100) && ({row_reg, col_reg}<14'b10011010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011010110110) && ({row_reg, col_reg}<14'b10011010111000)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10011010111000) && ({row_reg, col_reg}<14'b10011011001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011011001010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011011001011) && ({row_reg, col_reg}<14'b10011011001101)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011011001101) && ({row_reg, col_reg}<14'b10011100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011100110110) && ({row_reg, col_reg}<14'b10011100111000)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10011100111000) && ({row_reg, col_reg}<14'b10011101001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011101001010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011101001011) && ({row_reg, col_reg}<14'b10011101001101)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011101001101) && ({row_reg, col_reg}<14'b10011110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011110110110)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011110110111)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011110111000) && ({row_reg, col_reg}<14'b10011111001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011111001011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011111001100) && ({row_reg, col_reg}<14'b10011111001110)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011111001110) && ({row_reg, col_reg}<14'b10100000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100000110110) && ({row_reg, col_reg}<14'b10100000111000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100000111000) && ({row_reg, col_reg}<14'b10100001001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10100001001100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100001001101) && ({row_reg, col_reg}<14'b10100001001111)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10100001001111) && ({row_reg, col_reg}<14'b10100010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100010110101) && ({row_reg, col_reg}<14'b10100010110111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10100010110111) && ({row_reg, col_reg}<14'b10100010111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100010111001) && ({row_reg, col_reg}<14'b10100011001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100011001100) && ({row_reg, col_reg}<14'b10100011010000)) color_data = 12'b010001000010;













































		if(({row_reg, col_reg}>=14'b10100011010000) && ({row_reg, col_reg}<=14'b11111011111101)) color_data = 12'b000000000000;
	end
endmodule