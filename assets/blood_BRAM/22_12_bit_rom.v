module 22_rom
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





		if(({row_reg, col_reg}>=12'b001000101001) && ({row_reg, col_reg}<12'b001101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101011110) && ({row_reg, col_reg}<12'b001101100000)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001101100000) && ({row_reg, col_reg}<12'b001110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110011110) && ({row_reg, col_reg}<12'b001110100000)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b001110100000) && ({row_reg, col_reg}<12'b010000101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010000101011)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b010000101100) && ({row_reg, col_reg}<12'b010001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010001100101)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b010001100110) && ({row_reg, col_reg}<12'b010001101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010001101011)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b010001101100) && ({row_reg, col_reg}<12'b010010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010010011110)) color_data = 12'b110100000000;
		if(({row_reg, col_reg}>=12'b010010011111) && ({row_reg, col_reg}<12'b010010100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010010100101)) color_data = 12'b111000000000;



		if(({row_reg, col_reg}>=12'b010010100110) && ({row_reg, col_reg}<12'b010101100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010101100101) && ({row_reg, col_reg}<12'b010101101000)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010101101000) && ({row_reg, col_reg}<12'b010110100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010110100101)) color_data = 12'b111000000000;





		if(({row_reg, col_reg}>=12'b010110100110) && ({row_reg, col_reg}<12'b011011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011011010101) && ({row_reg, col_reg}<12'b011011010111)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b011011010111) && ({row_reg, col_reg}<12'b011101100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011101100000) && ({row_reg, col_reg}<12'b011101100010)) color_data = 12'b110100000000;











		if(({row_reg, col_reg}>=12'b011101100010) && ({row_reg, col_reg}<12'b101000101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101000101100)) color_data = 12'b110100000000;



		if(({row_reg, col_reg}>=12'b101000101101) && ({row_reg, col_reg}<12'b101011101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101011101000)) color_data = 12'b110100000000;




		if(({row_reg, col_reg}>=12'b101011101001) && ({row_reg, col_reg}<12'b101111101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101111101010)) color_data = 12'b110100000000;

















		if(({row_reg, col_reg}>=12'b101111101011) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule