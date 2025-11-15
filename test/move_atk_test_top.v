module top_vga_mobility (
    input  wire clk,       // 100 MHz board clock
    input  wire reset_btn, // active high
    input  wire btn_left,
    input  wire btn_right,
    input  wire btn_jump,
    input  wire sw0, sw1,   // attack 1 2

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
    wire frame_tick = (hcount == 0 && vcount == 0);         // 1 pulse per frame
    wire       visible;

    vga_640x480 vga_core (
        .clk(pixclk)
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

    player_move pm1 (
        .clk(pixclk),
        .reset(reset_btn),
        .SCEN(frame_tick),
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
    // Player attack
    // ---------------------
    wire attack1 = sw0;
    wire attack2 = sw1; 

    player_attack patk1(
        .clk(pixclk),
        .reset(reset_btn),
        .SCEN(frame_tick),
        .attack_enable(1'b1),
        .attack1(attack1),  
        .attack2(attack2),

        .attack_active(attack_active),
        .attack_type(attack_type),
        .attack_busy(attack_busy) 
    ); 

    // ---------------------
    // Draw simple rectangle + ground line
    // ---------------------
    localparam BOX_W = 60;
    localparam BOX_H = 60;

    // === PLAYER BOX ===
    wire player_on =
        (hcount >= pos_x && hcount < pos_x + BOX_W) &&
        (vcount >= pos_y && vcount < pos_y + BOX_H);

    /////////////////atk test//////////////
    // === PLAYER ATK BOX ===
    localparam ATK1_W = 30;
    localparam ATK1_H = 60;
    localparam ATK2_W = 60;
    localparam ATK2_H = 60;

    wire attack1_on =
    attack_active &&
    (attack_type == 2'd1) &&
    (hcount >= pos_x + BOX_W && hcount < pos_x + BOX_W + ATK1_W) &&
    (vcount >= pos_y && vcount < pos_y + ATK1_H);

    wire attack2_on =
    attack_active &&
    (attack_type == 2'd2) &&
    (hcount >= pos_x + BOX_W && hcount < pos_x + BOX_W + ATK2_W) &&
    (vcount >= pos_y && vcount < pos_y + ATK2_H);

    /////////////////////////////////////

    // === GROUND LINE (1 pixel thick) ===
    localparam PLAYER_GROUND_Y = 360;

    wire ground_on =
        (vcount == GROUND_Y);

    // === VGA OUTPUT ===
    assign vga_r =
        (visible && (player_on || ground_on)) ? 4'hF : 4'h0;

   assign vga_g =
    (visible && (attack1_on || attack2_on)) ? 4'hF :
    (visible && player_on)                  ? 4'h2 :
    (visible && ground_on)                  ? 4'hF :
    4'h0;

    assign vga_b = 4'h0;


endmodule
