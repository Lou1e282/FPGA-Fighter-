module 6_rom
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







		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b000111100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000111100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b000111100110) && ({row_reg, col_reg}<12'b001000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000100100) && ({row_reg, col_reg}<12'b001000100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001000100111) && ({row_reg, col_reg}<12'b001001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001001100101) && ({row_reg, col_reg}<12'b001001100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001001100111) && ({row_reg, col_reg}<12'b001010100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010100001) && ({row_reg, col_reg}<12'b001010100011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001010100011) && ({row_reg, col_reg}<12'b001011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011100000) && ({row_reg, col_reg}<12'b001011100011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001011100011) && ({row_reg, col_reg}<12'b001100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001100011110)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001100011111)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}>=12'b001100100000) && ({row_reg, col_reg}<12'b001100100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001100100010)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001100100011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001100100100) && ({row_reg, col_reg}<12'b001101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101011110) && ({row_reg, col_reg}<12'b001101100001)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001101100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101100010) && ({row_reg, col_reg}<12'b001101100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001101100101) && ({row_reg, col_reg}<12'b001110011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110011111)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}>=12'b001110100000) && ({row_reg, col_reg}<12'b001110100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001110100011)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001110100100)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001110100101) && ({row_reg, col_reg}<12'b001111100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001111100010) && ({row_reg, col_reg}<12'b001111100101)) color_data = 12'b111000000000;

















































		if(({row_reg, col_reg}>=12'b001111100101) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule