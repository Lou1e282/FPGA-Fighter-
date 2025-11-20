module 20_rom
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







		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b000111100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000111100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b000111100111) && ({row_reg, col_reg}<12'b001000100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000100101) && ({row_reg, col_reg}<12'b001000101000)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001000101000) && ({row_reg, col_reg}<12'b001001100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001100110)) color_data = 12'b111000000000;



		if(({row_reg, col_reg}>=12'b001001100111) && ({row_reg, col_reg}<12'b001100011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100011111) && ({row_reg, col_reg}<12'b001100100001)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001100100001) && ({row_reg, col_reg}<12'b001101011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101011111) && ({row_reg, col_reg}<12'b001101100001)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001101100001) && ({row_reg, col_reg}<12'b001110101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110101001)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001110101010) && ({row_reg, col_reg}<12'b001111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111011110)) color_data = 12'b110100000000;
		if(({row_reg, col_reg}>=12'b001111011111) && ({row_reg, col_reg}<12'b001111100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001111100100) && ({row_reg, col_reg}<12'b001111100110)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001111100110) && ({row_reg, col_reg}<12'b001111101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111101001)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001111101010) && ({row_reg, col_reg}<12'b010000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000100100) && ({row_reg, col_reg}<12'b010000100110)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b010000100110) && ({row_reg, col_reg}<12'b010010100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010010100100)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b010010100101)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b010010100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010010100111) && ({row_reg, col_reg}<12'b010011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010011100100)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b010011100101)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b010011100110)) color_data = 12'b111000000000;



		if(({row_reg, col_reg}>=12'b010011100111) && ({row_reg, col_reg}<12'b010110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010110100110)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b010110100111) && ({row_reg, col_reg}<12'b010111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010111010111) && ({row_reg, col_reg}<12'b010111011001)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b010111011001) && ({row_reg, col_reg}<12'b011001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011001100000) && ({row_reg, col_reg}<12'b011001100010)) color_data = 12'b111000000000;










		if(({row_reg, col_reg}>=12'b011001100010) && ({row_reg, col_reg}<12'b100011101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100011101011)) color_data = 12'b110100000000;


		if(({row_reg, col_reg}>=12'b100011101100) && ({row_reg, col_reg}<12'b100101100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100101100111)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b100101101000) && ({row_reg, col_reg}<12'b100110100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100110100111)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b100110101000) && ({row_reg, col_reg}<12'b100111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100111010000)) color_data = 12'b110100000000;


		if(({row_reg, col_reg}>=12'b100111010001) && ({row_reg, col_reg}<12'b101001101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101001101001)) color_data = 12'b110100000000;























		if(({row_reg, col_reg}>=12'b101001101010) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule