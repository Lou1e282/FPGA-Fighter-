module player_move_top;

    // --- Parameters ---
    parameter POS_WIDTH  = 10;
    parameter CLK_PERIOD = 10;

    // --- DUT Signals ---
    reg clk;
    reg reset;
    reg SCEN;
    reg move_enable;
    reg move_left;
    reg move_right;
    reg jump;

    reg  [POS_WIDTH-1:0] opponent_x;

    wire [POS_WIDTH-1:0] pos_x;
    wire [POS_WIDTH-1:0] pos_y;
    wire x_lock;
    wire facing_right;
    wire move_active;
    wire jump_active;

    // --- Instantiate DUT ---
    player_move dut (
        .clk(clk),
        .reset(reset),
        .SCEN(SCEN),
        .move_enable(move_enable),
        .move_left(move_left),
        .move_right(move_right),
        .jump(jump),
        .opponent_x(opponent_x),
        .pos_x(pos_x),
        .pos_y(pos_y),
        .x_lock(x_lock),
        .facing_right(facing_right),
        .move_active(move_active),
        .jump_active(jump_active)
    );

    // --- Clock generator ---
    initial begin
        clk = 1'b0;
    end

    always #(CLK_PERIOD/2) clk = ~clk;

    // --- Reset + default signal init ---
    initial begin
        reset        = 1'b1;
        SCEN         = 1'b0;
        move_enable  = 1'b0;
        move_left    = 1'b0;
        move_right   = 1'b0;
        jump         = 1'b0;
        opponent_x   = 10'd200;

        #50;
        reset        = 1'b0;
        move_enable  = 1'b1;
        SCEN         = 1'b1;
    end

endmodule
