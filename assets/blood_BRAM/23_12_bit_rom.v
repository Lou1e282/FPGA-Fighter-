module 23_rom
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








		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b001000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000101000) && ({row_reg, col_reg}<12'b001000101010)) color_data = 12'b111000000000;






		if(({row_reg, col_reg}>=12'b001000101010) && ({row_reg, col_reg}<12'b001110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110011110) && ({row_reg, col_reg}<12'b001110100000)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001110100000) && ({row_reg, col_reg}<12'b001111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001111011110) && ({row_reg, col_reg}<12'b001111100000)) color_data = 12'b111000000000;



		if(({row_reg, col_reg}>=12'b001111100000) && ({row_reg, col_reg}<12'b010010101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010010101011)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b010010101100) && ({row_reg, col_reg}<12'b010011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010011011110)) color_data = 12'b110100000000;
		if(({row_reg, col_reg}>=12'b010011011111) && ({row_reg, col_reg}<12'b010011100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011100101) && ({row_reg, col_reg}<12'b010011100111)) color_data = 12'b110100000000;



		if(({row_reg, col_reg}>=12'b010011100111) && ({row_reg, col_reg}<12'b010110100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010110100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010110101000) && ({row_reg, col_reg}<12'b010111100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010111100101) && ({row_reg, col_reg}<12'b010111101001)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010111101001) && ({row_reg, col_reg}<12'b011000100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011000100101) && ({row_reg, col_reg}<12'b011000100111)) color_data = 12'b111000000000;



		if(({row_reg, col_reg}>=12'b011000100111) && ({row_reg, col_reg}<12'b011011100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011011100111)) color_data = 12'b110100000000;


		if(({row_reg, col_reg}>=12'b011011101000) && ({row_reg, col_reg}<12'b011101010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011101010100) && ({row_reg, col_reg}<12'b011101010110)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b011101010110) && ({row_reg, col_reg}<12'b011111100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011111100000) && ({row_reg, col_reg}<12'b011111100010)) color_data = 12'b110100000000;















		if(({row_reg, col_reg}>=12'b011111100010) && ({row_reg, col_reg}<12'b101110101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101110101001)) color_data = 12'b110100000000;


















		if(({row_reg, col_reg}>=12'b101110101010) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule