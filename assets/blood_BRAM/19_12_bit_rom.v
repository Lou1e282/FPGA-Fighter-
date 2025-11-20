module 19_rom
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


		if(({row_reg, col_reg}>=12'b001001100111) && ({row_reg, col_reg}<12'b001011011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011011111) && ({row_reg, col_reg}<12'b001011100001)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001011100001) && ({row_reg, col_reg}<12'b001100011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100011111) && ({row_reg, col_reg}<12'b001100100010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001100100010) && ({row_reg, col_reg}<12'b001101100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001101100000)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001101100001) && ({row_reg, col_reg}<12'b001101101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101101000) && ({row_reg, col_reg}<12'b001101101010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001101101010) && ({row_reg, col_reg}<12'b001110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110011110) && ({row_reg, col_reg}<12'b001110100000)) color_data = 12'b110100000000;
		if(({row_reg, col_reg}>=12'b001110100000) && ({row_reg, col_reg}<12'b001110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110100100)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001110100101) && ({row_reg, col_reg}<12'b001110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110101000) && ({row_reg, col_reg}<12'b001110101010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001110101010) && ({row_reg, col_reg}<12'b001110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110110000)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b001110110001) && ({row_reg, col_reg}<12'b001111100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111100100)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001111100101) && ({row_reg, col_reg}<12'b010000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000100100) && ({row_reg, col_reg}<12'b010000100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010000100110) && ({row_reg, col_reg}<12'b010001100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010001100011)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b010001100100)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}>=12'b010001100101) && ({row_reg, col_reg}<12'b010001100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010001100111) && ({row_reg, col_reg}<12'b010010100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010010100100)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b010010100101) && ({row_reg, col_reg}<12'b010100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010100100110)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b010100100111) && ({row_reg, col_reg}<12'b010101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010101011000) && ({row_reg, col_reg}<12'b010101011010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b010101011010) && ({row_reg, col_reg}<12'b010101100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010101100110)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b010101100111) && ({row_reg, col_reg}<12'b010110011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110011000) && ({row_reg, col_reg}<12'b010110011010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010110011010) && ({row_reg, col_reg}<12'b010111100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010111100000) && ({row_reg, col_reg}<12'b010111100010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010111100010) && ({row_reg, col_reg}<12'b011000100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011000100001)) color_data = 12'b111000000000;









		if(({row_reg, col_reg}>=12'b011000100010) && ({row_reg, col_reg}<12'b100001101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100001101010)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b100001101011) && ({row_reg, col_reg}<12'b100010100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100010100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b100010101000) && ({row_reg, col_reg}<12'b100011100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100011100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b100011101000) && ({row_reg, col_reg}<12'b100100010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100100010001)) color_data = 12'b110100000000;




























		if(({row_reg, col_reg}>=12'b100100010010) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule