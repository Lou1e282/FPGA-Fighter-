module 28_rom
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










		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b001010101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b001010101100) && ({row_reg, col_reg}<12'b001010101110)) color_data = 12'b110100000000;










		if(({row_reg, col_reg}>=12'b001010101110) && ({row_reg, col_reg}<12'b010100011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b010100011100) && ({row_reg, col_reg}<12'b010100011110)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b010100011110) && ({row_reg, col_reg}<12'b010101011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010101011101)) color_data = 12'b110100000000;






		if(({row_reg, col_reg}>=12'b010101011110) && ({row_reg, col_reg}<12'b011011100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011011100111)) color_data = 12'b110100000000;






		if(({row_reg, col_reg}>=12'b011011101000) && ({row_reg, col_reg}<12'b100001101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100001101010)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b100001101011) && ({row_reg, col_reg}<12'b100010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100010101000)) color_data = 12'b110100000000;








		if(({row_reg, col_reg}>=12'b100010101001) && ({row_reg, col_reg}<12'b101010001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101010001111)) color_data = 12'b110100000000;






















		if(({row_reg, col_reg}>=12'b101010010000) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule