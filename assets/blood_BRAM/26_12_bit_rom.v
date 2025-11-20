module 26_rom
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









		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b001001101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001101011)) color_data = 12'b111000000000;








		if(({row_reg, col_reg}>=12'b001001101100) && ({row_reg, col_reg}<12'b010001011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010001011101)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010001011110) && ({row_reg, col_reg}<12'b010010011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010010011101) && ({row_reg, col_reg}<12'b010010011111)) color_data = 12'b111000000000;




		if(({row_reg, col_reg}>=12'b010010011111) && ({row_reg, col_reg}<12'b010110101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010110101110)) color_data = 12'b110100000000;


		if(({row_reg, col_reg}>=12'b010110101111) && ({row_reg, col_reg}<12'b011000011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011000011101)) color_data = 12'b110100000000;
		if(({row_reg, col_reg}>=12'b011000011110) && ({row_reg, col_reg}<12'b011000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011000100110)) color_data = 12'b110100000000;




		if(({row_reg, col_reg}>=12'b011000100111) && ({row_reg, col_reg}<12'b011100101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011100101001)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b011100101010) && ({row_reg, col_reg}<12'b011101100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011101100111)) color_data = 12'b110100000000;







		if(({row_reg, col_reg}>=12'b011101101000) && ({row_reg, col_reg}<12'b100100010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100100010001)) color_data = 12'b110100000000;




















		if(({row_reg, col_reg}>=12'b100100010010) && ({row_reg, col_reg}<12'b111000101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b111000101010)) color_data = 12'b110100000000;








		if(({row_reg, col_reg}>=12'b111000101011) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule