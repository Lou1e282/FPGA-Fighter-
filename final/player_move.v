//============================================================
//  player_move: horizontal move + built-in jump
//============================================================

module player_move #(
    parameter POS_WIDTH    = 10,
    parameter GROUND_Y     = 10,
    parameter GROUND_X     = 10,
    parameter MIN_X        = 40,
    parameter MAX_X        = 600,
    parameter SPEED        = 4'd2,
    parameter integer JUMP_FRAMES = 16
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
                    0:  pos_y <= GROUND_Y;        
                    1:  pos_y <= GROUND_Y - 1;
                    2:  pos_y <= GROUND_Y - 2;
                    3:  pos_y <= GROUND_Y - 3;
                    4:  pos_y <= GROUND_Y - 4;
                    5:  pos_y <= GROUND_Y - 5;
                    6:  pos_y <= GROUND_Y - 6;
                    7:  pos_y <= GROUND_Y - 7;  
                    8:  pos_y <= GROUND_Y - 6;
                    9:  pos_y <= GROUND_Y - 5;
                    10: pos_y <= GROUND_Y - 4;
                    11: pos_y <= GROUND_Y - 3;
                    12: pos_y <= GROUND_Y - 2;
                    13: pos_y <= GROUND_Y - 1;
                    14: pos_y <= GROUND_Y;       
                    15: pos_y <= GROUND_Y;        
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
