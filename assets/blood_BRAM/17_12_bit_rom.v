module 17_rom
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








		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b001000100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001000100011) && ({row_reg, col_reg}<12'b001000100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001000100101) && ({row_reg, col_reg}<12'b001001100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001001100011) && ({row_reg, col_reg}<12'b001001100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001001100101) && ({row_reg, col_reg}<12'b001010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010100000) && ({row_reg, col_reg}<12'b001010100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001010100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010100011) && ({row_reg, col_reg}<12'b001010100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001010100101) && ({row_reg, col_reg}<12'b001011011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001011011111) && ({row_reg, col_reg}<12'b001011100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001011100010) && ({row_reg, col_reg}<12'b001011100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001011100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001011101000) && ({row_reg, col_reg}<12'b001100011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100011111) && ({row_reg, col_reg}<12'b001100100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001100100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100100011) && ({row_reg, col_reg}<12'b001100100101)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}==12'b001100100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001100100110) && ({row_reg, col_reg}<12'b001100101001)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001100101001) && ({row_reg, col_reg}<12'b001100101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001100101110)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b001100101111) && ({row_reg, col_reg}<12'b001101011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001101011111)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001101100000) && ({row_reg, col_reg}<12'b001101100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001101100011) && ({row_reg, col_reg}<12'b001101100101)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001101100101) && ({row_reg, col_reg}<12'b001101100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001101100111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001101101000) && ({row_reg, col_reg}<12'b001110100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001110100011) && ({row_reg, col_reg}<12'b001110100101)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001110100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001110100110) && ({row_reg, col_reg}<12'b001111100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111100010)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b001111100011) && ({row_reg, col_reg}<12'b001111100101)) color_data = 12'b111100000000;
		if(({row_reg, col_reg}==12'b001111100101)) color_data = 12'b111000000000;


		if(({row_reg, col_reg}>=12'b001111100110) && ({row_reg, col_reg}<12'b010001011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010001011011)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b010001011100) && ({row_reg, col_reg}<12'b010001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010001100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010001100110) && ({row_reg, col_reg}<12'b010010011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010011010) && ({row_reg, col_reg}<12'b010010011100)) color_data = 12'b111000000000;
		if(({row_reg, col_reg}>=12'b010010011100) && ({row_reg, col_reg}<12'b010010100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010010100101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010010100110) && ({row_reg, col_reg}<12'b010011011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010011011011)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010011011100) && ({row_reg, col_reg}<12'b010100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100100000) && ({row_reg, col_reg}<12'b010100100010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010100100010) && ({row_reg, col_reg}<12'b010101100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010101100001)) color_data = 12'b111000000000;






		if(({row_reg, col_reg}>=12'b010101100010) && ({row_reg, col_reg}<12'b011011011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011011011011)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b011011011100) && ({row_reg, col_reg}<12'b011100101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011100101001)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b011100101010) && ({row_reg, col_reg}<12'b011101100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011101100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b011101100111) && ({row_reg, col_reg}<12'b011110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011110100110)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b011110100111) && ({row_reg, col_reg}<12'b011111010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011111010011)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b011111010100) && ({row_reg, col_reg}<12'b100000010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100000010011)) color_data = 12'b110100000000;


		if(({row_reg, col_reg}>=12'b100000010100) && ({row_reg, col_reg}<12'b100010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100010101000)) color_data = 12'b110100000000;






























		if(({row_reg, col_reg}>=12'b100010101001) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule