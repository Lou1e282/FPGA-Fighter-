module 13_rom
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









		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b001001101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001101011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001001101100) && ({row_reg, col_reg}<12'b001010011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010011111) && ({row_reg, col_reg}<12'b001010100001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001010100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001010100010)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}>=12'b001010100011) && ({row_reg, col_reg}<12'b001010100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001010100110) && ({row_reg, col_reg}<12'b001011011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011011111) && ({row_reg, col_reg}<12'b001011100001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001011100001) && ({row_reg, col_reg}<12'b001011100100)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}>=12'b001011100100) && ({row_reg, col_reg}<12'b001011100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001011100110) && ({row_reg, col_reg}<12'b001100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100011110) && ({row_reg, col_reg}<12'b001100100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001100100010) && ({row_reg, col_reg}<12'b001100100100)) color_data = 12'b111100000000;

		if(({row_reg, col_reg}>=12'b001100100100) && ({row_reg, col_reg}<12'b001101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101011110) && ({row_reg, col_reg}<12'b001101100001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001101100001) && ({row_reg, col_reg}<12'b001101100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101100011) && ({row_reg, col_reg}<12'b001101100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001101100101) && ({row_reg, col_reg}<12'b001110011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110011111)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001110100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110100001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001110100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110100011) && ({row_reg, col_reg}<12'b001110100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001110100101) && ({row_reg, col_reg}<12'b001111100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001111100000) && ({row_reg, col_reg}<12'b001111100011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001111100011) && ({row_reg, col_reg}<12'b010000100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010000100001)) color_data = 12'b111000000000;




		if(({row_reg, col_reg}>=12'b010000100010) && ({row_reg, col_reg}<12'b010100011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100011100) && ({row_reg, col_reg}<12'b010100011110)) color_data = 12'b110100000000;
		if(({row_reg, col_reg}>=12'b010100011110) && ({row_reg, col_reg}<12'b010100100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010100100100)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010100100101) && ({row_reg, col_reg}<12'b010101011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010101011101)) color_data = 12'b110100000000;
		if(({row_reg, col_reg}>=12'b010101011110) && ({row_reg, col_reg}<12'b010101100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010101100011) && ({row_reg, col_reg}<12'b010101101000)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b010101101000) && ({row_reg, col_reg}<12'b010111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010111010111) && ({row_reg, col_reg}<12'b010111011001)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b010111011001) && ({row_reg, col_reg}<12'b011001100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011001100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b011001100111) && ({row_reg, col_reg}<12'b011010100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011010100110)) color_data = 12'b111000000000;






































		if(({row_reg, col_reg}>=12'b011010100111) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule