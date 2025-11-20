module 11_rom
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








		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b001000101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000101001) && ({row_reg, col_reg}<12'b001000101011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001000101011) && ({row_reg, col_reg}<12'b001001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001100000)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001001100001) && ({row_reg, col_reg}<12'b001001101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001101001)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001001101010) && ({row_reg, col_reg}<12'b001010011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010011111) && ({row_reg, col_reg}<12'b001010100001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001010100001) && ({row_reg, col_reg}<12'b001010100011)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001010100011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001010100100) && ({row_reg, col_reg}<12'b001011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001011100000)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001011100001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001011100010)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001011100011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001011100100) && ({row_reg, col_reg}<12'b001100100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100100001) && ({row_reg, col_reg}<12'b001100100011)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}>=12'b001100100011) && ({row_reg, col_reg}<12'b001100100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001100100101) && ({row_reg, col_reg}<12'b001101100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101100000) && ({row_reg, col_reg}<12'b001101100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001101100101) && ({row_reg, col_reg}<12'b001110100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110100001)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b001110100010) && ({row_reg, col_reg}<12'b010000100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010000100011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010000100100) && ({row_reg, col_reg}<12'b010001011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010001011101)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b010001011110) && ({row_reg, col_reg}<12'b010001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001100010) && ({row_reg, col_reg}<12'b010001100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010001100101) && ({row_reg, col_reg}<12'b010010011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010011101) && ({row_reg, col_reg}<12'b010010011111)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b010010011111) && ({row_reg, col_reg}<12'b010010100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010010100011)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b010010100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010100101) && ({row_reg, col_reg}<12'b010010100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010010100111) && ({row_reg, col_reg}<12'b010011011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011011001) && ({row_reg, col_reg}<12'b010011011011)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b010011011011) && ({row_reg, col_reg}<12'b010011100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011100101) && ({row_reg, col_reg}<12'b010011100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010011100111) && ({row_reg, col_reg}<12'b010100011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100011001) && ({row_reg, col_reg}<12'b010100011011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010100011011) && ({row_reg, col_reg}<12'b010101100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010101100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010101100110) && ({row_reg, col_reg}<12'b010110100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010110100101)) color_data = 12'b111000000000;










































		if(({row_reg, col_reg}>=12'b010110100110) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule