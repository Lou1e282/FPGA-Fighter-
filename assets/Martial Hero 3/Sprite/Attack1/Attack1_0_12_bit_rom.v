module Attack1_0_rom
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




















		if(({row_reg, col_reg}>=14'b00000000000000) && ({row_reg, col_reg}<14'b00101000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101000111010) && ({row_reg, col_reg}<14'b00101000111101)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00101000111101) && ({row_reg, col_reg}<14'b00101010111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101010111001) && ({row_reg, col_reg}<14'b00101010111110)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00101010111110) && ({row_reg, col_reg}<14'b00101100111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101100111001) && ({row_reg, col_reg}<14'b00101100111110)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00101100111110) && ({row_reg, col_reg}<14'b00101110111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00101110111001) && ({row_reg, col_reg}<14'b00101110111110)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00101110111110) && ({row_reg, col_reg}<14'b00110000111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110000111000) && ({row_reg, col_reg}<14'b00110000111101)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00110000111101) && ({row_reg, col_reg}<14'b00110010111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110010111000) && ({row_reg, col_reg}<14'b00110010111100)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00110010111100) && ({row_reg, col_reg}<14'b00110100110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110100110111) && ({row_reg, col_reg}<14'b00110100111100)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00110100111100) && ({row_reg, col_reg}<14'b00110110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110110110111) && ({row_reg, col_reg}<14'b00110110111011)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00110110111011) && ({row_reg, col_reg}<14'b00111000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111000110110) && ({row_reg, col_reg}<14'b00111000111011)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00111000111011) && ({row_reg, col_reg}<14'b00111010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111010110110) && ({row_reg, col_reg}<14'b00111010111011)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00111010111011) && ({row_reg, col_reg}<14'b00111100110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111100110101) && ({row_reg, col_reg}<14'b00111100111010)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00111100111010) && ({row_reg, col_reg}<14'b00111110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111110110101) && ({row_reg, col_reg}<14'b00111110111001)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00111110111001) && ({row_reg, col_reg}<14'b01000000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000000110101) && ({row_reg, col_reg}<14'b01000000111001)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01000000111001) && ({row_reg, col_reg}<14'b01000010110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000010110100) && ({row_reg, col_reg}<14'b01000010111000)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01000010111000) && ({row_reg, col_reg}<14'b01000100110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000100110100) && ({row_reg, col_reg}<14'b01000100110111)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01000100110111) && ({row_reg, col_reg}<14'b01000110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000110110011) && ({row_reg, col_reg}<14'b01000110110111)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01000110110111) && ({row_reg, col_reg}<14'b01001000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001000110011) && ({row_reg, col_reg}<14'b01001000110111)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01001000110111) && ({row_reg, col_reg}<14'b01001010110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001010110010) && ({row_reg, col_reg}<14'b01001010110110)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01001010110110) && ({row_reg, col_reg}<14'b01001100110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001100110010) && ({row_reg, col_reg}<14'b01001100110110)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01001100110110) && ({row_reg, col_reg}<14'b01001110110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001110110001) && ({row_reg, col_reg}<14'b01001110110101)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01001110110101) && ({row_reg, col_reg}<14'b01010000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010000110001) && ({row_reg, col_reg}<14'b01010000110101)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01010000110101) && ({row_reg, col_reg}<14'b01010010110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010010110000) && ({row_reg, col_reg}<14'b01010010110100)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b01010010110100) && ({row_reg, col_reg}<14'b01010010111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010010111100) && ({row_reg, col_reg}<14'b01010011000000)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01010011000000) && ({row_reg, col_reg}<14'b01010100110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010100110000) && ({row_reg, col_reg}<14'b01010100110100)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b01010100110100) && ({row_reg, col_reg}<14'b01010100111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010100111011) && ({row_reg, col_reg}<14'b01010101000010)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01010101000010) && ({row_reg, col_reg}<14'b01010110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010110110000) && ({row_reg, col_reg}<14'b01010110110011)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b01010110110011) && ({row_reg, col_reg}<14'b01010110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010110111011) && ({row_reg, col_reg}<14'b01010110111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01010110111111) && ({row_reg, col_reg}<14'b01010111000010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01010111000010)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01010111000011) && ({row_reg, col_reg}<14'b01011000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011000101111) && ({row_reg, col_reg}<14'b01011000110001)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01011000110001) && ({row_reg, col_reg}<14'b01011000110011)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b01011000110011) && ({row_reg, col_reg}<14'b01011000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011000111010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011000111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011000111100) && ({row_reg, col_reg}<14'b01011000111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011000111110) && ({row_reg, col_reg}<14'b01011001000000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011001000000) && ({row_reg, col_reg}<14'b01011001000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011001000010)) color_data = 12'b000000000001;

		if(({row_reg, col_reg}>=14'b01011001000011) && ({row_reg, col_reg}<14'b01011010101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011010101110) && ({row_reg, col_reg}<14'b01011010110000)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01011010110000) && ({row_reg, col_reg}<14'b01011010110011)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01011010110011) && ({row_reg, col_reg}<14'b01011010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011010111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011010111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011010111100) && ({row_reg, col_reg}<14'b01011010111110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011010111110) && ({row_reg, col_reg}<14'b01011011000001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011011000001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01011011000010)) color_data = 12'b000000000001;

		if(({row_reg, col_reg}>=14'b01011011000011) && ({row_reg, col_reg}<14'b01011100101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011100101101) && ({row_reg, col_reg}<14'b01011100110000)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01011100110000)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01011100110001) && ({row_reg, col_reg}<14'b01011100111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011100111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011100111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011100111100) && ({row_reg, col_reg}<14'b01011100111110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011100111110) && ({row_reg, col_reg}<14'b01011101000000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011101000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011101000001)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01011101000010) && ({row_reg, col_reg}<14'b01011110101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011110101101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01011110101110) && ({row_reg, col_reg}<14'b01011110110000)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01011110110000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01011110110001) && ({row_reg, col_reg}<14'b01011110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011110111010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011110111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011110111100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011110111101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01011110111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b01011110111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011111000000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01011111000001)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01011111000010) && ({row_reg, col_reg}<14'b01100000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100000101101) && ({row_reg, col_reg}<14'b01100000110000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100000110000)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01100000110001) && ({row_reg, col_reg}<14'b01100000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100000111010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100000111011) && ({row_reg, col_reg}<14'b01100000111101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100000111101) && ({row_reg, col_reg}<14'b01100001000001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100001000001)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01100001000010) && ({row_reg, col_reg}<14'b01100010101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100010101110)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}==14'b01100010101111)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01100010110000) && ({row_reg, col_reg}<14'b01100010111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100010111011)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01100010111100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100010111101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100010111110) && ({row_reg, col_reg}<14'b01100011000001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01100011000001)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01100011000010) && ({row_reg, col_reg}<14'b01100100101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100100101101) && ({row_reg, col_reg}<14'b01100100101111)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}==14'b01100100101111)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01100100110000) && ({row_reg, col_reg}<14'b01100100111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100100111011)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01100100111100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100100111101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100100111110) && ({row_reg, col_reg}<14'b01100101000000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01100101000000) && ({row_reg, col_reg}<14'b01100101000010)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01100101000010) && ({row_reg, col_reg}<14'b01100110101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100110101101)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}==14'b01100110101110)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01100110101111) && ({row_reg, col_reg}<14'b01100110110001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100110110001) && ({row_reg, col_reg}<14'b01100110111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100110111001)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100110111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01100110111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01100110111100) && ({row_reg, col_reg}<14'b01100111000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100111000000)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01100111000001)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b01100111000010) && ({row_reg, col_reg}<14'b01101000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101000101101)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01101000101110) && ({row_reg, col_reg}<14'b01101000110010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101000110010) && ({row_reg, col_reg}<14'b01101000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101000110111) && ({row_reg, col_reg}<14'b01101000111001)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101000111001)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01101000111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01101000111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01101000111100) && ({row_reg, col_reg}<14'b01101000111110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101000111110) && ({row_reg, col_reg}<14'b01101001000000)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01101001000000) && ({row_reg, col_reg}<14'b01101001000010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101001000010) && ({row_reg, col_reg}<14'b01101001000101)) color_data = 12'b110110101000;

		if(({row_reg, col_reg}>=14'b01101001000101) && ({row_reg, col_reg}<14'b01101010101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101010101111) && ({row_reg, col_reg}<14'b01101010110010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101010110010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101010110011) && ({row_reg, col_reg}<14'b01101010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101010110101) && ({row_reg, col_reg}<14'b01101010111000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101010111000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01101010111001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01101010111010) && ({row_reg, col_reg}<14'b01101010111100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01101010111100) && ({row_reg, col_reg}<14'b01101010111110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01101010111110) && ({row_reg, col_reg}<14'b01101011000001)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01101011000001) && ({row_reg, col_reg}<14'b01101011000110)) color_data = 12'b110110101000;

		if(({row_reg, col_reg}>=14'b01101011000110) && ({row_reg, col_reg}<14'b01101100101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101100101111) && ({row_reg, col_reg}<14'b01101100110010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101100110010) && ({row_reg, col_reg}<14'b01101100110101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101100110101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101100110110) && ({row_reg, col_reg}<14'b01101100111000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101100111000)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01101100111001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01101100111010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01101100111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01101100111100) && ({row_reg, col_reg}<14'b01101100111110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01101100111110) && ({row_reg, col_reg}<14'b01101101000001)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01101101000001) && ({row_reg, col_reg}<14'b01101101000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01101101000011) && ({row_reg, col_reg}<14'b01101101000110)) color_data = 12'b110110101000;
		if(({row_reg, col_reg}==14'b01101101000110)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01101101000111) && ({row_reg, col_reg}<14'b01101110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101110101111) && ({row_reg, col_reg}<14'b01101110110010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101110110010) && ({row_reg, col_reg}<14'b01101110110110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101110110110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101110110111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101110111000)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01101110111001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01101110111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01101110111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01101110111100) && ({row_reg, col_reg}<14'b01101110111110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01101110111110) && ({row_reg, col_reg}<14'b01101111000001)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01101111000001) && ({row_reg, col_reg}<14'b01101111000011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01101111000011)) color_data = 12'b110110101000;
		if(({row_reg, col_reg}>=14'b01101111000100) && ({row_reg, col_reg}<14'b01101111000110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01101111000110)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01101111000111) && ({row_reg, col_reg}<14'b01110000110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110000110000) && ({row_reg, col_reg}<14'b01110000110011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110000110011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110000110100) && ({row_reg, col_reg}<14'b01110000110111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110000110111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110000111000)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110000111001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110000111010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110000111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01110000111100) && ({row_reg, col_reg}<14'b01110000111110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01110000111110) && ({row_reg, col_reg}<14'b01110001000010)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01110001000010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110001000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110001000100) && ({row_reg, col_reg}<14'b01110001000110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01110001000110) && ({row_reg, col_reg}<14'b01110001001000)) color_data = 12'b110110101000;

		if(({row_reg, col_reg}>=14'b01110001001000) && ({row_reg, col_reg}<14'b01110010111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010111000) && ({row_reg, col_reg}<14'b01110010111010)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01110010111010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110010111011)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}>=14'b01110010111100) && ({row_reg, col_reg}<14'b01110010111110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01110010111110) && ({row_reg, col_reg}<14'b01110011000011)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==14'b01110011000011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110011000100)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01110011000101) && ({row_reg, col_reg}<14'b01110011001000)) color_data = 12'b110110101000;
		if(({row_reg, col_reg}>=14'b01110011001000) && ({row_reg, col_reg}<14'b01110011001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110011001110)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01110011001111) && ({row_reg, col_reg}<14'b01110100111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110100111001) && ({row_reg, col_reg}<14'b01110100111011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01110100111011)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01110100111100)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01110100111101) && ({row_reg, col_reg}<14'b01110101000000)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01110101000000) && ({row_reg, col_reg}<14'b01110101000010)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01110101000010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110101000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110101000100) && ({row_reg, col_reg}<14'b01110101000111)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110101000111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110101001000) && ({row_reg, col_reg}<14'b01110101001011)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110101001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110101001100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110101001101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110101001110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110101001111)) color_data = 12'b110010010111;

		if(({row_reg, col_reg}>=14'b01110101010000) && ({row_reg, col_reg}<14'b01110110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110110111010)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01110110111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01110110111100) && ({row_reg, col_reg}<14'b01110110111110)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}>=14'b01110110111110) && ({row_reg, col_reg}<14'b01110111000001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110111000001)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01110111000010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110111000011) && ({row_reg, col_reg}<14'b01110111000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110111000101)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110111000110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110111000111) && ({row_reg, col_reg}<14'b01110111001100)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110111001100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110111001101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110111001110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110111001111) && ({row_reg, col_reg}<14'b01110111010001)) color_data = 12'b110010010111;

		if(({row_reg, col_reg}>=14'b01110111010001) && ({row_reg, col_reg}<14'b01111000111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000111011) && ({row_reg, col_reg}<14'b01111001000011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111001000011) && ({row_reg, col_reg}<14'b01111001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111001000110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111001000111) && ({row_reg, col_reg}<14'b01111001001100)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01111001001100) && ({row_reg, col_reg}<14'b01111001001111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111001001111) && ({row_reg, col_reg}<14'b01111001010001)) color_data = 12'b110010010111;

		if(({row_reg, col_reg}>=14'b01111001010001) && ({row_reg, col_reg}<14'b01111010111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010111011) && ({row_reg, col_reg}<14'b01111011000011)) color_data = 12'b100010000110;
		if(({row_reg, col_reg}>=14'b01111011000011) && ({row_reg, col_reg}<14'b01111011001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111011001000) && ({row_reg, col_reg}<14'b01111011001100)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01111011001100) && ({row_reg, col_reg}<14'b01111011010000)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01111011010000) && ({row_reg, col_reg}<14'b01111100111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100111011) && ({row_reg, col_reg}<14'b01111101000011)) color_data = 12'b011001100101;
		if(({row_reg, col_reg}>=14'b01111101000011) && ({row_reg, col_reg}<14'b01111101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111101001100) && ({row_reg, col_reg}<14'b01111101001110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01111101001110)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01111101001111) && ({row_reg, col_reg}<14'b01111110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111110111011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b01111110111100) && ({row_reg, col_reg}<14'b01111111000011)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b01111111000011) && ({row_reg, col_reg}<14'b10000000111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000000111001) && ({row_reg, col_reg}<14'b10000000111011)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=14'b10000000111011) && ({row_reg, col_reg}<14'b10000001000100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000001000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000001000101)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000001000110) && ({row_reg, col_reg}<14'b10000010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000010110110) && ({row_reg, col_reg}<14'b10000010111011)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=14'b10000010111011) && ({row_reg, col_reg}<14'b10000010111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000010111101) && ({row_reg, col_reg}<14'b10000011000011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000011000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000011000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000011000101) && ({row_reg, col_reg}<14'b10000011000111)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000011000111) && ({row_reg, col_reg}<14'b10000100110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000100110100) && ({row_reg, col_reg}<14'b10000100111011)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==14'b10000100111011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10000100111100) && ({row_reg, col_reg}<14'b10000100111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000100111110) && ({row_reg, col_reg}<14'b10000101000010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000101000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000101000011) && ({row_reg, col_reg}<14'b10000101000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000101000101) && ({row_reg, col_reg}<14'b10000101001001)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000101001001) && ({row_reg, col_reg}<14'b10000110110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000110110010) && ({row_reg, col_reg}<14'b10000110111011)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==14'b10000110111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000110111100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10000110111101) && ({row_reg, col_reg}<14'b10000111000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000111000001)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000111000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000111000011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000111000100) && ({row_reg, col_reg}<14'b10000111001001)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000111001001) && ({row_reg, col_reg}<14'b10001000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001000110001) && ({row_reg, col_reg}<14'b10001000111001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==14'b10001000111001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001000111010)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==14'b10001000111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001000111100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001000111101) && ({row_reg, col_reg}<14'b10001001000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001001000000)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001001000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001001000010) && ({row_reg, col_reg}<14'b10001001000100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001001000100) && ({row_reg, col_reg}<14'b10001001001011)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001001001011) && ({row_reg, col_reg}<14'b10001010110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001010110000) && ({row_reg, col_reg}<14'b10001010111000)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=14'b10001010111000) && ({row_reg, col_reg}<14'b10001010111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001010111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001010111100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001010111101) && ({row_reg, col_reg}<14'b10001011000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001011000000)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001011000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001011000010) && ({row_reg, col_reg}<14'b10001011000101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001011000101) && ({row_reg, col_reg}<14'b10001011001100)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001011001100) && ({row_reg, col_reg}<14'b10001100110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001100110000) && ({row_reg, col_reg}<14'b10001100110100)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==14'b10001100110100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001100110101) && ({row_reg, col_reg}<14'b10001100110111)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=14'b10001100110111) && ({row_reg, col_reg}<14'b10001100111011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001100111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001100111100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001100111101) && ({row_reg, col_reg}<14'b10001101000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001101000000)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001101000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001101000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001101000011) && ({row_reg, col_reg}<14'b10001101001010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001101001010) && ({row_reg, col_reg}<14'b10001101001101)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10001101001101) && ({row_reg, col_reg}<14'b10001110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001110110000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001110110001) && ({row_reg, col_reg}<14'b10001110110011)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==14'b10001110110011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001110110100) && ({row_reg, col_reg}<14'b10001110110110)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=14'b10001110110110) && ({row_reg, col_reg}<14'b10001110111001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10001110111001) && ({row_reg, col_reg}<14'b10001110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001110111011) && ({row_reg, col_reg}<14'b10001111000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001111000000)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001111000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001111000010) && ({row_reg, col_reg}<14'b10001111000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001111000100) && ({row_reg, col_reg}<14'b10001111001001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001111001001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001111001010) && ({row_reg, col_reg}<14'b10001111001101)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10001111001101) && ({row_reg, col_reg}<14'b10010000110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010000110000) && ({row_reg, col_reg}<14'b10010000110011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010000110011) && ({row_reg, col_reg}<14'b10010000110110)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=14'b10010000110110) && ({row_reg, col_reg}<14'b10010000111000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010000111000) && ({row_reg, col_reg}<14'b10010000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010000111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010000111101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010000111110) && ({row_reg, col_reg}<14'b10010001000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010001000001) && ({row_reg, col_reg}<14'b10010001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010001000110) && ({row_reg, col_reg}<14'b10010001001101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010001001101)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10010001001110) && ({row_reg, col_reg}<14'b10010010110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010010110001) && ({row_reg, col_reg}<14'b10010010110111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b10010010110111) && ({row_reg, col_reg}<14'b10010010111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010010111100) && ({row_reg, col_reg}<14'b10010010111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010010111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010010111111) && ({row_reg, col_reg}<14'b10010011000001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010011000001) && ({row_reg, col_reg}<14'b10010011000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010011000111) && ({row_reg, col_reg}<14'b10010011001011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010011001011) && ({row_reg, col_reg}<14'b10010011001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010011001101)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10010011001110) && ({row_reg, col_reg}<14'b10010100110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010100110011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010100110100)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10010100110101)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10010100110110) && ({row_reg, col_reg}<14'b10010100111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010100111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010100111110) && ({row_reg, col_reg}<14'b10010101000000)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10010101000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010101000001) && ({row_reg, col_reg}<14'b10010101001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010101001001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010101001010) && ({row_reg, col_reg}<14'b10010101001110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010101001110)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10010101001111) && ({row_reg, col_reg}<14'b10010110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010110110100)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10010110110101) && ({row_reg, col_reg}<14'b10010110110111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010110110111) && ({row_reg, col_reg}<14'b10010110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010110111110) && ({row_reg, col_reg}<14'b10010111000000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010111000000) && ({row_reg, col_reg}<14'b10010111001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010111001010) && ({row_reg, col_reg}<14'b10010111001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010111001101) && ({row_reg, col_reg}<14'b10010111010000)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10010111010000) && ({row_reg, col_reg}<14'b10011000110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011000110100) && ({row_reg, col_reg}<14'b10011000110111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011000110111) && ({row_reg, col_reg}<14'b10011001001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011001001100) && ({row_reg, col_reg}<14'b10011001001110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011001001110) && ({row_reg, col_reg}<14'b10011001010001)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011001010001) && ({row_reg, col_reg}<14'b10011010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011010110101)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011010110110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011010110111) && ({row_reg, col_reg}<14'b10011011001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011011001110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011011001111) && ({row_reg, col_reg}<14'b10011011010010)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011011010010) && ({row_reg, col_reg}<14'b10011100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011100110110) && ({row_reg, col_reg}<14'b10011100111000)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10011100111000) && ({row_reg, col_reg}<14'b10011101001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011101001111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011101010000) && ({row_reg, col_reg}<14'b10011101010011)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011101010011) && ({row_reg, col_reg}<14'b10011110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011110110110)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011110110111)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011110111000) && ({row_reg, col_reg}<14'b10011111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011111010000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011111010001) && ({row_reg, col_reg}<14'b10011111010011)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10011111010011)) color_data = 12'b010101010011;

		if(({row_reg, col_reg}>=14'b10011111010100) && ({row_reg, col_reg}<14'b10100000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10100000110110)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10100000110111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10100000111000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100000111001) && ({row_reg, col_reg}<14'b10100001010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10100001010001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100001010010) && ({row_reg, col_reg}<14'b10100001010101)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10100001010101) && ({row_reg, col_reg}<14'b10100010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100010110101) && ({row_reg, col_reg}<14'b10100010110111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10100010110111) && ({row_reg, col_reg}<14'b10100010111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100010111001) && ({row_reg, col_reg}<14'b10100011010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100011010001) && ({row_reg, col_reg}<14'b10100011010101)) color_data = 12'b010001000010;













































		if(({row_reg, col_reg}>=14'b10100011010101) && ({row_reg, col_reg}<=14'b11111011111101)) color_data = 12'b000000000000;
	end
endmodule