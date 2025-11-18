//============================================================
//  player_move: horizontal move + built-in jump
//============================================================

module player_move #(
    parameter POS_WIDTH    = 10,
    parameter GROUND_Y     = 300,
    parameter GROUND_X     = 10,
    parameter MIN_X        = 40,
    parameter MAX_X        = 600,
    parameter SPEED        = 4'd3,
    parameter integer JUMP_FRAMES = 40
)(
    input  wire clk,
    input  wire reset,
    input  wire SCEN,
    input  wire move_enable,
    input  wire move_left,
    input  wire move_right,
    input  wire jump,

    input  wire [POS_WIDTH-1:0] opponent_x,

    output reg  [POS_WIDTH-1:0] pos_x,
    output reg  [POS_WIDTH-1:0] pos_y,
    output reg  signed [POS_WIDTH:0] x_lock,   // signed horizontal drift
    output reg  facing_right,
    output reg  move_active,
    output reg  jump_active
);

    //--------------------------------------------------------
    // Internal registers
    //--------------------------------------------------------
    reg [$clog2(JUMP_FRAMES)-1:0] jcnt;

    //--------------------------------------------------------
    // Main FSM (position update)
    //--------------------------------------------------------
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pos_x        <= GROUND_X;
            pos_y        <= GROUND_Y;
            facing_right <= 1'b1;
            move_active  <= 1'b0;
            jump_active  <= 1'b0;
            x_lock       <= 0;
            jcnt         <= 0;
        end
        else if (SCEN && move_enable) begin
            move_active <= 1'b0;

            //------------------------------------------------
            // Not in jump → process walking or jump start
            //------------------------------------------------
            if (!jump_active) begin

                // walk left
                if (move_left && !move_right && !jump) begin
                    pos_x       <= pos_x - SPEED;
                    move_active <= 1'b1;
                end

                // walk right
                else if (move_right && !move_left && !jump) begin
                    pos_x       <= pos_x + SPEED;
                    move_active <= 1'b1;
                end

                // jump start
                else if (jump) begin
                    jcnt        <= 0;

                    // takeoff horizontal direction (signed)
                    if (move_right && !move_left)
                        x_lock <= SPEED;
                    else if (move_left && !move_right)
                        x_lock <= -SPEED;
                    else
                        x_lock <= 0;

                    // move once at takeoff
                    pos_x       <= pos_x + x_lock;

                    jump_active <= 1'b1;
                    move_active <= 1'b1;
                end
            end

            //------------------------------------------------
            // In air (jump arc)
            //------------------------------------------------
            else begin
                move_active <= 1'b1;

                // horizontal drift
                pos_x <= pos_x + x_lock;

                // jump counter
                jcnt <= jcnt + 1'b1;

                // vertical arc (VGA Y downward)
               case (jcnt)
                        0:  pos_y <= GROUND_Y - 0;
                        1:  pos_y <= GROUND_Y - 4;
                        2:  pos_y <= GROUND_Y - 6;
                        3:  pos_y <= GROUND_Y - 10;
                        4:  pos_y <= GROUND_Y - 14;
                        5:  pos_y <= GROUND_Y - 16;
                        6:  pos_y <= GROUND_Y - 20;
                        7:  pos_y <= GROUND_Y - 22;
                        8:  pos_y <= GROUND_Y - 26;
                        9:  pos_y <= GROUND_Y - 28;
                        10: pos_y <= GROUND_Y - 30;
                        11: pos_y <= GROUND_Y - 32;
                        12: pos_y <= GROUND_Y - 34;
                        13: pos_y <= GROUND_Y - 34;
                        14: pos_y <= GROUND_Y - 36;
                        15: pos_y <= GROUND_Y - 36;
                        16: pos_y <= GROUND_Y - 38;
                        17: pos_y <= GROUND_Y - 38;
                        18: pos_y <= GROUND_Y - 38;
                        19: pos_y <= GROUND_Y - 40;
                        20: pos_y <= GROUND_Y - 40;
                        21: pos_y <= GROUND_Y - 38;
                        22: pos_y <= GROUND_Y - 38;
                        23: pos_y <= GROUND_Y - 38;
                        24: pos_y <= GROUND_Y - 36;
                        25: pos_y <= GROUND_Y - 36;
                        26: pos_y <= GROUND_Y - 34;
                        27: pos_y <= GROUND_Y - 34;
                        28: pos_y <= GROUND_Y - 32;
                        29: pos_y <= GROUND_Y - 30;
                        30: pos_y <= GROUND_Y - 28;
                        31: pos_y <= GROUND_Y - 26;
                        32: pos_y <= GROUND_Y - 22;
                        33: pos_y <= GROUND_Y - 20;
                        34: pos_y <= GROUND_Y - 16;
                        35: pos_y <= GROUND_Y - 14;
                        36: pos_y <= GROUND_Y - 10;
                        37: pos_y <= GROUND_Y - 6;
                        38: pos_y <= GROUND_Y - 4;
                        39: pos_y <= GROUND_Y - 0;

                endcase

                // landing
                if (jcnt == JUMP_FRAMES - 1) begin
                    pos_y       <= GROUND_Y;
                    jump_active <= 1'b0;
                end
            end

            //------------------------------------------------
            // Clamp X to stage boundaries
            //------------------------------------------------
            if (pos_x < MIN_X)
                pos_x <= MIN_X;
            else if (pos_x > MAX_X)
                pos_x <= MAX_X;

            //------------------------------------------------
            // If hitting wall → stop horizontal drift
            //------------------------------------------------
            if (pos_x == MIN_X || pos_x == MAX_X)
                x_lock <= 0;

            //------------------------------------------------
            // Auto-facing based on opponent
            //------------------------------------------------
            facing_right <= (pos_x < opponent_x);
        end
    end

endmodule
