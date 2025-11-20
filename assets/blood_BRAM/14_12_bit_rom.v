module 14_rom
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









		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b001001101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001101100)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b001001101101) && ({row_reg, col_reg}<12'b001010011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010011111) && ({row_reg, col_reg}<12'b001010100001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001010100001) && ({row_reg, col_reg}<12'b001010100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010100100) && ({row_reg, col_reg}<12'b001010100110)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001010100110) && ({row_reg, col_reg}<12'b001010101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001010101100)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b001010101101) && ({row_reg, col_reg}<12'b001011011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011011111) && ({row_reg, col_reg}<12'b001011100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001011100010) && ({row_reg, col_reg}<12'b001011100100)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}>=12'b001011100100) && ({row_reg, col_reg}<12'b001011100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001011100111) && ({row_reg, col_reg}<12'b001100100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100100001) && ({row_reg, col_reg}<12'b001100100100)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001100100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001100100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001100100110) && ({row_reg, col_reg}<12'b001101011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101011101) && ({row_reg, col_reg}<12'b001101011111)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001101011111) && ({row_reg, col_reg}<12'b001101100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001101100010)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001101100011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001101100100) && ({row_reg, col_reg}<12'b001110011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110011101) && ({row_reg, col_reg}<12'b001110100000)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001110100000) && ({row_reg, col_reg}<12'b001110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110100100)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001110100101) && ({row_reg, col_reg}<12'b001111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111011110)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001111011111) && ({row_reg, col_reg}<12'b001111100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111100001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001111100010) && ({row_reg, col_reg}<12'b001111100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111100100)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001111100101) && ({row_reg, col_reg}<12'b010000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000100000) && ({row_reg, col_reg}<12'b010000100011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010000100011) && ({row_reg, col_reg}<12'b010001100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010001100001)) color_data = 12'b111000000000;





		if(({row_reg, col_reg}>=12'b010001100010) && ({row_reg, col_reg}<12'b010110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010110011100)) color_data = 12'b110100000000;
		if(({row_reg, col_reg}>=12'b010110011101) && ({row_reg, col_reg}<12'b010110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110100100) && ({row_reg, col_reg}<12'b010110100110)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b010110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010110100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010110101000) && ({row_reg, col_reg}<12'b010111100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010111100100) && ({row_reg, col_reg}<12'b010111100110)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b010111100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010111100111) && ({row_reg, col_reg}<12'b010111101001)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b010111101001) && ({row_reg, col_reg}<12'b011001010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011001010110) && ({row_reg, col_reg}<12'b011001011000)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b011001011000) && ({row_reg, col_reg}<12'b011011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011011100110) && ({row_reg, col_reg}<12'b011011101000)) color_data = 12'b111000000000;





































		if(({row_reg, col_reg}>=12'b011011101000) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule