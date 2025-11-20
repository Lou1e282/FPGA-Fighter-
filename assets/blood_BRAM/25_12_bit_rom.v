module 25_rom
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








		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b001000101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001000101010)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b001000101011) && ({row_reg, col_reg}<12'b001001101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001101010)) color_data = 12'b111000000000;







		if(({row_reg, col_reg}>=12'b001001101011) && ({row_reg, col_reg}<12'b010000011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010000011101) && ({row_reg, col_reg}<12'b010000011111)) color_data = 12'b111000000000;

		if(({row_reg, col_reg}>=12'b010000011111) && ({row_reg, col_reg}<12'b010001011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010001011101) && ({row_reg, col_reg}<12'b010001011111)) color_data = 12'b111000000000;



		if(({row_reg, col_reg}>=12'b010001011111) && ({row_reg, col_reg}<12'b010100101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010100101101)) color_data = 12'b110100000000;


		if(({row_reg, col_reg}>=12'b010100101110) && ({row_reg, col_reg}<12'b010110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010110100110)) color_data = 12'b110100000000;




		if(({row_reg, col_reg}>=12'b010110100111) && ({row_reg, col_reg}<12'b011010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011010101000) && ({row_reg, col_reg}<12'b011010101010)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b011010101010) && ({row_reg, col_reg}<12'b011011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b011011100110) && ({row_reg, col_reg}<12'b011011101000)) color_data = 12'b111000000000;







		if(({row_reg, col_reg}>=12'b011011101000) && ({row_reg, col_reg}<12'b100010010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100010010010)) color_data = 12'b110100000000;


		if(({row_reg, col_reg}>=12'b100010010011) && ({row_reg, col_reg}<12'b100100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100100100000)) color_data = 12'b110100000000;

















		if(({row_reg, col_reg}>=12'b100100100001) && ({row_reg, col_reg}<12'b110101101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110101101010)) color_data = 12'b110100000000;











		if(({row_reg, col_reg}>=12'b110101101011) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule