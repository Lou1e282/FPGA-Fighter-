module 12_rom
	(
		input wire clk,
		input wire [5:0] row,
		input wire [5:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [5:0] row_reg;
	reg [5:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin








		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b001000101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001000101010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001000101011) && ({row_reg, col_reg}<12'b001001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001100000)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001001100001) && ({row_reg, col_reg}<12'b001001101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001101010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001001101011) && ({row_reg, col_reg}<12'b001010011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010011111) && ({row_reg, col_reg}<12'b001010100001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001010100001)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}>=12'b001010100010) && ({row_reg, col_reg}<12'b001010100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001010100101) && ({row_reg, col_reg}<12'b001011011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001011011111)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001011100000) && ({row_reg, col_reg}<12'b001011100010)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001011100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001011100011)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001011100100)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001011100101) && ({row_reg, col_reg}<12'b001100011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100011111) && ({row_reg, col_reg}<12'b001100100001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001100100001)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}>=12'b001100100010) && ({row_reg, col_reg}<12'b001100100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001100100101) && ({row_reg, col_reg}<12'b001101100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001101100000)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001101100001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001101100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101100011) && ({row_reg, col_reg}<12'b001101100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001101100101) && ({row_reg, col_reg}<12'b001110100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110100000) && ({row_reg, col_reg}<12'b001110100011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001110100011) && ({row_reg, col_reg}<12'b001111100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111100001)) color_data = 12'b111000000000;



		if(({row_reg, col_reg}>=12'b001111100010) && ({row_reg, col_reg}<12'b010010100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010100011) && ({row_reg, col_reg}<12'b010010100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010010100101) && ({row_reg, col_reg}<12'b010011011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010011011101)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b010011011110) && ({row_reg, col_reg}<12'b010011100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011100011) && ({row_reg, col_reg}<12'b010011100101)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b010011100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010011100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010011100111) && ({row_reg, col_reg}<12'b010100100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010100100100)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b010100100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100100110) && ({row_reg, col_reg}<12'b010100101000)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010100101000) && ({row_reg, col_reg}<12'b010101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010101011000) && ({row_reg, col_reg}<12'b010101011010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010101011010) && ({row_reg, col_reg}<12'b010110011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110011000) && ({row_reg, col_reg}<12'b010110011010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010110011010) && ({row_reg, col_reg}<12'b010111100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010111100101) && ({row_reg, col_reg}<12'b010111100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010111100111) && ({row_reg, col_reg}<12'b011000100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011000100101) && ({row_reg, col_reg}<12'b011000100111)) color_data = 12'b111000000000;








































		if(({row_reg, col_reg}>=12'b011000100111) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule