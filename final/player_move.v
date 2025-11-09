module player_move #(
    parameter POS_WIDTH = 10,
    parameter SPEED     = 4'd2
)(
    input   wire clk,
    input   wire reset,
    input   wire SCEN,
    input   wire move_left,
    input   wire move_right,
    
    input wire [POS_WIDTH-1:0] opponent_x,

    output reg [POS_WIDTH-1:0] pos_x,
    output reg face_right,
    output reg move_active
);

 // --- Sequential FSM (simple position update) ---
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pos_x        <= 0;
            facing_right <= 1'b1;
            move_active  <= 1'b0;
        end
        else if (SCEN) begin
            move_active <= 1'b0;

            // --- Movement logic ---
            if (move_left && !move_right) begin
                pos_x       <= pos_x - SPEED;
                move_active <= 1'b1;
            end
            else if (move_right && !move_left) begin
                pos_x       <= pos_x + SPEED;
                move_active <= 1'b1;
            end

            // --- Auto-flip facing depending on opponent position ---
            if (pos_x < opponent_x)
                facing_right <= 1'b1;
            else
                facing_right <= 1'b0;
        end
    end
endmodule

