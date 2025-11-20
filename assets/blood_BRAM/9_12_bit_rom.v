module 9_rom
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







		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b000111100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000111100111) && ({row_reg, col_reg}<12'b000111101001)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b000111101001) && ({row_reg, col_reg}<12'b001000100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000100111) && ({row_reg, col_reg}<12'b001000101001)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001000101001) && ({row_reg, col_reg}<12'b001001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001001100000) && ({row_reg, col_reg}<12'b001001100010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001001100010) && ({row_reg, col_reg}<12'b001010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001010100000)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001010100001)) color_data = 12'b111100000000;

		if(({row_reg, col_reg}>=12'b001010100010) && ({row_reg, col_reg}<12'b001011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011100000) && ({row_reg, col_reg}<12'b001011100011)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001011100011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001011100100) && ({row_reg, col_reg}<12'b001100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100100000) && ({row_reg, col_reg}<12'b001100100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001100100010)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001100100011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001100100100) && ({row_reg, col_reg}<12'b001101100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101100001) && ({row_reg, col_reg}<12'b001101100100)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001101100100) && ({row_reg, col_reg}<12'b001110100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110100001) && ({row_reg, col_reg}<12'b001110100100)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001110100100) && ({row_reg, col_reg}<12'b001111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111011110)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001111011111) && ({row_reg, col_reg}<12'b001111100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001111100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001111100100) && ({row_reg, col_reg}<12'b001111100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001111100110) && ({row_reg, col_reg}<12'b010000011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000011011) && ({row_reg, col_reg}<12'b010000011101)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b010000011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010000011110)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b010000011111) && ({row_reg, col_reg}<12'b010000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000100100) && ({row_reg, col_reg}<12'b010000100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010000100110) && ({row_reg, col_reg}<12'b010001011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001011011) && ({row_reg, col_reg}<12'b010001011101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010001011101) && ({row_reg, col_reg}<12'b010010100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010100100) && ({row_reg, col_reg}<12'b010010100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010010100110) && ({row_reg, col_reg}<12'b010011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011100100) && ({row_reg, col_reg}<12'b010011100110)) color_data = 12'b111000000000;













































		if(({row_reg, col_reg}>=12'b010011100110) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule