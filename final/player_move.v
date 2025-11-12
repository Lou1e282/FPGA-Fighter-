
//////////  Player_move module: left right, built-in jump(left, 0, right), auto facing, overshoot prevention
//////////  TODO: testing

module player_move #(
    parameter POS_WIDTH = 10,
    parameter GROUND_Y  = 10, 
    parameter GROUND_X  = 10,            /// TODO: tune GROUND_X and Y, MIN_X/// 
    parameter MIN_X     = 40,
    parameter MAX_X     = 600, 
    parameter SPEED     = 4'd2, 
    
    /////// --- built in micro jump state --- 
    parameter integer JUMP_FRAMES = 16
)(
    input   wire clk,
    input   wire reset,
    input   wire SCEN,
    input   wire move_enable, 
    input   wire move_left,
    input   wire move_right,
    input   wire jump, 
    
    input wire [POS_WIDTH-1:0] opponent_x,

    output reg [POS_WIDTH-1:0] pos_x,
    output reg [POS_WIDTH-1:0] pos_y, 
    output reg x_lock,   /// Lock x during jump   TODO: egde case when hitting /// boundary 
    output reg facing_right,
    output reg move_active, 
    output_reg jump_active               /// local jump state
);

 // --- Sequential FSM (simple position update) ---
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pos_x        <= GROUND_X;
            pos_y        <= GROUND_Y; 
            facing_right <= 1'b1;        ///  TODO fix facing reset
            move_active  <= 1'b0;
        end
        else if (SCEN && move_enable) begin
            move_active <= 1'b0;

            if (!jump_active) begin

                 // --- Movement logic ---
                if (move_left && !move_right && !jump) begin
                    pos_x       <= pos_x - SPEED;
                    move_active <= 1'b1; 
                end
                else if (move_right && !move_left && !jump) begin
                    pos_x       <= pos_x + SPEED;
                    move_active <= 1'b1; 
                end

                // --- Fixed Jump logic--- 
                else if (jump) begin               //// TODO concurrency with attacks
                    jcnt       <= 0; 
                    x_lock <= (move_right ^ move_left) ? (move_right ? +SPEED : -SPEED) : 0; 
                    pos_x      <= pos_x + x_lock;   /// tracks take off position 
                    jump_active <= 1'b1;
                    move_active <= 1'b1; 
                end
                
            end
            else begin

                // --- In air---
                pos_x      <= pos_x + x_lock;   /// tracked take off position 
                move_active <= 1'b1; 
                jcnt       <= jcnt + 1'b1;

                // vertical arc step
                case (jcnt)                                    /// TODO: match px height and frame rate
                    0: pos_y <= pos_y - 7;
                    1: pos_y <= pos_y - 6;
                    2: pos_y <= pos_y - 5;
                    3: pos_y <= pos_y - 4;
                    4: pos_y <= pos_y - 3;
                    5: pos_y <= pos_y - 2;
                    6: pos_y <= pos_y - 1;
                    7: pos_y <= pos_y + 0;
                    8: pos_y <= pos_y + 0;
                    9: pos_y <= pos_y + 1;
                    10: pos_y <= pos_y + 2;
                    11: pos_y <= pos_y + 3;
                    12: pos_y <= pos_y + 4;
                    13: pos_y <= pos_y + 5;
                    14: pos_y <= pos_y + 6;
                    15: pos_y <= pos_y + 7;
                endcase

                if (jcnt == JUMP_FRAMES - 1) begin             /// landing
                    jumping     <= 1'b0; 
                    pos_y       <= GROUND_Y;
                    move_active <= 1'b1; 
                    
                end
            end
            // --- clamping x prevent boundary overshoot 
            if      (pos_x < MIN_X) pos_x <= MIN_X;
            else if (pos_X > MAX_X) pos_X <= MAX_X; 

            // --- Edge case on wall hitting ---
            if (pos_x == MIN_X || MAX_X) x_lock <= 1'b0; 
            
            // --- Auto-flip facing depending on opponent position ---
            facing_right <= (pos_x < opponent_x);              /// TODO flip logic

            // move_active <= 1'b1; 
        end
    end
endmodule

