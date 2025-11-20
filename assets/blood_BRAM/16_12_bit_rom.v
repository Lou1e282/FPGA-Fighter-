module 16_rom
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









		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b001001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001001100010) && ({row_reg, col_reg}<12'b001001100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001001100101) && ({row_reg, col_reg}<12'b001010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010100000) && ({row_reg, col_reg}<12'b001010100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001010100101) && ({row_reg, col_reg}<12'b001011011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011011111) && ({row_reg, col_reg}<12'b001011100011)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001011100011) && ({row_reg, col_reg}<12'b001011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011100110) && ({row_reg, col_reg}<12'b001011101000)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001011101000) && ({row_reg, col_reg}<12'b001011101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001011101101)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b001011101110) && ({row_reg, col_reg}<12'b001100011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001100011111)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001100100000)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}>=12'b001100100001) && ({row_reg, col_reg}<12'b001100100101)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001100100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100100110) && ({row_reg, col_reg}<12'b001100101000)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001100101000) && ({row_reg, col_reg}<12'b001101100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001101100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001101100011) && ({row_reg, col_reg}<12'b001101100101)) color_data = 12'b111100000000;

		if(({row_reg, col_reg}>=12'b001101100101) && ({row_reg, col_reg}<12'b001110100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001110100011)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001110100100)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b001110100101) && ({row_reg, col_reg}<12'b010000011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000011011) && ({row_reg, col_reg}<12'b010000011101)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b010000011101) && ({row_reg, col_reg}<12'b010000100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010000100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010000100110) && ({row_reg, col_reg}<12'b010001011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001011011) && ({row_reg, col_reg}<12'b010001011101)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b010001011101) && ({row_reg, col_reg}<12'b010001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001100100) && ({row_reg, col_reg}<12'b010001100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010001100110) && ({row_reg, col_reg}<12'b010010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010100000) && ({row_reg, col_reg}<12'b010010100010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010010100010) && ({row_reg, col_reg}<12'b010011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010011100000) && ({row_reg, col_reg}<12'b010011100010)) color_data = 12'b111000000000;






		if(({row_reg, col_reg}>=12'b010011100010) && ({row_reg, col_reg}<12'b011001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011001011100)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b011001011101) && ({row_reg, col_reg}<12'b011010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011010101000) && ({row_reg, col_reg}<12'b011010101010)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b011010101010) && ({row_reg, col_reg}<12'b011011100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011011100101) && ({row_reg, col_reg}<12'b011011100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b011011100111) && ({row_reg, col_reg}<12'b011100100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011100100101) && ({row_reg, col_reg}<12'b011100100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b011100100111) && ({row_reg, col_reg}<12'b011101010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011101010100) && ({row_reg, col_reg}<12'b011101010110)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b011101010110) && ({row_reg, col_reg}<12'b011111100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011111100111)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b011111101000) && ({row_reg, col_reg}<12'b100000100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100000100111)) color_data = 12'b110100000000;
































		if(({row_reg, col_reg}>=12'b100000101000) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule