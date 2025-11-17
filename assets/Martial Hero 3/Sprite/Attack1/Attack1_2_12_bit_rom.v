module Attack1_2_rom
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



























		if(({row_reg, col_reg}>=14'b00000000000000) && ({row_reg, col_reg}<14'b00110110000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00110110000001) && ({row_reg, col_reg}<14'b00110110000111)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00110110000111) && ({row_reg, col_reg}<14'b00111000000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111000000001) && ({row_reg, col_reg}<14'b00111000001111)) color_data = 12'b101110111100;

		if(({row_reg, col_reg}>=14'b00111000001111) && ({row_reg, col_reg}<14'b00111010000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111010000000) && ({row_reg, col_reg}<14'b00111010010111)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b00111010010111) && ({row_reg, col_reg}<14'b00111010011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b00111010011100)) color_data = 12'b001000010010;

		if(({row_reg, col_reg}>=14'b00111010011101) && ({row_reg, col_reg}<14'b00111100000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111100000000) && ({row_reg, col_reg}<14'b00111100011100)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b00111100011100) && ({row_reg, col_reg}<14'b00111100011111)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b00111100011111) && ({row_reg, col_reg}<14'b00111100100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111100100001) && ({row_reg, col_reg}<14'b00111100100011)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b00111100100011) && ({row_reg, col_reg}<14'b00111110001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b00111110001010) && ({row_reg, col_reg}<14'b00111110011100)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b00111110011100) && ({row_reg, col_reg}<14'b00111110100000)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b00111110100000) && ({row_reg, col_reg}<14'b00111110100011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b00111110100011)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==14'b00111110100100)) color_data = 12'b001000010010;

		if(({row_reg, col_reg}>=14'b00111110100101) && ({row_reg, col_reg}<14'b01000000010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000000010010) && ({row_reg, col_reg}<14'b01000000011100)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b01000000011100) && ({row_reg, col_reg}<14'b01000000011110)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01000000011110) && ({row_reg, col_reg}<14'b01000000100000)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=14'b01000000100000) && ({row_reg, col_reg}<14'b01000000100100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01000000100100)) color_data = 12'b000100010001;

		if(({row_reg, col_reg}>=14'b01000000100101) && ({row_reg, col_reg}<14'b01000010011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01000010011101)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}>=14'b01000010011110) && ({row_reg, col_reg}<14'b01000010100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000010100001) && ({row_reg, col_reg}<14'b01000010100011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01000010100011) && ({row_reg, col_reg}<14'b01000010100101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01000010100101) && ({row_reg, col_reg}<14'b01000010110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000010110011) && ({row_reg, col_reg}<14'b01000010110111)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01000010110111) && ({row_reg, col_reg}<14'b01000100100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01000100100010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01000100100011) && ({row_reg, col_reg}<14'b01000100100110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01000100100110) && ({row_reg, col_reg}<14'b01000100110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000100110010) && ({row_reg, col_reg}<14'b01000100111001)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01000100111001) && ({row_reg, col_reg}<14'b01000110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01000110100011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01000110100100) && ({row_reg, col_reg}<14'b01000110100111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01000110100111) && ({row_reg, col_reg}<14'b01000110110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01000110110010) && ({row_reg, col_reg}<14'b01000110110110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01000110110110) && ({row_reg, col_reg}<14'b01000110111001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01000110111001)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01000110111010) && ({row_reg, col_reg}<14'b01001000100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001000100011) && ({row_reg, col_reg}<14'b01001000100101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01001000100101) && ({row_reg, col_reg}<14'b01001000100111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01001000100111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01001000101000) && ({row_reg, col_reg}<14'b01001000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01001000110001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01001000110010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01001000110011) && ({row_reg, col_reg}<14'b01001000110101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01001000110101) && ({row_reg, col_reg}<14'b01001000110111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01001000110111) && ({row_reg, col_reg}<14'b01001000111001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01001000111001)) color_data = 12'b000000000001;

		if(({row_reg, col_reg}>=14'b01001000111010) && ({row_reg, col_reg}<14'b01001010100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001010100100) && ({row_reg, col_reg}<14'b01001010100111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01001010100111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01001010101000) && ({row_reg, col_reg}<14'b01001010110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01001010110001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01001010110010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01001010110011) && ({row_reg, col_reg}<14'b01001010110101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01001010110101) && ({row_reg, col_reg}<14'b01001010111000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01001010111000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01001010111001)) color_data = 12'b000000000001;

		if(({row_reg, col_reg}>=14'b01001010111010) && ({row_reg, col_reg}<14'b01001100100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01001100100101) && ({row_reg, col_reg}<14'b01001100100111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01001100100111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01001100101000) && ({row_reg, col_reg}<14'b01001100101010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01001100101010) && ({row_reg, col_reg}<14'b01001100110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01001100110001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01001100110010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01001100110011) && ({row_reg, col_reg}<14'b01001100110101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01001100110101) && ({row_reg, col_reg}<14'b01001100110111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01001100110111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01001100111000)) color_data = 12'b111010101001;

		if(({row_reg, col_reg}>=14'b01001100111001) && ({row_reg, col_reg}<14'b01001110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01001110100110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01001110100111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01001110101000) && ({row_reg, col_reg}<14'b01001110101100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01001110101100) && ({row_reg, col_reg}<14'b01001110110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01001110110001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01001110110010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01001110110011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01001110110100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01001110110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b01001110110110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01001110110111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01001110111000)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01001110111001) && ({row_reg, col_reg}<14'b01010000100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010000100111) && ({row_reg, col_reg}<14'b01010000101001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01010000101001) && ({row_reg, col_reg}<14'b01010000101101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01010000101101) && ({row_reg, col_reg}<14'b01010000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010000110001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01010000110010)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01010000110011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01010000110100) && ({row_reg, col_reg}<14'b01010000111000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01010000111000)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01010000111001) && ({row_reg, col_reg}<14'b01010010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010010101000) && ({row_reg, col_reg}<14'b01010010101011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01010010101011) && ({row_reg, col_reg}<14'b01010010101101)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01010010101101) && ({row_reg, col_reg}<14'b01010010110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010010110010)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01010010110011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01010010110100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01010010110101) && ({row_reg, col_reg}<14'b01010010111000)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01010010111000)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01010010111001) && ({row_reg, col_reg}<14'b01010100101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010100101001) && ({row_reg, col_reg}<14'b01010100101110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01010100101110) && ({row_reg, col_reg}<14'b01010100110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01010100110001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01010100110010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01010100110011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01010100110100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01010100110101) && ({row_reg, col_reg}<14'b01010100110111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01010100110111) && ({row_reg, col_reg}<14'b01010100111001)) color_data = 12'b110010011000;

		if(({row_reg, col_reg}>=14'b01010100111001) && ({row_reg, col_reg}<14'b01010110101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01010110101010) && ({row_reg, col_reg}<14'b01010110101101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01010110101101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01010110101110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01010110101111) && ({row_reg, col_reg}<14'b01010110110001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01010110110001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01010110110010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01010110110011) && ({row_reg, col_reg}<14'b01010110110111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01010110110111) && ({row_reg, col_reg}<14'b01010110111001)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01010110111001)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==14'b01010110111010)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01010110111011) && ({row_reg, col_reg}<14'b01011000101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01011000101011) && ({row_reg, col_reg}<14'b01011000101101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011000101101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011000101110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011000101111) && ({row_reg, col_reg}<14'b01011000110010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01011000110010) && ({row_reg, col_reg}<14'b01011000110100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011000110100) && ({row_reg, col_reg}<14'b01011000110110)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01011000110110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011000110111)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01011000111000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01011000111001)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01011000111010) && ({row_reg, col_reg}<14'b01011000111100)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01011000111100) && ({row_reg, col_reg}<14'b01011010101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011010101100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011010101101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01011010101110) && ({row_reg, col_reg}<14'b01011010110000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011010110000) && ({row_reg, col_reg}<14'b01011010110010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b01011010110010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01011010110011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01011010110100) && ({row_reg, col_reg}<14'b01011010110111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011010110111) && ({row_reg, col_reg}<14'b01011010111001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01011010111001)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01011010111010) && ({row_reg, col_reg}<14'b01011010111100)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01011010111100) && ({row_reg, col_reg}<14'b01011100101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011100101101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011100101110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01011100101111) && ({row_reg, col_reg}<14'b01011100110010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011100110010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011100110011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011100110100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011100110101) && ({row_reg, col_reg}<14'b01011100110111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011100110111) && ({row_reg, col_reg}<14'b01011100111001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01011100111001) && ({row_reg, col_reg}<14'b01011100111011)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01011100111011) && ({row_reg, col_reg}<14'b01011100111110)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01011100111110) && ({row_reg, col_reg}<14'b01011110101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01011110101110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01011110101111) && ({row_reg, col_reg}<14'b01011110110010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01011110110010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01011110110011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01011110110100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01011110110101) && ({row_reg, col_reg}<14'b01011110110111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01011110110111) && ({row_reg, col_reg}<14'b01011110111001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01011110111001) && ({row_reg, col_reg}<14'b01011110111011)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=14'b01011110111011) && ({row_reg, col_reg}<14'b01011110111111)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01011110111111) && ({row_reg, col_reg}<14'b01100000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100000101111) && ({row_reg, col_reg}<14'b01100000110001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100000110001) && ({row_reg, col_reg}<14'b01100000110011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100000110011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01100000110100)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b01100000110101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01100000110110) && ({row_reg, col_reg}<14'b01100000111001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01100000111001) && ({row_reg, col_reg}<14'b01100000111011)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01100000111011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01100000111100) && ({row_reg, col_reg}<14'b01100001000000)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01100001000000) && ({row_reg, col_reg}<14'b01100010110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100010110000) && ({row_reg, col_reg}<14'b01100010110011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100010110011)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01100010110100)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}==14'b01100010110101)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01100010110110)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==14'b01100010110111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100010111000)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01100010111001) && ({row_reg, col_reg}<14'b01100010111011)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==14'b01100010111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100010111100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01100010111101) && ({row_reg, col_reg}<14'b01100011000000)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01100011000000) && ({row_reg, col_reg}<14'b01100100110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100100110001) && ({row_reg, col_reg}<14'b01100100110100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100100110100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01100100110101) && ({row_reg, col_reg}<14'b01100100111000)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}>=14'b01100100111000) && ({row_reg, col_reg}<14'b01100100111011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01100100111011) && ({row_reg, col_reg}<14'b01100100111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01100100111101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01100100111110) && ({row_reg, col_reg}<14'b01100101000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01100101000000)) color_data = 12'b100001100101;

		if(({row_reg, col_reg}>=14'b01100101000001) && ({row_reg, col_reg}<14'b01100110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100110110011) && ({row_reg, col_reg}<14'b01100110111011)) color_data = 12'b100010000110;
		if(({row_reg, col_reg}>=14'b01100110111011) && ({row_reg, col_reg}<14'b01100110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01100110111110) && ({row_reg, col_reg}<14'b01100111000000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01100111000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01100111000001) && ({row_reg, col_reg}<14'b01100111000011)) color_data = 12'b101110000110;

		if(({row_reg, col_reg}>=14'b01100111000011) && ({row_reg, col_reg}<14'b01101000110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101000110100) && ({row_reg, col_reg}<14'b01101000111100)) color_data = 12'b011001100101;
		if(({row_reg, col_reg}>=14'b01101000111100) && ({row_reg, col_reg}<14'b01101000111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101000111111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101001000000) && ({row_reg, col_reg}<14'b01101001000100)) color_data = 12'b101110000110;

		if(({row_reg, col_reg}>=14'b01101001000100) && ({row_reg, col_reg}<14'b01101010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101010110101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b01101010110110) && ({row_reg, col_reg}<14'b01101010111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01101010111101) && ({row_reg, col_reg}<14'b01101011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101011000000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101011000001) && ({row_reg, col_reg}<14'b01101011000101)) color_data = 12'b101110000110;

		if(({row_reg, col_reg}>=14'b01101011000101) && ({row_reg, col_reg}<14'b01101100110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101100110101) && ({row_reg, col_reg}<14'b01101100110111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01101100110111) && ({row_reg, col_reg}<14'b01101100111110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b01101100111110) && ({row_reg, col_reg}<14'b01101101000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101101000001) && ({row_reg, col_reg}<14'b01101101000100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101101000100) && ({row_reg, col_reg}<14'b01101101000110)) color_data = 12'b101110000110;

		if(({row_reg, col_reg}>=14'b01101101000110) && ({row_reg, col_reg}<14'b01101110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101110110101) && ({row_reg, col_reg}<14'b01101110111000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01101110111000) && ({row_reg, col_reg}<14'b01101110111101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01101110111101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01101110111110) && ({row_reg, col_reg}<14'b01101111000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01101111000100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101111000101) && ({row_reg, col_reg}<14'b01101111000111)) color_data = 12'b101110000110;

		if(({row_reg, col_reg}>=14'b01101111000111) && ({row_reg, col_reg}<14'b01110000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110000110101) && ({row_reg, col_reg}<14'b01110000111000)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01110000111000) && ({row_reg, col_reg}<14'b01110000111100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01110000111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110000111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110000111110)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01110000111111) && ({row_reg, col_reg}<14'b01110001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110001000101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110001000110) && ({row_reg, col_reg}<14'b01110001001010)) color_data = 12'b101110000110;

		if(({row_reg, col_reg}>=14'b01110001001010) && ({row_reg, col_reg}<14'b01110010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110010110101) && ({row_reg, col_reg}<14'b01110010111001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01110010111001) && ({row_reg, col_reg}<14'b01110010111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110010111011)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01110010111100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110010111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110010111110)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01110010111111) && ({row_reg, col_reg}<14'b01110011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110011000110) && ({row_reg, col_reg}<14'b01110011001000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110011001000)) color_data = 12'b101110000110;
		if(({row_reg, col_reg}==14'b01110011001001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110011001010)) color_data = 12'b101110000110;

		if(({row_reg, col_reg}>=14'b01110011001011) && ({row_reg, col_reg}<14'b01110100110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110100110101) && ({row_reg, col_reg}<14'b01110100111001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b01110100111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110100111010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01110100111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110100111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01110100111101) && ({row_reg, col_reg}<14'b01110100111111)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01110100111111) && ({row_reg, col_reg}<14'b01110101000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110101000110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110101000111) && ({row_reg, col_reg}<14'b01110101001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110101001001)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01110101001010) && ({row_reg, col_reg}<14'b01110110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110110110101) && ({row_reg, col_reg}<14'b01110110111001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b01110110111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110110111010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01110110111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01110110111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01110110111101) && ({row_reg, col_reg}<14'b01110111000000)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01110111000000) && ({row_reg, col_reg}<14'b01111000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111000110101) && ({row_reg, col_reg}<14'b01111000111001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b01111000111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111000111010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01111000111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111000111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111000111101) && ({row_reg, col_reg}<14'b01111001000000)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01111001000000) && ({row_reg, col_reg}<14'b01111010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111010110101) && ({row_reg, col_reg}<14'b01111010111001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b01111010111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111010111010)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b01111010111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b01111010111100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111010111101) && ({row_reg, col_reg}<14'b01111011000001)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01111011000001) && ({row_reg, col_reg}<14'b01111100110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111100110101) && ({row_reg, col_reg}<14'b01111100111001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01111100111001) && ({row_reg, col_reg}<14'b01111100111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01111100111011) && ({row_reg, col_reg}<14'b01111100111101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111100111101) && ({row_reg, col_reg}<14'b01111101000001)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01111101000001) && ({row_reg, col_reg}<14'b01111110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111110110101) && ({row_reg, col_reg}<14'b01111110111001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b01111110111001) && ({row_reg, col_reg}<14'b01111110111011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b01111110111011) && ({row_reg, col_reg}<14'b01111110111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01111110111110) && ({row_reg, col_reg}<14'b01111111000010)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b01111111000010) && ({row_reg, col_reg}<14'b10000000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000000110101) && ({row_reg, col_reg}<14'b10000000111001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b10000000111001)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000000111010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000000111011) && ({row_reg, col_reg}<14'b10000000111110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000000111110) && ({row_reg, col_reg}<14'b10000001000010)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000001000010) && ({row_reg, col_reg}<14'b10000010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000010110101) && ({row_reg, col_reg}<14'b10000010111001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b10000010111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000010111010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000010111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000010111100) && ({row_reg, col_reg}<14'b10000010111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000010111111) && ({row_reg, col_reg}<14'b10000011000011)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000011000011) && ({row_reg, col_reg}<14'b10000100110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000100110101) && ({row_reg, col_reg}<14'b10000100111000)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10000100111000) && ({row_reg, col_reg}<14'b10000100111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000100111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000100111100) && ({row_reg, col_reg}<14'b10000100111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000100111111) && ({row_reg, col_reg}<14'b10000101000011)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000101000011) && ({row_reg, col_reg}<14'b10000110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000110110101) && ({row_reg, col_reg}<14'b10000110110111)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10000110110111) && ({row_reg, col_reg}<14'b10000110111011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000110111011) && ({row_reg, col_reg}<14'b10000110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000110111101) && ({row_reg, col_reg}<14'b10000111000001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000111000001) && ({row_reg, col_reg}<14'b10000111000100)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=14'b10000111000100) && ({row_reg, col_reg}<14'b10001000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001000110101)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10001000110110)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001000110111) && ({row_reg, col_reg}<14'b10001000111010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001000111010) && ({row_reg, col_reg}<14'b10001000111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001000111101) && ({row_reg, col_reg}<14'b10001001000010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001001000010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==14'b10001001000011)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10001001000100) && ({row_reg, col_reg}<14'b10001010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001010110101)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10001010110110) && ({row_reg, col_reg}<14'b10001010111010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001010111010) && ({row_reg, col_reg}<14'b10001010111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001010111110) && ({row_reg, col_reg}<14'b10001011000100)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b10001011000100) && ({row_reg, col_reg}<14'b10001100110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001100110101)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}==14'b10001100110110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001100110111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10001100111000) && ({row_reg, col_reg}<14'b10001100111010)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10001100111010) && ({row_reg, col_reg}<14'b10001100111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001100111111) && ({row_reg, col_reg}<14'b10001101000100)) color_data = 12'b010001000010;

		if(({row_reg, col_reg}>=14'b10001101000100) && ({row_reg, col_reg}<14'b10001110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001110110110) && ({row_reg, col_reg}<14'b10001110111000)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10001110111000) && ({row_reg, col_reg}<14'b10001110111010)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10001110111010) && ({row_reg, col_reg}<14'b10001110111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001110111111) && ({row_reg, col_reg}<14'b10001111000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001111000011)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10001111000100) && ({row_reg, col_reg}<14'b10010000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010000110110)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10010000110111) && ({row_reg, col_reg}<14'b10010000111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010000111001) && ({row_reg, col_reg}<14'b10010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010001000000) && ({row_reg, col_reg}<14'b10010001000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010001000010) && ({row_reg, col_reg}<14'b10010001000100)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10010001000100) && ({row_reg, col_reg}<14'b10010010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010010110110) && ({row_reg, col_reg}<14'b10010010111001)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10010010111001) && ({row_reg, col_reg}<14'b10010011000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010011000001) && ({row_reg, col_reg}<14'b10010011000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010011000011)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10010011000100) && ({row_reg, col_reg}<14'b10010100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010100110110) && ({row_reg, col_reg}<14'b10010100111001)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10010100111001) && ({row_reg, col_reg}<14'b10010101000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010101000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010101000011) && ({row_reg, col_reg}<14'b10010101000101)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10010101000101) && ({row_reg, col_reg}<14'b10010110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010110110110) && ({row_reg, col_reg}<14'b10010110111001)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10010110111001) && ({row_reg, col_reg}<14'b10010111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10010111000010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010111000011) && ({row_reg, col_reg}<14'b10010111000101)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10010111000101) && ({row_reg, col_reg}<14'b10011000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011000110110) && ({row_reg, col_reg}<14'b10011000111000)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011000111000) && ({row_reg, col_reg}<14'b10011001000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011001000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10011001000100)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011001000101) && ({row_reg, col_reg}<14'b10011010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011010110110) && ({row_reg, col_reg}<14'b10011010111000)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011010111000) && ({row_reg, col_reg}<14'b10011011000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011011000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10011011000100)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011011000101) && ({row_reg, col_reg}<14'b10011100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10011100110110) && ({row_reg, col_reg}<14'b10011100111000)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}>=14'b10011100111000) && ({row_reg, col_reg}<14'b10011101000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011101000011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10011101000100)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011101000101) && ({row_reg, col_reg}<14'b10011110110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011110110110)) color_data = 12'b010101010011;
		if(({row_reg, col_reg}==14'b10011110110111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10011110111000) && ({row_reg, col_reg}<14'b10011111000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10011111000100)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10011111000101) && ({row_reg, col_reg}<14'b10100000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100000110110) && ({row_reg, col_reg}<14'b10100000111000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100000111000) && ({row_reg, col_reg}<14'b10100001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100001000100) && ({row_reg, col_reg}<14'b10100001000110)) color_data = 12'b010101010010;

		if(({row_reg, col_reg}>=14'b10100001000110) && ({row_reg, col_reg}<14'b10100010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100010110101) && ({row_reg, col_reg}<14'b10100010110111)) color_data = 12'b010101010010;
		if(({row_reg, col_reg}>=14'b10100010110111) && ({row_reg, col_reg}<14'b10100010111001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10100010111001) && ({row_reg, col_reg}<14'b10100011000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10100011000100) && ({row_reg, col_reg}<14'b10100011000111)) color_data = 12'b010001000010;













































		if(({row_reg, col_reg}>=14'b10100011000111) && ({row_reg, col_reg}<=14'b11111011111101)) color_data = 12'b000000000000;
	end
endmodule