module 18_rom
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
		if(({row_reg, col_reg}>=12'b001011011111) && ({row_reg, col_reg}<12'b001011100010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001011100010) && ({row_reg, col_reg}<12'b001100011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100011111) && ({row_reg, col_reg}<12'b001100100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001100100010) && ({row_reg, col_reg}<12'b001100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001100101000)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001100101001) && ({row_reg, col_reg}<12'b001101011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001101011111)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001101100000) && ({row_reg, col_reg}<12'b001101100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101100011) && ({row_reg, col_reg}<12'b001101100101)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001101100101) && ({row_reg, col_reg}<12'b001101100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101100111) && ({row_reg, col_reg}<12'b001101101001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001101101001) && ({row_reg, col_reg}<12'b001101101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001101101111)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b001101110000) && ({row_reg, col_reg}<12'b001110011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110011111)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001110100000) && ({row_reg, col_reg}<12'b001110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001110100011) && ({row_reg, col_reg}<12'b001110100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001110100101) && ({row_reg, col_reg}<12'b001111100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111100011)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001111100100)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001111100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001111100110) && ({row_reg, col_reg}<12'b010000100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010000100011)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b010000100100)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b010000100101)) color_data = 12'b111000000000;



		if(({row_reg, col_reg}>=12'b010000100110) && ({row_reg, col_reg}<12'b010011011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011011001) && ({row_reg, col_reg}<12'b010011011011)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b010011011011) && ({row_reg, col_reg}<12'b010011100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011100101) && ({row_reg, col_reg}<12'b010011100111)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b010011100111) && ({row_reg, col_reg}<12'b010100011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100011001) && ({row_reg, col_reg}<12'b010100011011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010100011011) && ({row_reg, col_reg}<12'b010101100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010101100001)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010101100010) && ({row_reg, col_reg}<12'b010110100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010110100000) && ({row_reg, col_reg}<12'b010110100010)) color_data = 12'b111000000000;







		if(({row_reg, col_reg}>=12'b010110100010) && ({row_reg, col_reg}<12'b011101011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011101011011)) color_data = 12'b110100000000;



		if(({row_reg, col_reg}>=12'b011101011100) && ({row_reg, col_reg}<12'b100000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100000100110) && ({row_reg, col_reg}<12'b100000101000)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b100000101000) && ({row_reg, col_reg}<12'b100010010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100010010010)) color_data = 12'b110100000000;


		if(({row_reg, col_reg}>=12'b100010010011) && ({row_reg, col_reg}<12'b100100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100100101000)) color_data = 12'b110100000000;




























		if(({row_reg, col_reg}>=12'b100100101001) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule