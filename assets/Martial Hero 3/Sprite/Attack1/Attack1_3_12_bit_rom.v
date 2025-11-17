module Attack1_3_rom
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



























		if(({row_reg, col_reg}>=14'b00000000000000) && ({row_reg, col_reg}<14'b00110110000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110110000010) && ({row_reg, col_reg}<14'b00110110001000)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00110110001000) && ({row_reg, col_reg}<14'b00111000000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111000000010) && ({row_reg, col_reg}<14'b00111000010000)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00111000010000) && ({row_reg, col_reg}<14'b00111010000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111010000001) && ({row_reg, col_reg}<14'b00111010011000)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b00111010011000) && ({row_reg, col_reg}<14'b00111010011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b00111010011101)) color_data = 12'b001000010010;

		if(({row_reg, col_reg}>=14'b00111010011110) && ({row_reg, col_reg}<14'b00111100000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111100000001) && ({row_reg, col_reg}<14'b00111100011101)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b00111100011101) && ({row_reg, col_reg}<14'b00111100100000)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b00111100100000) && ({row_reg, col_reg}<14'b00111100100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111100100010) && ({row_reg, col_reg}<14'b00111100100100)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b00111100100100) && ({row_reg, col_reg}<14'b00111110001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111110001011) && ({row_reg, col_reg}<14'b00111110011101)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b00111110011101) && ({row_reg, col_reg}<14'b00111110100001)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b00111110100001) && ({row_reg, col_reg}<14'b00111110100100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b00111110100100)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==14'b00111110100101)) color_data = 12'b001000010010;

		if(({row_reg, col_reg}>=14'b00111110100110) && ({row_reg, col_reg}<14'b01000000010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000000010011) && ({row_reg, col_reg}<14'b01000000011101)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b01000000011101) && ({row_reg, col_reg}<14'b01000000011111)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01000000011111) && ({row_reg, col_reg}<14'b01000000100001)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01000000100001) && ({row_reg, col_reg}<14'b01000000100101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01000000100101)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01000000100110) && ({row_reg, col_reg}<14'b01000010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01000010011110)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01000010011111) && ({row_reg, col_reg}<14'b01000010100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000010100010) && ({row_reg, col_reg}<14'b01000010100100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01000010100100) && ({row_reg, col_reg}<14'b01000010100111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01000010100111) && ({row_reg, col_reg}<14'b01000010110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000010110100) && ({row_reg, col_reg}<14'b01000010111000)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01000010111000) && ({row_reg, col_reg}<14'b01000100100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01000100100011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01000100100100) && ({row_reg, col_reg}<14'b01000100101000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01000100101000) && ({row_reg, col_reg}<14'b01000100110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000100110011) && ({row_reg, col_reg}<14'b01000100111010)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01000100111010) && ({row_reg, col_reg}<14'b01000110100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01000110100101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01000110100110) && ({row_reg, col_reg}<14'b01000110101010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01000110101010) && ({row_reg, col_reg}<14'b01000110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000110110011) && ({row_reg, col_reg}<14'b01000110110111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01000110110111) && ({row_reg, col_reg}<14'b01000110111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01000110111010)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01000110111011) && ({row_reg, col_reg}<14'b01001000100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001000100101) && ({row_reg, col_reg}<14'b01001000100111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01001000100111) && ({row_reg, col_reg}<14'b01001000101010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01001000101010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01001000101011) && ({row_reg, col_reg}<14'b01001000110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01001000110010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01001000110011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01001000110100) && ({row_reg, col_reg}<14'b01001000110110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01001000110110) && ({row_reg, col_reg}<14'b01001000111000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01001000111000) && ({row_reg, col_reg}<14'b01001000111010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01001000111010)) color_data = 12'b000000000001;

		if(({row_reg, col_reg}>=14'b01001000111011) && ({row_reg, col_reg}<14'b01001010100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001010100110) && ({row_reg, col_reg}<14'b01001010101010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01001010101010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01001010101011) && ({row_reg, col_reg}<14'b01001010110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01001010110010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01001010110011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01001010110100) && ({row_reg, col_reg}<14'b01001010110110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01001010110110) && ({row_reg, col_reg}<14'b01001010111001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01001010111001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01001010111010)) color_data = 12'b000000000001;

		if(({row_reg, col_reg}>=14'b01001010111011) && ({row_reg, col_reg}<14'b01001100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001100101000) && ({row_reg, col_reg}<14'b01001100101010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01001100101010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01001100101011)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01001100101100) && ({row_reg, col_reg}<14'b01001100110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01001100110010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01001100110011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01001100110100) && ({row_reg, col_reg}<14'b01001100110110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01001100110110) && ({row_reg, col_reg}<14'b01001100111000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01001100111000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01001100111001)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01001100111010) && ({row_reg, col_reg}<14'b01001110101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01001110101001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01001110101010) && ({row_reg, col_reg}<14'b01001110101110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01001110101110) && ({row_reg, col_reg}<14'b01001110110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01001110110010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01001110110011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01001110110100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01001110110101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01001110110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b01001110110111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01001110111000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01001110111001)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01001110111010) && ({row_reg, col_reg}<14'b01010000101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010000101001) && ({row_reg, col_reg}<14'b01010000101011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01010000101011) && ({row_reg, col_reg}<14'b01010000101111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01010000101111) && ({row_reg, col_reg}<14'b01010000110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010000110010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01010000110011)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01010000110100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01010000110101) && ({row_reg, col_reg}<14'b01010000111001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01010000111001)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01010000111010) && ({row_reg, col_reg}<14'b01010010101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010010101010) && ({row_reg, col_reg}<14'b01010010101101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01010010101101) && ({row_reg, col_reg}<14'b01010010101111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01010010101111) && ({row_reg, col_reg}<14'b01010010110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010010110011)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01010010110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01010010110101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01010010110110) && ({row_reg, col_reg}<14'b01010010111001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01010010111001)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01010010111010) && ({row_reg, col_reg}<14'b01010100101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010100101011) && ({row_reg, col_reg}<14'b01010100110000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01010100110000) && ({row_reg, col_reg}<14'b01010100110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010100110010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01010100110011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01010100110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01010100110101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01010100110110) && ({row_reg, col_reg}<14'b01010100111000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01010100111000) && ({row_reg, col_reg}<14'b01010100111010)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01010100111010) && ({row_reg, col_reg}<14'b01010110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010110101100) && ({row_reg, col_reg}<14'b01010110101111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01010110101111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01010110110000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01010110110001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01010110110010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01010110110011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01010110110100) && ({row_reg, col_reg}<14'b01010110111000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01010110111000) && ({row_reg, col_reg}<14'b01010110111010)) color_data = 12'b100101110101;

		if(({row_reg, col_reg}>=14'b01010110111010) && ({row_reg, col_reg}<14'b01011000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011000101101) && ({row_reg, col_reg}<14'b01011000101111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011000101111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011000110000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011000110001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01011000110010) && ({row_reg, col_reg}<14'b01011000110100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011000110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01011000110101) && ({row_reg, col_reg}<14'b01011000110111)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01011000110111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011000111000)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01011000111001)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01011000111010)) color_data = 12'b100101110110;

		if(({row_reg, col_reg}>=14'b01011000111011) && ({row_reg, col_reg}<14'b01011010101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011010101110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011010101111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01011010110000) && ({row_reg, col_reg}<14'b01011010110010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011010110010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011010110011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011010110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01011010110101) && ({row_reg, col_reg}<14'b01011010111000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011010111000) && ({row_reg, col_reg}<14'b01011010111010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01011010111010)) color_data = 12'b100101110110;

		if(({row_reg, col_reg}>=14'b01011010111011) && ({row_reg, col_reg}<14'b01011100101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011100101111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011100110000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011100110001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011100110010) && ({row_reg, col_reg}<14'b01011100110100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011100110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01011100110101) && ({row_reg, col_reg}<14'b01011100111000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011100111000) && ({row_reg, col_reg}<14'b01011100111010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01011100111010) && ({row_reg, col_reg}<14'b01011100111100)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01011100111100)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01011100111101) && ({row_reg, col_reg}<14'b01011110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011110110000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011110110001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011110110010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011110110011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011110110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01011110110101) && ({row_reg, col_reg}<14'b01011110111000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011110111000) && ({row_reg, col_reg}<14'b01011110111010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01011110111010) && ({row_reg, col_reg}<14'b01011110111100)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01011110111100) && ({row_reg, col_reg}<14'b01011110111110)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01011110111110) && ({row_reg, col_reg}<14'b01100000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100000110001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01100000110010)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01100000110011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100000110100) && ({row_reg, col_reg}<14'b01100000110111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100000110111) && ({row_reg, col_reg}<14'b01100000111010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01100000111010) && ({row_reg, col_reg}<14'b01100000111100)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01100000111100) && ({row_reg, col_reg}<14'b01100000111111)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01100000111111) && ({row_reg, col_reg}<14'b01100010110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100010110001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100010110010)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01100010110011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100010110100) && ({row_reg, col_reg}<14'b01100010110111)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01100010110111)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01100010111000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100010111001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01100010111010) && ({row_reg, col_reg}<14'b01100010111100)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01100010111100) && ({row_reg, col_reg}<14'b01100010111111)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01100010111111) && ({row_reg, col_reg}<14'b01100100110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100100110001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100100110010) && ({row_reg, col_reg}<14'b01100100110110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100100110110) && ({row_reg, col_reg}<14'b01100100111001)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01100100111001) && ({row_reg, col_reg}<14'b01100100111101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01100100111101) && ({row_reg, col_reg}<14'b01100100111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100100111111)) color_data = 12'b100001100101;

		if(({row_reg, col_reg}>=14'b01100101000000) && ({row_reg, col_reg}<14'b01100110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100110110100) && ({row_reg, col_reg}<14'b01100110111100)) color_data = 12'b100010000110;
		if(({row_reg, col_reg}==14'b01100110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100110111101) && ({row_reg, col_reg}<14'b01100110111111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100110111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100111000000) && ({row_reg, col_reg}<14'b01100111000010)) color_data = 12'b101110000110;

		if(({row_reg, col_reg}>=14'b01100111000010) && ({row_reg, col_reg}<14'b01101000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101000110101) && ({row_reg, col_reg}<14'b01101000111101)) color_data = 12'b011001100101;
		if(({row_reg, col_reg}==14'b01101000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101000111110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101000111111) && ({row_reg, col_reg}<14'b01101001000011)) color_data = 12'b101110000110;

		if(({row_reg, col_reg}>=14'b01101001000011) && ({row_reg, col_reg}<14'b01101010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101010110110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b01101010110111) && ({row_reg, col_reg}<14'b01101010111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01101010111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101010111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101011000000) && ({row_reg, col_reg}<14'b01101011000100)) color_data = 12'b101110000110;

		if(({row_reg, col_reg}>=14'b01101011000100) && ({row_reg, col_reg}<14'b01101100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101100110110) && ({row_reg, col_reg}<14'b01101100111000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01101100111000) && ({row_reg, col_reg}<14'b01101100111111)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01101100111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101101000000) && ({row_reg, col_reg}<14'b01101101000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101101000011) && ({row_reg, col_reg}<14'b01101101000101)) color_data = 12'b101110000110;

		if(({row_reg, col_reg}>=14'b01101101000101) && ({row_reg, col_reg}<14'b01101110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101110110110) && ({row_reg, col_reg}<14'b01101110111001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01101110111001) && ({row_reg, col_reg}<14'b01101110111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01101110111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01101110111111) && ({row_reg, col_reg}<14'b01101111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101111000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101111000100) && ({row_reg, col_reg}<14'b01101111000110)) color_data = 12'b101110000110;

		if(({row_reg, col_reg}>=14'b01101111000110) && ({row_reg, col_reg}<14'b01110000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110000110110) && ({row_reg, col_reg}<14'b01110000111001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01110000111001) && ({row_reg, col_reg}<14'b01110000111101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01110000111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110000111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110000111111)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01110001000000) && ({row_reg, col_reg}<14'b01110001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110001000100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110001000101) && ({row_reg, col_reg}<14'b01110001001001)) color_data = 12'b101110000110;

		if(({row_reg, col_reg}>=14'b01110001001001) && ({row_reg, col_reg}<14'b01110010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010110110) && ({row_reg, col_reg}<14'b01110010111010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01110010111010) && ({row_reg, col_reg}<14'b01110010111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110010111100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01110010111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110010111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110010111111)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01110011000000) && ({row_reg, col_reg}<14'b01110011000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110011000101) && ({row_reg, col_reg}<14'b01110011000111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110011000111)) color_data = 12'b101110000110;
		if(({row_reg, col_reg}==14'b01110011001000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110011001001)) color_data = 12'b101110000110;

		if(({row_reg, col_reg}>=14'b01110011001010) && ({row_reg, col_reg}<14'b01110100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110100110110) && ({row_reg, col_reg}<14'b01110100111010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b01110100111010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110100111011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01110100111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110100111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01110100111110) && ({row_reg, col_reg}<14'b01110101000001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01110101000001) && ({row_reg, col_reg}<14'b01110101000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110101000101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110101000110) && ({row_reg, col_reg}<14'b01110101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110101001000)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01110101001001) && ({row_reg, col_reg}<14'b01110110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110110110110) && ({row_reg, col_reg}<14'b01110110111010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b01110110111010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110110111011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01110110111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110110111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01110110111110) && ({row_reg, col_reg}<14'b01110111000001)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01110111000001) && ({row_reg, col_reg}<14'b01111000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000110110) && ({row_reg, col_reg}<14'b01111000111010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b01111000111010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111000111011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01111000111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111000111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111000111110) && ({row_reg, col_reg}<14'b01111001000010)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01111001000010) && ({row_reg, col_reg}<14'b01111010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010110110) && ({row_reg, col_reg}<14'b01111010111010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b01111010111010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111010111011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01111010111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111010111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111010111110) && ({row_reg, col_reg}<14'b01111011000010)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01111011000010) && ({row_reg, col_reg}<14'b01111100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100110110) && ({row_reg, col_reg}<14'b01111100111010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01111100111010) && ({row_reg, col_reg}<14'b01111100111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01111100111100) && ({row_reg, col_reg}<14'b01111100111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111100111110) && ({row_reg, col_reg}<14'b01111101000100)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01111101000100) && ({row_reg, col_reg}<14'b01111110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110110110) && ({row_reg, col_reg}<14'b01111110111010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01111110111010) && ({row_reg, col_reg}<14'b01111110111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110111101) && ({row_reg, col_reg}<14'b01111111000000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111111000000) && ({row_reg, col_reg}<14'b01111111000100)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01111111000100) && ({row_reg, col_reg}<14'b10000000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000000110110) && ({row_reg, col_reg}<14'b10000000111010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b10000000111010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000000111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000000111101) && ({row_reg, col_reg}<14'b10000001000001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000001000001) && ({row_reg, col_reg}<14'b10000001000101)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000001000101) && ({row_reg, col_reg}<14'b10000010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000010110110) && ({row_reg, col_reg}<14'b10000010111010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b10000010111010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000010111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000010111100) && ({row_reg, col_reg}<14'b10000010111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000010111110) && ({row_reg, col_reg}<14'b10000011000001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000011000001) && ({row_reg, col_reg}<14'b10000011000101)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000011000101) && ({row_reg, col_reg}<14'b10000100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000100110110) && ({row_reg, col_reg}<14'b10000100111001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10000100111001) && ({row_reg, col_reg}<14'b10000100111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000100111100) && ({row_reg, col_reg}<14'b10000100111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000100111110) && ({row_reg, col_reg}<14'b10000101000011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000101000011) && ({row_reg, col_reg}<14'b10000101000110)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000101000110) && ({row_reg, col_reg}<14'b10000110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000110110110) && ({row_reg, col_reg}<14'b10000110111000)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10000110111000) && ({row_reg, col_reg}<14'b10000110111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000110111100) && ({row_reg, col_reg}<14'b10000110111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000110111111) && ({row_reg, col_reg}<14'b10000111000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000111000100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b10000111000101)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10000111000110) && ({row_reg, col_reg}<14'b10001000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001000110111)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001000111000) && ({row_reg, col_reg}<14'b10001000111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001000111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001000111100) && ({row_reg, col_reg}<14'b10001000111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001000111111) && ({row_reg, col_reg}<14'b10001001000110)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10001001000110) && ({row_reg, col_reg}<14'b10001010110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001010110111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10001010111000) && ({row_reg, col_reg}<14'b10001010111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001010111100) && ({row_reg, col_reg}<14'b10001011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001011000000) && ({row_reg, col_reg}<14'b10001011000110)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10001011000110) && ({row_reg, col_reg}<14'b10001100110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001100110111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10001100111000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001100111001)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10001100111010) && ({row_reg, col_reg}<14'b10001100111100)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10001100111100) && ({row_reg, col_reg}<14'b10001101000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001101000001) && ({row_reg, col_reg}<14'b10001101000110)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10001101000110) && ({row_reg, col_reg}<14'b10001110111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001110111000) && ({row_reg, col_reg}<14'b10001110111010)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10001110111010) && ({row_reg, col_reg}<14'b10001110111100)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10001110111100) && ({row_reg, col_reg}<14'b10001111000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001111000001) && ({row_reg, col_reg}<14'b10001111000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001111000101)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10001111000110) && ({row_reg, col_reg}<14'b10010000111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010000111000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010000111001) && ({row_reg, col_reg}<14'b10010000111011)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10010000111011) && ({row_reg, col_reg}<14'b10010001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010001000010) && ({row_reg, col_reg}<14'b10010001000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010001000100) && ({row_reg, col_reg}<14'b10010001000110)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10010001000110) && ({row_reg, col_reg}<14'b10010010111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010010111000) && ({row_reg, col_reg}<14'b10010010111011)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10010010111011) && ({row_reg, col_reg}<14'b10010011000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010011000011) && ({row_reg, col_reg}<14'b10010011000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010011000101)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10010011000110) && ({row_reg, col_reg}<14'b10010100111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010100111000) && ({row_reg, col_reg}<14'b10010100111011)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10010100111011) && ({row_reg, col_reg}<14'b10010101000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010101000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010101000101) && ({row_reg, col_reg}<14'b10010101000111)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10010101000111) && ({row_reg, col_reg}<14'b10010110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010110110111) && ({row_reg, col_reg}<14'b10010110111010)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10010110111010) && ({row_reg, col_reg}<14'b10010111000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010111000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010111000101) && ({row_reg, col_reg}<14'b10010111000111)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10010111000111) && ({row_reg, col_reg}<14'b10011000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011000110111) && ({row_reg, col_reg}<14'b10011000111010)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011000111010) && ({row_reg, col_reg}<14'b10011001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011001000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10011001000110)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011001000111) && ({row_reg, col_reg}<14'b10011010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011010110110) && ({row_reg, col_reg}<14'b10011010111001)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011010111001) && ({row_reg, col_reg}<14'b10011011000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011011000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10011011000110)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011011000111) && ({row_reg, col_reg}<14'b10011100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011100110110) && ({row_reg, col_reg}<14'b10011100111001)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011100111001) && ({row_reg, col_reg}<14'b10011101000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011101000101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10011101000110)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011101000111) && ({row_reg, col_reg}<14'b10011110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011110110110)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10011110110111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011110111000) && ({row_reg, col_reg}<14'b10011111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011111000110)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011111000111) && ({row_reg, col_reg}<14'b10100000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100000110110) && ({row_reg, col_reg}<14'b10100000111000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100000111000) && ({row_reg, col_reg}<14'b10100001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100001000110) && ({row_reg, col_reg}<14'b10100001001000)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10100001001000) && ({row_reg, col_reg}<14'b10100010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10100010110110)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10100010110111) && ({row_reg, col_reg}<14'b10100010111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100010111001) && ({row_reg, col_reg}<14'b10100011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100011000110) && ({row_reg, col_reg}<14'b10100011001001)) color_data = 12'b010001000010;













































		if(({row_reg, col_reg}>=14'b10100011001001) && ({row_reg, col_reg}<=14'b11111011111101)) color_data = 12'b000000000000;
	end
endmodule