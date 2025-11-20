module 27_rom
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









		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b001001101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001101100)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b001001101101) && ({row_reg, col_reg}<12'b001010101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001010101100)) color_data = 12'b110100000000;









		if(({row_reg, col_reg}>=12'b001010101101) && ({row_reg, col_reg}<12'b010011011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010011011101)) color_data = 12'b111000000000;







		if(({row_reg, col_reg}>=12'b010011011110) && ({row_reg, col_reg}<12'b011010011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011010011101)) color_data = 12'b110100000000;





		if(({row_reg, col_reg}>=12'b011010011110) && ({row_reg, col_reg}<12'b011111100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011111100111)) color_data = 12'b110100000000;

		if(({row_reg, col_reg}>=12'b011111101000) && ({row_reg, col_reg}<12'b100000100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100000100111)) color_data = 12'b110100000000;







		if(({row_reg, col_reg}>=12'b100000101000) && ({row_reg, col_reg}<12'b100111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100111010000)) color_data = 12'b110100000000;


		if(({row_reg, col_reg}>=12'b100111010001) && ({row_reg, col_reg}<12'b101001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101001100000)) color_data = 12'b110100000000;























		if(({row_reg, col_reg}>=12'b101001100001) && ({row_reg, col_reg}<=12'b111111111111)) color_data = 12'b000000000000;
	end
endmodule