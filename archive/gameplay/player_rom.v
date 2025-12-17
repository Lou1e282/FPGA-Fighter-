module player(
    input wire  clk,
    input wire [9:0] row,             //// TOOD adjust input
    input wire [9:0] col,
    output reg [11:0] color_data
);

//// signal_declaration
reg [:] row_reg;git 
reg [:] col_reg;

always @(posedge clk) begin
    row_reg <= row;
    col_reg <= col;
end

always @(*)
    case({row_reg, col_reg})
    
    ////////////////
    ///color data///
    ////////////////
    
    endcase


endmodule