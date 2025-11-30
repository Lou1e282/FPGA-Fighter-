module top_twoplayers (
    input  wire clk,       // 100 MHz board clock
    input  wire reset_btn, // active high
    // P1 INPUT
    input wire p1_btn_left,
    input wire p1_btn_right,
    input wire p1_btn_jump,
    input wire p1_btn_atk,

    // P2 INPUT
    input wire p2_btn_left,
    input wire p2_btn_right,
    input wire p2_btn_jump,
    input wire p2_btn_atk,

    output wire hsync,
    output wire vsync,
    output wire [3:0] vga_r,
    output wire [3:0] vga_g,
    output wire [3:0] vga_b, 

    output wire LED0,    // move_active
    output wire LED1,    // jump_active
    output wire LED2,    // attack_damage
    output wire LED3,     // attack_active    // testing purpose

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
    // Player 1 mobility
    // ---------------------
    wire [9:0] p1_pos_x, p1_pos_y;
    wire       p1_facing;
    wire       p1_move_active, p1_jump_active;

    player_move #(
        .PLAYER_ID(1),
        .SPAWN_X(100) 
    ) pm1 (
        .clk(pixclk),
        .reset(reset_btn),
        .SCEN(frame_tick),
        .move_enable(1'b1),
        .move_left(p1_btn_left),
        .move_right(p1_btn_right),
        .jump(p1_btn_jump),
        .opponent_x(p2_pos_x),

        .pos_x(p1_pos_x),
        .pos_y(p1_pos_y),
        .facing_right(p1_facing),
        .move_active(p1_move_active),
        .jump_active(p1_jump_active)
    );

    // ---------------------
    // Player 2 mobility
    // ---------------------
    wire [9:0] p2_pos_x, p2_pos_y;
    wire       p2_facing;
    wire       p2_move_active, p2_jump_active;

    player_move #(
        .PLAYER_ID(0),  
        .SPAWN_X(600)
    ) pm2 (
        .clk(pixclk),
        .reset(reset_btn),
        .SCEN(frame_tick),
        .move_enable(1'b1),
        .move_left(p2_btn_left),
        .move_right(p2_btn_right),
        .jump(p2_btn_jump),
        .opponent_x(p1_pos_x),

        .pos_x(p2_pos_x),
        .pos_y(p2_pos_y),
        .facing_right(p2_facing),
        .move_active(p2_move_active),
        .jump_active(p2_jump_active)
    );

    // ---------------------
    // Player1 attack
    // ---------------------
    wire        p1_attack_active;
    wire        p1_attack_damage;
    wire [5:0]  p1_attack_frame;   

    player_attack p1atk (
    .clk(pixclk),
    .reset(reset_btn),
    .SCEN(frame_tick),
    .attack_enable(1'b1),
    .attack1(p1_btn_atk),

    .attack_active(p1_attack_active),
    .attack_damage(p1_attack_damage),
    .attack_frame(p1_attack_frame)
    );

    // ---------------------
    // Player2 attack
    // ---------------------
    wire        p2_attack_active;
    wire        p2_attack_damage;
    wire [5:0]  p2_attack_frame; 

    player_attack p2atk (
    .clk(pixclk),
    .reset(reset_btn),
    .SCEN(frame_tick),
    .attack_enable(1'b1),
    .attack1(p2_btn_atk),

    .attack_active(p2_attack_active),
    .attack_damage(p2_attack_damage),
    .attack_frame(p2_attack_frame)
    ); 

    // ---------------------
    // Animation state machine
    // ---------------------
    // ---------- p1 ----------------
    wire [3:0] p1_anim_state;
    wire [5:0] p1_anim_frame;

    wire p1_hitstun_active = 1'b0;  // no resolver yet, so tie low

    player_state_anim p1anim (
        .clk(pixclk),
        .reset(reset_btn),
        .SCEN(frame_tick),

        .hitstun_active(1'b0),
        .attack_active(p1_attack_active),
        .attack_frame(p1_attack_frame),
        .move_active(p1_move_active),
        .jump_active(p1_jump_active),

        .anim_state(p1_anim_state),
        .anim_frame(p1_anim_frame)
    );

     // ---------- p2 ----------------
    wire [3:0] p2_anim_state;
    wire [5:0] p2_anim_frame;

    wire p2_hitstun_active = 1'b0;  // no resolver yet, so tie low

    player_state_anim p2anim (
    .clk(pixclk),
    .reset(reset_btn),
    .SCEN(frame_tick),

    .hitstun_active(1'b0),
    .attack_active(p2_attack_active),
    .attack_frame(p2_attack_frame),
    .move_active(p2_move_active),
    .jump_active(p2_jump_active),

    .anim_state(p2_anim_state),
    .anim_frame(p2_anim_frame)
    );


    // ---------------------
    // Sprite mapper
    // ---------------------
    // -------- p1 ---------------
    wire        p1_sprite_on;
    wire [11:0] p1_sprite_rgb;

   player_sprite_mapper p1spr (
        .clk(pixclk),
        .hcount(hcount),
        .vcount(vcount),

        .pos_x(p1_pos_x),
        .pos_y(p1_pos_y),
        .facing_right(p1_facing),

        .anim_state(p1_anim_state),
        .anim_frame(p1_anim_frame),

        .sprite_on(p1_sprite_on),
        .sprite_rgb(p1_sprite_rgb)
    );

    // -------- p2 ---------------
    wire        p2_sprite_on;
    wire [11:0] p2_sprite_rgb;

   player_sprite_mapper p2spr (
        .clk(pixclk),
        .hcount(hcount),
        .vcount(vcount),

        .pos_x(p2_pos_x),
        .pos_y(p2_pos_y),
        .facing_right(p2_facing),

        .anim_state(p2_anim_state),
        .anim_frame(p2_anim_frame),

        .sprite_on(p2_sprite_on),
        .sprite_rgb(p2_sprite_rgb)
    );



    // ------------------------------------------------------------
    // Simple Attack Hitbox (Green Box)
    // ------------------------------------------------------------

    localparam HITBOX_W = 40;
    localparam HITBOX_H = 80;

    // -------------- p1 ----------------------------------

    wire [9:0] p1_atk_x0 = p1_facing ?
        (p1_pos_x + 25 + 60) :
        (p1_pos_x - 25 + 60 - HITBOX_W);

    wire [9:0] p1_atk_y0 = p1_pos_y + 35 - (HITBOX_H >> 1);

    wire p1_atk_edge =
        p1_attack_damage &&
        (hcount >= p1_atk_x0) && (hcount < p1_atk_x0 + HITBOX_W) &&
        (vcount >= p1_atk_y0) && (vcount < p1_atk_y0 + HITBOX_H) &&
        ( hcount==p1_atk_x0 || hcount==p1_atk_x0+HITBOX_W-1 ||
        vcount==p1_atk_y0 || vcount==p1_atk_y0+HITBOX_H-1 );

    // -------------- p2 ----------------------------------

    wire [9:0] p2_atk_x0 = p2_facing ?
        (p2_pos_x + 25 + 60) :
        (p2_pos_x - 25 + 60 - HITBOX_W);

    wire [9:0] p2_atk_y0 = p2_pos_y + 35 - (HITBOX_H >> 1);

    wire p2_atk_edge =
        p2_attack_damage &&
        (hcount >= p2_atk_x0) && (hcount < p2_atk_x0 + HITBOX_W) &&
        (vcount >= p2_atk_y0) && (vcount < p2_atk_y0 + HITBOX_H) &&
        ( hcount==p2_atk_x0 || hcount==p2_atk_x0+HITBOX_W-1 ||
        vcount==p2_atk_y0 || vcount==p2_atk_y0+HITBOX_H-1 );


   // ------------------------------------------------------------
    // Character Hurtbox (Red)
    // ------------------------------------------------------------
    localparam HURTBOX_W = 40;
    localparam HURTBOX_H = 45;

    // ------ p1 ------------------------
    wire [9:0] p1_hurt_x0 = p1_pos_x + 60 - (HURTBOX_W >> 1);
    wire [9:0] p1_hurt_x1 = p1_hurt_x0 + HURTBOX_W;

    wire [9:0] p1_hurt_y0 = p1_pos_y + 75 - (HURTBOX_H >> 1);
    wire [9:0] p1_hurt_y1 = p1_hurt_y0 + HURTBOX_H;

    wire p1_hurt_on =
        (hcount >= p1_hurt_x0) && (hcount < p1_hurt_x1) &&
        (vcount >= p1_hurt_y0) && (vcount < p1_hurt_y1);

    wire p1_hurt_edge =
        p1_hurt_on &&
        (hcount == p1_hurt_x0 || hcount == p1_hurt_x1-1 ||
        vcount == p1_hurt_y0 || vcount == p1_hurt_y1-1);

    wire [11:0] p1_hurt_rgb = p1_hurt_edge ? 12'hF00 : 12'h000; // RED


    // ---------- p2 ----------------------
    wire [9:0] p2_hurt_x0 = p2_pos_x + 60 - (HURTBOX_W >> 1);
    wire [9:0] p2_hurt_x1 = p2_hurt_x0 + HURTBOX_W;

    wire [9:0] p2_hurt_y0 = p2_pos_y + 75 - (HURTBOX_H >> 1);
    wire [9:0] p2_hurt_y1 = p2_hurt_y0 + HURTBOX_H;

    wire p2_hurt_on =
        (hcount >= p2_hurt_x0) && (hcount < p2_hurt_x1) &&
        (vcount >= p2_hurt_y0) && (vcount < p2_hurt_y1);

    wire p2_hurt_edge =
        p2_hurt_on &&
        (hcount == p2_hurt_x0 || hcount == p2_hurt_x1-1 ||
        vcount == p2_hurt_y0 || vcount == p2_hurt_y1-1);

    wire [11:0] p2_hurt_rgb = p2_hurt_edge ? 12'hF00 : 12'h000; // RED

   
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
        p1_atk_edge ? 12'h0F0 :
        p2_atk_edge ? 12'h0F0 :
        p1_hurt_edge? 12'hF00 :
        p2_hurt_edge? 12'hF00 :
        p1_sprite_on ? p1_sprite_rgb :
        p2_sprite_on ? p2_sprite_rgb :
        ground_rgb;


    assign vga_r = visible ? final_rgb[11:8] : 4'h0;
    assign vga_g = visible ? final_rgb[7:4]  : 4'h0;
    assign vga_b = visible ? final_rgb[3:0]  : 4'h0;


    // LED testing purpose
    assign LED0 = p1_move_active;     // Should flicker when moving
    assign LED1 = p1_jump_active;     // Should light during jump
    assign LED2 = p1_attack_damage;     // ON for full 18-frame attack
    assign LED3 = p1_attack_active;   // ON only during hitbox window (frames 4–10)

    assign LED4 = p2_move_active;     // Should flicker when moving
    assign LED5 = p2_jump_active;     // Should light during jump
    assign LED6 = p2_attack_damage;     // ON for full 18-frame attack
    assign LED7 = p2_attack_active;   // ON only during hitbox window (frames 4–10)

endmodule


