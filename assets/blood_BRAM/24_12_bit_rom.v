module 24_rom
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








		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b001000101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000101001) && ({row_reg, col_reg}<12'b001000101011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001000101011) && ({row_reg, col_reg}<12'b001001101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001101001)) color_data = 12'b111000000000;






		if(({row_reg, col_reg}>=12'b001001101010) && ({row_reg, col_reg}<12'b001111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111011110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001111011111) && ({row_reg, col_reg}<12'b010000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010000011110)) color_data = 12'b111000000000;



		if(({row_reg, col_reg}>=12'b010000011111) && ({row_reg, col_reg}<12'b010011101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010011101100)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b010011101101) && ({row_reg, col_reg}<12'b010100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010100100110)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b010100100111) && ({row_reg, col_reg}<12'b010101100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010101100110)) color_data = 12'b110100000000;



		if(({row_reg, col_reg}>=12'b010101100111) && ({row_reg, col_reg}<12'b011000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011000101000)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b011000101001) && ({row_reg, col_reg}<12'b011001100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011001100110)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b011001100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011001101000)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b011001101001) && ({row_reg, col_reg}<12'b011010100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011010100110)) color_data = 12'b111000000000;





		if(({row_reg, col_reg}>=12'b011010100111) && ({row_reg, col_reg}<12'b011111010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011111010011)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b011111010100) && ({row_reg, col_reg}<12'b100000010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100000010011)) color_data = 12'b110100000000;
































		if(({row_reg, col_reg}>=12'b100000010100) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule