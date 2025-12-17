module top_vga_sprite (
    input  wire clk,       // 100 MHz board clock
    input  wire reset_btn, // active high
    input  wire btn_left,
    input  wire btn_right,
    input  wire btn_jump,
    input  wire btn_atk,

    output wire hsync,
    output wire vsync,
    output wire [3:0] vga_r,
    output wire [3:0] vga_g,
    output wire [3:0] vga_b, 

    output wire LED0,    // move_active
    output wire LED1,    // jump_active
    output wire LED2,    // attack_damage
    output wire LED3     // attack_active    // testing purpose
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

    // ---------------------
    // Player attack
    // ---------------------
    wire        attack_active;
    wire        attack_damage;
    // wire [1:0]  attack_type;
    wire [5:0]  attack_frame;   // 0..17 for 18-frame attack

    player_attack patk1 (
        .clk(pixclk),
        .reset(reset_btn),
        .SCEN(frame_tick),
        .attack_enable(1'b1),
        .attack1(btn_atk),
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


    // ------------------------------------------------------------
    // Simple Attack Hitbox (Green Box)
    // Always appears directly in front of player
    // ------------------------------------------------------------
    localparam HITBOX_W = 40;
    localparam HITBOX_H = 80;

    // Position hitbox directly in front of player
    wire [9:0] atk_x0 = facing ?
                        (pos_x + 25 + 60) :         // facing right
                        (pos_x - 25 + 60 - HITBOX_W); // facing left
    wire [9:0] atk_x1 = atk_x0 + HITBOX_W;

    // Vertically centered on character center
    wire [9:0] atk_y0 = pos_y + 35 - (HITBOX_H >> 1);
    wire [9:0] atk_y1 = atk_y0 + HITBOX_H;

    // Active only during attack_damage window
    wire atk_on =
        attack_damage &&
        (hcount >= atk_x0) && (hcount < atk_x1) &&
        (vcount >= atk_y0) && (vcount < atk_y1);

    // Draw only outline
    wire atk_edge =
        atk_on &&
        (hcount == atk_x0 || hcount == atk_x1-1 ||
        vcount == atk_y0 || vcount == atk_y1-1);

    wire [11:0] atk_rgb = atk_edge ? 12'h0F0 : 12'h000; // GREEN


   // ------------------------------------------------------------
    // Character Hurtbox (Red)
    // ------------------------------------------------------------
    localparam HURTBOX_W = 40;
    localparam HURTBOX_H = 45;

    // centered on player
    wire [9:0] hurt_x0 = pos_x + 60 - (HURTBOX_W >> 1);
    wire [9:0] hurt_x1 = hurt_x0 + HURTBOX_W;

    wire [9:0] hurt_y0 = pos_y + 75 - (HURTBOX_H >> 1);
    wire [9:0] hurt_y1 = hurt_y0 + HURTBOX_H;

    wire hurt_on =
        (hcount >= hurt_x0) && (hcount < hurt_x1) &&
        (vcount >= hurt_y0) && (vcount < hurt_y1);

    wire hurt_edge =
        hurt_on &&
        (hcount == hurt_x0 || hcount == hurt_x1-1 ||
        vcount == hurt_y0 || vcount == hurt_y1-1);

    wire [11:0] hurt_rgb = hurt_edge ? 12'hF00 : 12'h000; // RED
   
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
    atk_edge  ? atk_rgb  :
    hurt_edge ? hurt_rgb :
    sprite_on ? sprite_rgb :
    ground_rgb;


    assign vga_r = visible ? final_rgb[11:8] : 4'h0;
    assign vga_g = visible ? final_rgb[7:4]  : 4'h0;
    assign vga_b = visible ? final_rgb[3:0]  : 4'h0;


    // LED testing purpose
    assign LED0 = move_active;     // Should flicker when moving
    assign LED1 = jump_active;     // Should light during jump
    assign LED2 = attack_damage;     // ON for full 18-frame attack
    assign LED3 = attack_active;   // ON only during hitbox window (frames 4–10)

endmodule












    //    // ------------------------------------------------------------
    //     // Attack hitbox visualization (green outline following sword)
    //     // ------------------------------------------------------------
    //     // Per-phase hitbox params for the 7 attack frames
    //     // (facing right, relative to player center (pos_x,pos_y))
    //     reg [9:0] hb_w, hb_h;
    //     reg [9:0] hb_xoff;   // distance from player center to hitbox LEFT (facing right)
    //     reg [9:0] hb_yup;    // distance from player center UP to hitbox TOP

    //     wire [2:0] atk_phase = attack_frame[2:0];  // 0..6 repeat over attack

    //     always @* begin
    //         // defaults (no hitbox)
    //         hb_w    = 10'd0;
    //         hb_h    = 10'd0;
    //         hb_xoff = 10'd0;
    //         hb_yup  = 10'd0;

    //         case (atk_phase)
    //             //  phase :  W    H    Xoff  Yup   (see analysis table)
    //             3'd0: begin hb_w=10'd28; hb_h=10'd55; hb_xoff=10'd18; hb_yup=10'd45; end
    //             3'd1: begin hb_w=10'd32; hb_h=10'd70; hb_xoff=10'd25; hb_yup=10'd65; end
    //             3'd2: begin hb_w=10'd40; hb_h=10'd45; hb_xoff=10'd10; hb_yup=10'd90; end
    //             3'd3: begin hb_w=10'd42; hb_h=10'd60; hb_xoff=10'd22; hb_yup=10'd78; end
    //             3'd4: begin hb_w=10'd80; hb_h=10'd90; hb_xoff=10'd35; hb_yup=10'd40; end
    //             3'd5: begin hb_w=10'd60; hb_h=10'd40; hb_xoff=10'd45; hb_yup=10'd25; end
    //             3'd6: begin hb_w=10'd75; hb_h=10'd30; hb_xoff=10'd55; hb_yup=10'd15; end
    //             default: ; // keep zeros
    //         endcase
    //     end

    //     // Mirror horizontally based on facing
    //     wire [9:0] hitbox_x0 = facing ?
    //                         (pos_x + hb_xoff) :           // facing right
    //                         (pos_x - hb_xoff - hb_w);      // facing left (mirrored)
    //     wire [9:0] hitbox_x1 = hitbox_x0 + hb_w;

    //     // Vertical placement (Y decreases upward)
    //     wire [9:0] hitbox_y0 = pos_y - hb_yup;
    //     wire [9:0] hitbox_y1 = hitbox_y0 + hb_h;

    //     // Inside-box check, only when attack_damage is true
    //     wire hitbox_on =
    //         attack_damage && (hb_w != 10'd0) &&
    //         (hcount >= hitbox_x0) && (hcount < hitbox_x1) &&
    //         (vcount >= hitbox_y0) && (vcount < hitbox_y1);

    //     // Only draw the edges (no filled box)
    //     wire hitbox_edge =
    //         hitbox_on &&
    //         ( (hcount == hitbox_x0) || (hcount == hitbox_x1 - 1) ||
    //         (vcount == hitbox_y0) || (vcount == hitbox_y1 - 1) );

    //     wire [11:0] hitbox_rgb = 12'h0F0;   // bright green
