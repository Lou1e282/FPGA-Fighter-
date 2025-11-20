module 5_rom
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








		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b001000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000100100) && ({row_reg, col_reg}<12'b001000100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001000100110) && ({row_reg, col_reg}<12'b001001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001001100100) && ({row_reg, col_reg}<12'b001001100110)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b001001100110) && ({row_reg, col_reg}<12'b001011011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011011111) && ({row_reg, col_reg}<12'b001011100100)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001011100100) && ({row_reg, col_reg}<12'b001100011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100011111) && ({row_reg, col_reg}<12'b001100100010)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}>=12'b001100100010) && ({row_reg, col_reg}<12'b001100100100)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001100100100) && ({row_reg, col_reg}<12'b001101011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001101011111)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001101100000)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001101100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101100010) && ({row_reg, col_reg}<12'b001101100100)) color_data = 12'b111100000000;

		if(({row_reg, col_reg}>=12'b001101100100) && ({row_reg, col_reg}<12'b001110100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110100010) && ({row_reg, col_reg}<12'b001110100100)) color_data = 12'b111000000000;


















































		if(({row_reg, col_reg}>=12'b001110100100) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule