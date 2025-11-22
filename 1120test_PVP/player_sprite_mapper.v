module player_sprite_mapper (
    input  wire        clk,
    input  wire [9:0]  hcount,
    input  wire [9:0]  vcount,
    input  wire [9:0]  pos_x,
    input  wire [9:0]  pos_y,
    input  wire        facing_right,  // 1 = right, 0 = left

    input  wire [3:0]  anim_state,
    input  wire [5:0]  anim_frame,

    output wire        sprite_on,
    output reg  [11:0] sprite_rgb
);
    // Must match your art
    localparam SPR_W = 126;
    localparam SPR_H = 126;

    // animation state encoding – must match player_state_anim
    localparam S_IDLE   = 4'd0;
    localparam S_MOVE   = 4'd1;
    // localparam S_JUMP   = 4'd2;
    localparam S_ATK1   = 4'd3;
    // localparam S_ATK2   = 4'd4;
    // localparam S_HIT    = 4'd5;

    // Inside player bounding box?
    wire inside =
        (hcount >= pos_x) && (hcount < pos_x + SPR_W) &&
        (vcount >= pos_y) && (vcount < pos_y + SPR_H);

    // sprite-local coordinates
    wire [6:0] row = vcount - pos_y;
    wire [6:0] col_unflipped = hcount - pos_x;
    wire [6:0] col = facing_right
                     ? col_unflipped
                     : (SPR_W - 1 - col_unflipped);   // horizontal flip
                
     // Linear address for 126x126 BRAM (0..15875)
    wire [13:0] spr_addr = row * SPR_W + col;
    // SPR_W = 126, so 126*126 = 15876 < 2^14

    // === ROM outputs === 
   // Attack1 frames (18 frames collapsed into 7 ROMs)
    wire [11:0] atk1_f0_rgb;
    wire [11:0] atk1_f1_rgb;
    wire [11:0] atk1_f2_rgb;
    wire [11:0] atk1_f3_rgb;
    wire [11:0] atk1_f4_rgb;
    wire [11:0] atk1_f5_rgb;
    wire [11:0] atk1_f6_rgb;
    wire [11:0] atk1_f7_rgb;
    wire [11:0] atk1_f8_rgb;
    wire [11:0] atk1_f9_rgb;
    wire [11:0] atk1_f10_rgb;
    wire [11:0] atk1_f11_rgb;
    wire [11:0] atk1_f12_rgb;
    wire [11:0] atk1_f13_rgb;
    wire [11:0] atk1_f14_rgb;
    wire [11:0] atk1_f15_rgb;
    wire [11:0] atk1_f16_rgb;
    wire [11:0] atk1_f17_rgb;
    

    // Idle frames
    wire [11:0] idle_rgb [0:9];

    // Run frames
    wire [11:0] run_rgb [0:7];

        // You already have Attack1_0_rom – instantiate it like this:
    //-----------------------------------------------------------
    // Frame 0–17 mapped to ROM indices 0–6 (monotonic ascending)
    //-----------------------------------------------------------

    // -----------------------------------------------------------
    // ATTACK1 — Use actual module names from Vivado hierarchy
    // -----------------------------------------------------------
    // 0–1 → ROM 0
    Attack1_0_rom atk1_0  (.clk(clk), .addr(spr_addr), .color(atk1_f0_rgb));
    Attack1_0_rom atk1_1  (.clk(clk), .addr(spr_addr), .color(atk1_f1_rgb));
    Attack1_0_rom atk1_2  (.clk(clk), .addr(spr_addr), .color(atk1_f2_rgb));

    // 2–4 → ROM 1
    Attack1_1_rom atk1_3  (.clk(clk), .addr(spr_addr), .color(atk1_f3_rgb));
    Attack1_1_rom atk1_4  (.clk(clk), .addr(spr_addr), .color(atk1_f4_rgb));

    // 5–7 → ROM 2 
    Attack1_2_rom atk1_5  (.clk(clk), .addr(spr_addr), .color(atk1_f5_rgb));
    Attack1_2_rom atk1_6  (.clk(clk), .addr(spr_addr), .color(atk1_f6_rgb));
    Attack1_2_rom atk1_7  (.clk(clk), .addr(spr_addr), .color(atk1_f7_rgb));

    // 8–9 → ROM 3
    Attack1_3_rom atk1_8  (.clk(clk), .addr(spr_addr), .color(atk1_f8_rgb));
    Attack1_3_rom atk1_9  (.clk(clk), .addr(spr_addr), .color(atk1_f9_rgb));

    // 10–11 → ROM 4
    Attack1_4_rom atk1_10 (.clk(clk), .addr(spr_addr), .color(atk1_f10_rgb));
    Attack1_4_rom atk1_11 (.clk(clk), .addr(spr_addr), .color(atk1_f11_rgb));

    // 12–17 → ROM 5 & 6
    Attack1_5_rom atk1_12 (.clk(clk), .addr(spr_addr), .color(atk1_f12_rgb));
    Attack1_5_rom atk1_13 (.clk(clk), .addr(spr_addr), .color(atk1_f13_rgb));
    Attack1_5_rom atk1_14 (.clk(clk), .addr(spr_addr), .color(atk1_f14_rgb));
    Attack1_5_rom atk1_15 (.clk(clk), .addr(spr_addr), .color(atk1_f15_rgb));
    Attack1_5_rom atk1_16 (.clk(clk), .addr(spr_addr), .color(atk1_f16_rgb));
    Attack1_5_rom atk1_17 (.clk(clk), .addr(spr_addr), .color(atk1_f17_rgb));

    // -----------------------------------------------------------
    // IDLE — use Idle_X_rom modules
    // -----------------------------------------------------------
    Idle_0_rom idle_0 (.clk(clk), .addr(spr_addr), .color(idle_rgb[0]));
    Idle_1_rom idle_1 (.clk(clk), .addr(spr_addr), .color(idle_rgb[1]));
    Idle_2_rom idle_2 (.clk(clk), .addr(spr_addr), .color(idle_rgb[2]));
    Idle_3_rom idle_3 (.clk(clk), .addr(spr_addr), .color(idle_rgb[3]));
    Idle_4_rom idle_4 (.clk(clk), .addr(spr_addr), .color(idle_rgb[4]));
    Idle_5_rom idle_5 (.clk(clk), .addr(spr_addr), .color(idle_rgb[5]));
    Idle_6_rom idle_6 (.clk(clk), .addr(spr_addr), .color(idle_rgb[6]));
    Idle_7_rom idle_7 (.clk(clk), .addr(spr_addr), .color(idle_rgb[7]));
    Idle_8_rom idle_8 (.clk(clk), .addr(spr_addr), .color(idle_rgb[8]));
    Idle_9_rom idle_9 (.clk(clk), .addr(spr_addr), .color(idle_rgb[9]));


    // -----------------------------------------------------------
    // RUNNING — use Run_X_rom modules
    // -----------------------------------------------------------
    Run_0_rom run_0 (.clk(clk), .addr(spr_addr), .color(run_rgb[0]));
    Run_1_rom run_1 (.clk(clk), .addr(spr_addr), .color(run_rgb[1]));
    Run_2_rom run_2 (.clk(clk), .addr(spr_addr), .color(run_rgb[2]));
    Run_3_rom run_3 (.clk(clk), .addr(spr_addr), .color(run_rgb[3]));
    Run_4_rom run_4 (.clk(clk), .addr(spr_addr), .color(run_rgb[4]));
    Run_5_rom run_5 (.clk(clk), .addr(spr_addr), .color(run_rgb[5]));
    Run_6_rom run_6 (.clk(clk), .addr(spr_addr), .color(run_rgb[6]));
    Run_7_rom run_7 (.clk(clk), .addr(spr_addr), .color(run_rgb[7]));
    

    always @(*) begin
            sprite_rgb = 12'h000;

            if (inside) begin
                case (anim_state)

                    //--------------------------------------------------
                    // IDLE: always frame 0 (or use anim_frame if desired)
                    //--------------------------------------------------
                    S_IDLE: begin
                        sprite_rgb = idle_rgb[0];
                    end

                    //--------------------------------------------------
                    // MOVE / WALK — 8-frame loop stored in run_rgb[0..7]
                    //--------------------------------------------------
                    S_MOVE: begin
                        // anim_frame is already 0..7 from player_state_anim
                        sprite_rgb = run_rgb[ anim_frame[2:0] ];
                    end

                    //--------------------------------------------------
                    // ATK1 — full 18-frame mapping to 0–6 ROMs
                    //--------------------------------------------------
                    S_ATK1: begin
                            case (anim_frame)
                                6'd0:  sprite_rgb = atk1_f0_rgb;
                                6'd1:  sprite_rgb = atk1_f1_rgb;
                                6'd2:  sprite_rgb = atk1_f2_rgb;
                                6'd3:  sprite_rgb = atk1_f3_rgb;
                                6'd4:  sprite_rgb = atk1_f4_rgb;
                                6'd5:  sprite_rgb = atk1_f5_rgb;
                                6'd6:  sprite_rgb = atk1_f6_rgb;
                                6'd7:  sprite_rgb = atk1_f7_rgb;
                                6'd8:  sprite_rgb = atk1_f8_rgb;
                                6'd9:  sprite_rgb = atk1_f9_rgb;
                                6'd10: sprite_rgb = atk1_f10_rgb;
                                6'd11: sprite_rgb = atk1_f11_rgb;
                                6'd12: sprite_rgb = atk1_f12_rgb;
                                6'd13: sprite_rgb = atk1_f13_rgb;
                                6'd14: sprite_rgb = atk1_f14_rgb;
                                6'd15: sprite_rgb = atk1_f15_rgb;
                                6'd16: sprite_rgb = atk1_f16_rgb;
                                6'd17: sprite_rgb = atk1_f17_rgb;
                                default: sprite_rgb = atk1_f0_rgb;
                            endcase
                    end
                    //--------------------------------------------------
                    // HITSTUN
                    //--------------------------------------------------
                    //S_HIT: begin
                    //  sprite_rgb = idle_rgb[0];
                    //d

                    //--------------------------------------------------
                    // Default safety
                    //--------------------------------------------------
                    default: begin
                        sprite_rgb = idle_rgb[0];
                    end
                endcase
            end
        end

    assign sprite_on = inside && (sprite_rgb != 12'h000);

endmodule
