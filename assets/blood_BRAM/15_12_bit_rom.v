module 15_rom
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









		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b001001100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001001100001) && ({row_reg, col_reg}<12'b001001100011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001001100011) && ({row_reg, col_reg}<12'b001010100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010100001) && ({row_reg, col_reg}<12'b001010100100)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001010100100) && ({row_reg, col_reg}<12'b001010101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010101100) && ({row_reg, col_reg}<12'b001010101110)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b001010101110) && ({row_reg, col_reg}<12'b001011011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011011111) && ({row_reg, col_reg}<12'b001011100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001011100010) && ({row_reg, col_reg}<12'b001011100100)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011100101) && ({row_reg, col_reg}<12'b001011100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001011100111) && ({row_reg, col_reg}<12'b001100011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001100011111)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001100100001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001100100010) && ({row_reg, col_reg}<12'b001100100100)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001100100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100100101) && ({row_reg, col_reg}<12'b001100100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001100100111) && ({row_reg, col_reg}<12'b001101100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001101100001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001101100010) && ({row_reg, col_reg}<12'b001101100100)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001101100100)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001101100101) && ({row_reg, col_reg}<12'b001110011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110011101)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001110011110) && ({row_reg, col_reg}<12'b001110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110100011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001110100100) && ({row_reg, col_reg}<12'b001111011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001111011100) && ({row_reg, col_reg}<12'b001111011111)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001111011111) && ({row_reg, col_reg}<12'b001111100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001111100100) && ({row_reg, col_reg}<12'b001111100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001111100110) && ({row_reg, col_reg}<12'b010000011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000011100) && ({row_reg, col_reg}<12'b010000011110)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b010000011110) && ({row_reg, col_reg}<12'b010000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000100100) && ({row_reg, col_reg}<12'b010000100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010000100110) && ({row_reg, col_reg}<12'b010001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001100000) && ({row_reg, col_reg}<12'b010001100010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010001100010) && ({row_reg, col_reg}<12'b010010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010100000) && ({row_reg, col_reg}<12'b010010100010)) color_data = 12'b111000000000;





		if(({row_reg, col_reg}>=12'b010010100010) && ({row_reg, col_reg}<12'b010111011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010111011100)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b010111011101) && ({row_reg, col_reg}<12'b011000011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011000011100)) color_data = 12'b110100000000;
		if(({row_reg, col_reg}>=12'b011000011101) && ({row_reg, col_reg}<12'b011000100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011000100101)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b011000100110) && ({row_reg, col_reg}<12'b011000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011000101000)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b011000101001) && ({row_reg, col_reg}<12'b011001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011001100100) && ({row_reg, col_reg}<12'b011001100111)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b011001100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011001101000)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b011001101001) && ({row_reg, col_reg}<12'b011010100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011010100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b011010100110) && ({row_reg, col_reg}<12'b011011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011011010101) && ({row_reg, col_reg}<12'b011011010111)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b011011010111) && ({row_reg, col_reg}<12'b011101100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011101100111)) color_data = 12'b110100000000;



































		if(({row_reg, col_reg}>=12'b011101101000) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule