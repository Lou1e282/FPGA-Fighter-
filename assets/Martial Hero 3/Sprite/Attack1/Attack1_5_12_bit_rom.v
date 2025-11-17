module Attack1_5_rom
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























































		if(({row_reg, col_reg}>=14'b00000000000000) && ({row_reg, col_reg}<14'b01101111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101111000110) && ({row_reg, col_reg}<14'b01101111001010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01101111001010) && ({row_reg, col_reg}<14'b01101111010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01101111010101) && ({row_reg, col_reg}<14'b01101111011001)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01101111011001) && ({row_reg, col_reg}<14'b01110001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110001000101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110001000110) && ({row_reg, col_reg}<14'b01110001001101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110001001101) && ({row_reg, col_reg}<14'b01110001010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110001010100) && ({row_reg, col_reg}<14'b01110001011010)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01110001011010) && ({row_reg, col_reg}<14'b01110011000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110011000101) && ({row_reg, col_reg}<14'b01110011000111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110011000111) && ({row_reg, col_reg}<14'b01110011001110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110011001110) && ({row_reg, col_reg}<14'b01110011010001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01110011010001) && ({row_reg, col_reg}<14'b01110011010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110011010011) && ({row_reg, col_reg}<14'b01110011010110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110011010110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110011010111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110011011000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01110011011001) && ({row_reg, col_reg}<14'b01110011011011)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}>=14'b01110011011011) && ({row_reg, col_reg}<14'b01110101000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110101000101) && ({row_reg, col_reg}<14'b01110101001000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110101001000) && ({row_reg, col_reg}<14'b01110101001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110101001010) && ({row_reg, col_reg}<14'b01110101001101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110101001101) && ({row_reg, col_reg}<14'b01110101010010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110101010010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01110101010011) && ({row_reg, col_reg}<14'b01110101010101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110101010101)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110101010110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01110101010111) && ({row_reg, col_reg}<14'b01110101011001)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110101011001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b01110101011010)) color_data = 12'b000000000001;

		if(({row_reg, col_reg}>=14'b01110101011011) && ({row_reg, col_reg}<14'b01110111000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110111000101) && ({row_reg, col_reg}<14'b01110111000111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01110111000111) && ({row_reg, col_reg}<14'b01110111001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01110111001010) && ({row_reg, col_reg}<14'b01110111001101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110111001101)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110111001110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01110111001111) && ({row_reg, col_reg}<14'b01110111010001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01110111010001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110111010010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110111010011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b01110111010100)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110111010101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b01110111010110) && ({row_reg, col_reg}<14'b01110111011000)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b01110111011000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01110111011001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01110111011010) && ({row_reg, col_reg}<14'b01110111111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01110111111001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01110111111010) && ({row_reg, col_reg}<14'b01111001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111001000101) && ({row_reg, col_reg}<14'b01111001000111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111001000111) && ({row_reg, col_reg}<14'b01111001001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111001001001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111001001010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111001001011) && ({row_reg, col_reg}<14'b01111001001101)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111001001101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111001001110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01111001001111) && ({row_reg, col_reg}<14'b01111001010011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111001010011) && ({row_reg, col_reg}<14'b01111001010111)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01111001010111) && ({row_reg, col_reg}<14'b01111001011001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111001011001)) color_data = 12'b101001110110;

		if(({row_reg, col_reg}>=14'b01111001011010) && ({row_reg, col_reg}<14'b01111011000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111011000100) && ({row_reg, col_reg}<14'b01111011000111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111011000111) && ({row_reg, col_reg}<14'b01111011001001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01111011001001) && ({row_reg, col_reg}<14'b01111011001011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111011001011) && ({row_reg, col_reg}<14'b01111011001110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111011001110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01111011001111) && ({row_reg, col_reg}<14'b01111011010100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111011010100) && ({row_reg, col_reg}<14'b01111011010110)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}>=14'b01111011010110) && ({row_reg, col_reg}<14'b01111011011000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b01111011011000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111011011001) && ({row_reg, col_reg}<14'b01111011111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111011111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01111011111001) && ({row_reg, col_reg}<14'b01111101000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111101000011) && ({row_reg, col_reg}<14'b01111101000101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111101000101) && ({row_reg, col_reg}<14'b01111101001001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111101001001) && ({row_reg, col_reg}<14'b01111101001110)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111101001110)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111101001111) && ({row_reg, col_reg}<14'b01111101010011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b01111101010011) && ({row_reg, col_reg}<14'b01111101010110)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01111101010110) && ({row_reg, col_reg}<14'b01111101011000)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111101011000) && ({row_reg, col_reg}<14'b01111101110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111101110111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01111101111000) && ({row_reg, col_reg}<14'b01111111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111111000010)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==14'b01111111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b01111111000100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=14'b01111111000101) && ({row_reg, col_reg}<14'b01111111001001)) color_data = 12'b100010000110;
		if(({row_reg, col_reg}>=14'b01111111001001) && ({row_reg, col_reg}<14'b01111111001011)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111111001011) && ({row_reg, col_reg}<14'b01111111001101)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==14'b01111111001101)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b01111111001110) && ({row_reg, col_reg}<14'b01111111010010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b01111111010010) && ({row_reg, col_reg}<14'b01111111010111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b01111111010111) && ({row_reg, col_reg}<14'b01111111110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b01111111110110) && ({row_reg, col_reg}<14'b01111111111000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b01111111111000) && ({row_reg, col_reg}<14'b10000001000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000001000101) && ({row_reg, col_reg}<14'b10000001001011)) color_data = 12'b011001100101;
		if(({row_reg, col_reg}>=14'b10000001001011) && ({row_reg, col_reg}<14'b10000001001111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b10000001001111) && ({row_reg, col_reg}<14'b10000001010010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=14'b10000001010010) && ({row_reg, col_reg}<14'b10000001010100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10000001010100) && ({row_reg, col_reg}<14'b10000001010111)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}==14'b10000001010111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b10000001011000) && ({row_reg, col_reg}<14'b10000001110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000001110101) && ({row_reg, col_reg}<14'b10000001110111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10000001110111) && ({row_reg, col_reg}<14'b10000011000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000011000101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10000011000110) && ({row_reg, col_reg}<14'b10000011001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10000011001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000011001110) && ({row_reg, col_reg}<14'b10000011010010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b10000011010010) && ({row_reg, col_reg}<14'b10000011010100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b10000011010100)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b10000011010101) && ({row_reg, col_reg}<14'b10000011010111)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b10000011010111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10000011011000) && ({row_reg, col_reg}<14'b10000011110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000011110100) && ({row_reg, col_reg}<14'b10000011110110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10000011110110) && ({row_reg, col_reg}<14'b10000101000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000101000100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000101000101) && ({row_reg, col_reg}<14'b10000101000111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10000101000111) && ({row_reg, col_reg}<14'b10000101001001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000101001001) && ({row_reg, col_reg}<14'b10000101001101)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10000101001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000101001110) && ({row_reg, col_reg}<14'b10000101010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10000101010011)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b10000101010100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}>=14'b10000101010101) && ({row_reg, col_reg}<14'b10000101010111)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10000101010111) && ({row_reg, col_reg}<14'b10000101011001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b10000101011001) && ({row_reg, col_reg}<14'b10000101110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000101110011) && ({row_reg, col_reg}<14'b10000101110101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10000101110101) && ({row_reg, col_reg}<14'b10000111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000111000011) && ({row_reg, col_reg}<14'b10000111001000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000111001000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10000111001001) && ({row_reg, col_reg}<14'b10000111001111)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10000111001111) && ({row_reg, col_reg}<14'b10000111010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000111010010) && ({row_reg, col_reg}<14'b10000111010100)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10000111010100)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==14'b10000111010101)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10000111010110) && ({row_reg, col_reg}<14'b10000111011001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b10000111011001) && ({row_reg, col_reg}<14'b10000111110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10000111110010) && ({row_reg, col_reg}<14'b10000111110101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10000111110101) && ({row_reg, col_reg}<14'b10001001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001001000010) && ({row_reg, col_reg}<14'b10001001000101)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001001000101) && ({row_reg, col_reg}<14'b10001001001000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001001001000) && ({row_reg, col_reg}<14'b10001001001010)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001001001010) && ({row_reg, col_reg}<14'b10001001001110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001001001110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001001001111) && ({row_reg, col_reg}<14'b10001001010001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001001010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==14'b10001001010010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001001010011)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001001010100)) color_data = 12'b101110000110;
		if(({row_reg, col_reg}>=14'b10001001010101) && ({row_reg, col_reg}<14'b10001001011000)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10001001011000) && ({row_reg, col_reg}<14'b10001001011010)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b10001001011010) && ({row_reg, col_reg}<14'b10001001110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001001110001) && ({row_reg, col_reg}<14'b10001001110100)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10001001110100) && ({row_reg, col_reg}<14'b10001011000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001011000001) && ({row_reg, col_reg}<14'b10001011000101)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001011000101) && ({row_reg, col_reg}<14'b10001011001001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001011001001)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001011001010) && ({row_reg, col_reg}<14'b10001011001110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001011001110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001011001111) && ({row_reg, col_reg}<14'b10001011010001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001011010001)) color_data = 12'b100110011011;
		if(({row_reg, col_reg}==14'b10001011010010)) color_data = 12'b000000000001;
		if(({row_reg, col_reg}==14'b10001011010011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001011010100)) color_data = 12'b001000010010;
		if(({row_reg, col_reg}==14'b10001011010101)) color_data = 12'b101110000110;
		if(({row_reg, col_reg}>=14'b10001011010110) && ({row_reg, col_reg}<14'b10001011011001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==14'b10001011011001)) color_data = 12'b111010101001;
		if(({row_reg, col_reg}>=14'b10001011011010) && ({row_reg, col_reg}<14'b10001011110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001011110000) && ({row_reg, col_reg}<14'b10001011110011)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10001011110011) && ({row_reg, col_reg}<14'b10001100111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001100111100) && ({row_reg, col_reg}<14'b10001101000000)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b10001101000000) && ({row_reg, col_reg}<14'b10001101000100)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001101000100) && ({row_reg, col_reg}<14'b10001101001001)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001101001001) && ({row_reg, col_reg}<14'b10001101001011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001101001011) && ({row_reg, col_reg}<14'b10001101001110)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}==14'b10001101001110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001101001111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10001101010000)) color_data = 12'b011101111001;
		if(({row_reg, col_reg}>=14'b10001101010001) && ({row_reg, col_reg}<14'b10001101010101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001101010101) && ({row_reg, col_reg}<14'b10001101010111)) color_data = 12'b101110000110;
		if(({row_reg, col_reg}>=14'b10001101010111) && ({row_reg, col_reg}<14'b10001101011010)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}>=14'b10001101011010) && ({row_reg, col_reg}<14'b10001101101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001101101110) && ({row_reg, col_reg}<14'b10001101110010)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10001101110010) && ({row_reg, col_reg}<14'b10001110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001110110101) && ({row_reg, col_reg}<14'b10001110111100)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b10001110111100) && ({row_reg, col_reg}<14'b10001110111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b10001110111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001111000000) && ({row_reg, col_reg}<14'b10001111000011)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10001111000011) && ({row_reg, col_reg}<14'b10001111001010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001111001010) && ({row_reg, col_reg}<14'b10001111001100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10001111001100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10001111001101) && ({row_reg, col_reg}<14'b10001111010000)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10001111010000) && ({row_reg, col_reg}<14'b10001111010101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10001111010101) && ({row_reg, col_reg}<14'b10001111101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10001111101101) && ({row_reg, col_reg}<14'b10001111110001)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10001111110001) && ({row_reg, col_reg}<14'b10010000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010000110011) && ({row_reg, col_reg}<14'b10010000110101)) color_data = 12'b101110111100;
		if(({row_reg, col_reg}>=14'b10010000110101) && ({row_reg, col_reg}<14'b10010000111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b10010000111111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010001000000) && ({row_reg, col_reg}<14'b10010001000010)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=14'b10010001000010) && ({row_reg, col_reg}<14'b10010001001011)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==14'b10010001001011)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}==14'b10010001001100)) color_data = 12'b010001010011;
		if(({row_reg, col_reg}>=14'b10010001001101) && ({row_reg, col_reg}<14'b10010001001111)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010001001111) && ({row_reg, col_reg}<14'b10010001010101)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010001010101) && ({row_reg, col_reg}<14'b10010001101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010001101010) && ({row_reg, col_reg}<14'b10010001110000)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10010001110000) && ({row_reg, col_reg}<14'b10010010110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010010110011) && ({row_reg, col_reg}<14'b10010010111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10010010111111) && ({row_reg, col_reg}<14'b10010011000111)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010011000111) && ({row_reg, col_reg}<14'b10010011001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10010011001001) && ({row_reg, col_reg}<14'b10010011001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010011001011) && ({row_reg, col_reg}<14'b10010011001101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010011001101) && ({row_reg, col_reg}<14'b10010011010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10010011010000) && ({row_reg, col_reg}<14'b10010011010101)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010011010101) && ({row_reg, col_reg}<14'b10010011100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010011100111) && ({row_reg, col_reg}<14'b10010011101110)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=14'b10010011101110) && ({row_reg, col_reg}<14'b10010100110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010100110011) && ({row_reg, col_reg}<14'b10010100111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==14'b10010100111110)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010100111111) && ({row_reg, col_reg}<14'b10010101000110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}>=14'b10010101000110) && ({row_reg, col_reg}<14'b10010101001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10010101001001) && ({row_reg, col_reg}<14'b10010101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010101001100) && ({row_reg, col_reg}<14'b10010101010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=14'b10010101010000) && ({row_reg, col_reg}<14'b10010101010100)) color_data = 12'b010001000010;
		if(({row_reg, col_reg}>=14'b10010101010100) && ({row_reg, col_reg}<14'b10010101100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=14'b10010101100001) && ({row_reg, col_reg}<14'b10010101101101)) color_data = 12'b111111111111;

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