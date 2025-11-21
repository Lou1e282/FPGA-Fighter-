module top_pvp (
    input  wire clk,       // 100 MHz board clock
    input  wire reset_btn, // active high

    // P1 INPUT
    input  wire p1_btn_left,
    input  wire p1_btn_right,
    input  wire p1_btn_jump,
    input  wire p1_btn_atk,

     // P2 INPUT
    input  wire p2_btn_left,
    input  wire p2_btn_right,
    input  wire p2_btn_jump,
    input  wire p2_btn_atk,

    // VGA output
    output wire hsync,
    output wire vsync,
    output wire [3:0] vga_r,
    output wire [3:0] vga_g,
    output wire [3:0] vga_b, 

    // P1 LED test output
    output wire LED0,    // move_active
    output wire LED1,    // jump_active
    output wire LED2,    // attack_damage
    output wire LED3     // attack_active    // testing purpose

    // P2 LED test output
    output wire LED4,    // move_active
    output wire LED5,    // jump_active
    output wire LED6,    // attack_damage
    output wire LED7     // attack_active    // testing purpose
);

    // ---------------------
    // Clock divider: 100 MHz → 25 MHz
    // ---------------------
    reg [1:0] div;
    always @(posedge clk) div <= div + 1'b1;
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

    // frame_tick = one pulse per frame (top-left pixel)
    wire frame_tick = (hcount == 10'd0 && vcount == 10'd0);

    // ---------------------
    // Player mobility
    // ---------------------
    wire [9:0] pos_x;
    wire [9:0] pos_y;
    wire       x_lock;
    wire       facing;
    wire       move_active;
    wire       jump_active;
    // wire [5:0] jump_frame;    // <-- add this output to player_move if you animate jump

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
        //.jump_frame(jump_frame)  // <- if you don't have this yet, tie to 6'b0 inside module
    );

    player_move pm2 (
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
        //.jump_frame(jump_frame)  // <- if you don't have this yet, tie to 6'b0 inside module
    );

    // ---------------------
    // Player attack
    // ---------------------
    wire        attack_active;
    wire        attack_damage;
    // wire [1:0]  attack_type;
    wire [5:0]  attack_frame;   // 0..17 for 18-frame attack

    player_attack p1atk1 (
        .clk(pixclk),
        .reset(reset_btn),
        .SCEN(frame_tick),
        .attack_enable(1'b1),
        .attack1(p1_btn_atk),
        // .attack2(attack2),

        .attack_active(attack_active),
        .attack_damage(attack_damage),
        // .attack_type(attack_type),    // add these outputs in player_attack
        .attack_frame(attack_frame)
    );

     player_attack p2atk1 (
        .clk(pixclk),
        .reset(reset_btn),
        .SCEN(frame_tick),
        .attack_enable(1'b1),
        .attack1(p2_btn_atk),
        // .attack2(attack2),

        .attack_active(attack_active),
        .attack_damage(attack_damage),
        // .attack_type(attack_type),    // add these outputs in player_attack
        .attack_frame(attack_frame)
    );


    // ---------------------
    // Animation state machine
    // ---------------------
    wire [3:0] anim_state;
    wire [5:0] anim_frame;

    wire hitstun_active = 1'b0;  // no resolver yet, so tie low

   player_state_anim anim1 (
    .SCEN(frame_tick),
    .clk(pixclk),
    .reset(reset_btn),

    .hitstun_active(hitstun_active),
    .attack_active(attack_active),
    .attack_frame(attack_frame),

    .move_active(move_active),
    .jump_active(jump_active),

    .anim_state(anim_state),
    .anim_frame(anim_frame)
    );


    // ---------------------
    // Sprite mapper
    // ---------------------
    wire        sprite_on;
    wire [11:0] sprite_rgb;

    player_sprite_mapper sprmap1 (
        .clk(pixclk),
        .hcount(hcount),
        .vcount(vcount),
        .pos_x(pos_x),
        .pos_y(pos_y),
        .facing_right(facing),

        .anim_state(anim_state),
        .anim_frame(anim_frame),

        .sprite_on(sprite_on),
        .sprite_rgb(sprite_rgb)
    );

    // ---------------------
    // Ground line
    // ---------------------
    localparam PLAYER_GROUND_Y = 10'd360;

    wire ground_on = (vcount == PLAYER_GROUND_Y);

    // Simple ground color (green-ish)
    wire [11:0] ground_rgb = ground_on ? 12'h0F0 : 12'h000;

    // ---------------------
    // Final VGA output
    // ---------------------
    wire [11:0] final_rgb =
        sprite_on ? sprite_rgb : ground_rgb;

    assign vga_r = visible ? final_rgb[11:8] : 4'h0;
    assign vga_g = visible ? final_rgb[7:4]  : 4'h0;
    assign vga_b = visible ? final_rgb[3:0]  : 4'h0;


    // LED testing purpose
    assign LED0 = move_active;     // Should flicker when moving
    assign LED1 = jump_active;     // Should light during jump
    assign LED2 = attack_damage;     // ON for full 18-frame attack
    assign LED3 = attack_active;   // ON only during hitbox window (frames 4–10)

    assign LED4 = move_active;     // Should flicker when moving
    assign LED5 = jump_active;     // Should light during jump
    assign LED6 = attack_damage;     // ON for full 18-frame attack
    assign LED7 = attack_active;   // ON only during hitbox window (frames 4–10)

endmodule
