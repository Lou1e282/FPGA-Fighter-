module 21_rom
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
		if(({row_reg, col_reg}==12'b000111100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b000111101000) && ({row_reg, col_reg}<12'b001000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000100110) && ({row_reg, col_reg}<12'b001000101000)) color_data = 12'b111000000000;




		if(({row_reg, col_reg}>=12'b001000101000) && ({row_reg, col_reg}<12'b001100011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001100011111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001100100000) && ({row_reg, col_reg}<12'b001101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101011110) && ({row_reg, col_reg}<12'b001101100001)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001101100001) && ({row_reg, col_reg}<12'b001110011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110011111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001110100000) && ({row_reg, col_reg}<12'b001111101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111101010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001111101011) && ({row_reg, col_reg}<12'b010000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010000011110)) color_data = 12'b110100000000;
		if(({row_reg, col_reg}>=12'b010000011111) && ({row_reg, col_reg}<12'b010000100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010000100101)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b010000100110) && ({row_reg, col_reg}<12'b010000101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010000101010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010000101011) && ({row_reg, col_reg}<12'b010001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010001011110)) color_data = 12'b110100000000;
		if(({row_reg, col_reg}>=12'b010001011111) && ({row_reg, col_reg}<12'b010001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001100100) && ({row_reg, col_reg}<12'b010001100110)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b010001100110) && ({row_reg, col_reg}<12'b010011100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011100101) && ({row_reg, col_reg}<12'b010011100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010011100111) && ({row_reg, col_reg}<12'b010100100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100100100) && ({row_reg, col_reg}<12'b010100101000)) color_data = 12'b111000000000;




		if(({row_reg, col_reg}>=12'b010100101000) && ({row_reg, col_reg}<12'b011000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011000100110)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b011000100111) && ({row_reg, col_reg}<12'b011001010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011001010110) && ({row_reg, col_reg}<12'b011001011000)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b011001011000) && ({row_reg, col_reg}<12'b011011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011011100000) && ({row_reg, col_reg}<12'b011011100010)) color_data = 12'b110100000000;










		if(({row_reg, col_reg}>=12'b011011100010) && ({row_reg, col_reg}<12'b100101101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100101101011)) color_data = 12'b110100000000;



		if(({row_reg, col_reg}>=12'b100101101100) && ({row_reg, col_reg}<12'b101000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101000101000)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b101000101001) && ({row_reg, col_reg}<12'b101001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101001101000)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b101001101001) && ({row_reg, col_reg}<12'b101010001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101010001111)) color_data = 12'b110100000000;






















		if(({row_reg, col_reg}>=12'b101010010000) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule