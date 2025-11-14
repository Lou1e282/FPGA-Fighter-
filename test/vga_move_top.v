module top_vga_mobility (
    input  wire clk,       // 100 MHz board clock
    input  wire reset_btn, // active high
    input  wire btn_left,
    input  wire btn_right,
    input  wire btn_jump,

    output wire hsync,
    output wire vsync,
    output wire [3:0] vga_r,
    output wire [3:0] vga_g,
    output wire [3:0] vga_b
);


    // ---------------------
    // Clock divider: 100 MHz → 25 MHz
    // ---------------------
    reg [1:0] div;
    always @(posedge clk) div <= div + 1;
    wire pixclk = div[1];  // 100/4 = 25 MHz

    // ---------------------
    // VGA timing generator
    // ---------------------
    wire [9:0] hcount;
    wire [9:0] vcount;
    wire       visible;

    vga_640x480 vga_core (
        .clk(pixclk),
        .hsync(hsync),
        .vsync(vsync),
        .hcount(hcount),
        .vcount(vcount),
        .visible(visible)
    );

    // ---------------------
    // Player mobility
    // ---------------------
    wire [9:0] pos_x;
    wire [9:0] pos_y;
    wire x_lock;
    wire facing;
    wire move_active;
    wire jump_active;

    player_move p1 (
        .clk(pixclk),
        .reset(reset_btn),
        .SCEN(1'b1),
        .move_enable(1'b1),
        .move_left(btn_left),
        .move_right(btn_right),
        .jump(btn_jump),
        .opponent_x(10'd300),    // static opponent for now

        .pos_x(pos_x),
        .pos_y(pos_y),
        .x_lock(x_lock),
        .facing_right(facing),
        .move_active(move_active),
        .jump_active(jump_active)
    );

    // ---------------------
    // Draw simple rectangle + ground line
    // ---------------------
    localparam BOX_W = 32;
    localparam BOX_H = 48;

    // === PLAYER BOX ===
    wire player_on =
        (hcount >= pos_x && hcount < pos_x + BOX_W) &&
        (vcount >= pos_y && vcount < pos_y + BOX_H);

    // === GROUND LINE (1 pixel thick) ===
    localparam GROUND_Y = 430;

    wire ground_on =
        (vcount == GROUND_Y);

    // === VGA OUTPUT ===
    assign vga_r =
        (visible && (player_on || ground_on)) ? 4'hF : 4'h0;

    assign vga_g =
        (visible && player_on) ? 4'h2 :
        (visible && ground_on) ? 4'hF : 4'h0;

    assign vga_b = 4'h0;

endmodule
