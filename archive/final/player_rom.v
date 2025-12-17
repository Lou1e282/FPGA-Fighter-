// Simple player sprite ROM


module player_rom(
    input wire  clk,
    input wire [9:0] row,             //// TOOD adjust input
    input wire [9:0] col,
    output reg [11:0] color_data
);

//// signal_declaration
reg [9:0] row_reg;
reg [9:0] col_reg;

always @(posedge clk) begin
    row_reg <= row;
    col_reg <= col;
end

// Combinational color LUT
always @(*) begin
    color_data = 12'h000;



always @(*)
    case({row_reg, col_reg})
    
    ////////////////
    ///color data///
    ////////////////
    
    endcase


endmodule