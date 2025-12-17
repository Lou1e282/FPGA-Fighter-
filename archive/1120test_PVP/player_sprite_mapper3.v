module player_sprite_mapper (
    input  wire        clk,
    input  wire [9:0]  hcount,
    input  wire [9:0]  vcount,
    input  wire [9:0]  pos_x,
    input  wire [9:0]  pos_y,
    input  wire        facing_right,

    input  wire [3:0]  anim_state,
    input  wire [5:0]  anim_frame,

    output wire        sprite_on,
    output reg  [11:0] sprite_rgb
);

    localparam SPR_W = 126;
    localparam SPR_H = 126;

    localparam S_IDLE = 4'd0;
    localparam S_MOVE = 4'd1;
    localparam S_ATK1 = 4'd3;
    localparam S_HIT  = 4'd5; 

    // =====================================================
    // Base Character Sprite (follows pos_x/pos_y)
    // =====================================================
    wire inside =
        (hcount >= pos_x) && (hcount < pos_x + SPR_W) &&
        (vcount >= pos_y) && (vcount < pos_y + SPR_H);

    wire [6:0] row     = vcount - pos_y;
    wire [6:0] col_unf = hcount - pos_x;
    wire [6:0] col     = facing_right ? col_unf : (SPR_W - 1 - col_unf);
    wire [13:0] spr_addr = row * SPR_W + col;

    // =====================================================
    // Position where the character was hit (locked)
    // =====================================================
    reg [9:0] hit_x = 10'd0;
    reg [9:0] hit_y = 10'd0;

    always @(posedge clk) begin
        // latch the position at the START of the hit animation
        if (anim_state == S_HIT && anim_frame == 6'd0) begin
            hit_x <= pos_x;
            hit_y <= pos_y;
        end
    end

    // =====================================================
    // HIT effect: stays at hit_x / hit_y
    // =====================================================
    wire inside_hit =
        (hcount >= hit_x) && (hcount < hit_x + SPR_W) &&
        (vcount >= hit_y) && (vcount < hit_y + SPR_H);

    wire [6:0] row_hit     = vcount - hit_y;
    wire [6:0] col_unf_hit = hcount - hit_x;
    wire [6:0] col_hit     = facing_right ? col_unf_hit : (SPR_W - 1 - col_unf_hit);
    wire [13:0] hit_addr   = row_hit * SPR_W + col_hit;

    // =====================================================
    // RAW (unregistered) BRAM outputs
    // =====================================================
    wire [11:0] atk1_f0_rgb_raw;
    wire [11:0] atk1_f1_rgb_raw;
    wire [11:0] atk1_f2_rgb_raw;
    wire [11:0] atk1_f3_rgb_raw;
    wire [11:0] atk1_f4_rgb_raw;
    wire [11:0] atk1_f5_rgb_raw;
    wire [11:0] atk1_f6_rgb_raw;
    wire [11:0] atk1_f7_rgb_raw;
    wire [11:0] atk1_f8_rgb_raw;
    wire [11:0] atk1_f9_rgb_raw;
    wire [11:0] atk1_f10_rgb_raw;
    wire [11:0] atk1_f11_rgb_raw;
    wire [11:0] atk1_f12_rgb_raw;
    wire [11:0] atk1_f13_rgb_raw;
    wire [11:0] atk1_f14_rgb_raw;
    wire [11:0] atk1_f15_rgb_raw;
    wire [11:0] atk1_f16_rgb_raw;
    wire [11:0] atk1_f17_rgb_raw;

    wire [11:0] idle_rgb_raw [0:9];
    wire [11:0] run_rgb_raw  [0:7];
    wire [11:0] hit_rgb_raw  [0:14];

    // ============================
    // ATTACK ROMs
    // ============================
    Attack1_0_rom atk1_0  (.clk(clk), .addr(spr_addr), .color(atk1_f0_rgb_raw));
    Attack1_0_rom atk1_1  (.clk(clk), .addr(spr_addr), .color(atk1_f1_rgb_raw));
    Attack1_0_rom atk1_2  (.clk(clk), .addr(spr_addr), .color(atk1_f2_rgb_raw));
    Attack1_1_rom atk1_3  (.clk(clk), .addr(spr_addr), .color(atk1_f3_rgb_raw));
    Attack1_1_rom atk1_4  (.clk(clk), .addr(spr_addr), .color(atk1_f4_rgb_raw));
    Attack1_2_rom atk1_5  (.clk(clk), .addr(spr_addr), .color(atk1_f5_rgb_raw));
    Attack1_2_rom atk1_6  (.clk(clk), .addr(spr_addr), .color(atk1_f6_rgb_raw));
    Attack1_2_rom atk1_7  (.clk(clk), .addr(spr_addr), .color(atk1_f7_rgb_raw));
    Attack1_3_rom atk1_8  (.clk(clk), .addr(spr_addr), .color(atk1_f8_rgb_raw));
    Attack1_3_rom atk1_9  (.clk(clk), .addr(spr_addr), .color(atk1_f9_rgb_raw));
    Attack1_4_rom atk1_10 (.clk(clk), .addr(spr_addr), .color(atk1_f10_rgb_raw));
    Attack1_4_rom atk1_11 (.clk(clk), .addr(spr_addr), .color(atk1_f11_rgb_raw));
    Attack1_5_rom atk1_12 (.clk(clk), .addr(spr_addr), .color(atk1_f12_rgb_raw));
    Attack1_5_rom atk1_13 (.clk(clk), .addr(spr_addr), .color(atk1_f13_rgb_raw));
    Attack1_5_rom atk1_14 (.clk(clk), .addr(spr_addr), .color(atk1_f14_rgb_raw));
    Attack1_5_rom atk1_15 (.clk(clk), .addr(spr_addr), .color(atk1_f15_rgb_raw));
    Attack1_5_rom atk1_16 (.clk(clk), .addr(spr_addr), .color(atk1_f16_rgb_raw));
    Attack1_5_rom atk1_17 (.clk(clk), .addr(spr_addr), .color(atk1_f17_rgb_raw));

    // ============================
    // IDLE ROMs
    // ============================
    Idle_0_rom idle_0 (.clk(clk), .addr(spr_addr), .color(idle_rgb_raw[0]));
    Idle_1_rom idle_1 (.clk(clk), .addr(spr_addr), .color(idle_rgb_raw[1]));
    Idle_2_rom idle_2 (.clk(clk), .addr(spr_addr), .color(idle_rgb_raw[2]));
    Idle_3_rom idle_3 (.clk(clk), .addr(spr_addr), .color(idle_rgb_raw[3]));
    Idle_4_rom idle_4 (.clk(clk), .addr(spr_addr), .color(idle_rgb_raw[4]));
    Idle_5_rom idle_5 (.clk(clk), .addr(spr_addr), .color(idle_rgb_raw[5]));
    Idle_6_rom idle_6 (.clk(clk), .addr(spr_addr), .color(idle_rgb_raw[6]));
    Idle_7_rom idle_7 (.clk(clk), .addr(spr_addr), .color(idle_rgb_raw[7]));
    Idle_8_rom idle_8 (.clk(clk), .addr(spr_addr), .color(idle_rgb_raw[8]));
    Idle_9_rom idle_9 (.clk(clk), .addr(spr_addr), .color(idle_rgb_raw[9]));

    // ============================
    // RUN ROMs
    // ============================
    Run_0_rom run_0 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[0]));
    Run_1_rom run_1 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[1]));
    Run_2_rom run_2 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[2]));
    Run_3_rom run_3 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[3]));
    Run_4_rom run_4 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[4]));
    Run_5_rom run_5 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[5]));
    Run_6_rom run_6 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[6]));
    Run_7_rom run_7 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[7]));

    // ============================
    // HIT ROMs (use hit_addr)
    // ============================
    hit_000_rom hit_0  (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[0]));
    hit_001_rom hit_1  (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[1]));
    hit_002_rom hit_2  (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[2]));
    hit_003_rom hit_3  (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[3]));
    hit_004_rom hit_4  (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[4]));
    hit_005_rom hit_5  (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[5]));
    hit_006_rom hit_6  (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[6]));
    hit_007_rom hit_7  (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[7]));
    hit_008_rom hit_8  (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[8]));
    hit_009_rom hit_9  (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[9]));
    hit_010_rom hit_10 (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[10]));
    hit_011_rom hit_11 (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[11]));
    hit_012_rom hit_12 (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[12]));
    hit_013_rom hit_13 (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[13]));
    hit_014_rom hit_14 (.clk(clk), .addr(hit_addr), .color(hit_rgb_raw[14]));

    // =====================================================
    // PIPELINED (REGISTERED) BRAM outputs
    // =====================================================
    reg [11:0] atk1_f0_rgb, atk1_f1_rgb, atk1_f2_rgb, atk1_f3_rgb;
    reg [11:0] atk1_f4_rgb, atk1_f5_rgb, atk1_f6_rgb, atk1_f7_rgb;
    reg [11:0] atk1_f8_rgb, atk1_f9_rgb, atk1_f10_rgb, atk1_f11_rgb;
    reg [11:0] atk1_f12_rgb, atk1_f13_rgb, atk1_f14_rgb, atk1_f15_rgb;
    reg [11:0] atk1_f16_rgb, atk1_f17_rgb;

    reg [11:0] idle_rgb [0:9];
    reg [11:0] run_rgb  [0:7];
    reg [11:0] hit_rgb  [0:15];

    integer i;
    always @(posedge clk) begin
        // attack frames
        atk1_f0_rgb  <= atk1_f0_rgb_raw;
        atk1_f1_rgb  <= atk1_f1_rgb_raw;
        atk1_f2_rgb  <= atk1_f2_rgb_raw;
        atk1_f3_rgb  <= atk1_f3_rgb_raw;
        atk1_f4_rgb  <= atk1_f4_rgb_raw;
        atk1_f5_rgb  <= atk1_f5_rgb_raw;
        atk1_f6_rgb  <= atk1_f6_rgb_raw;
        atk1_f7_rgb  <= atk1_f7_rgb_raw;
        atk1_f8_rgb  <= atk1_f8_rgb_raw;
        atk1_f9_rgb  <= atk1_f9_rgb_raw;
        atk1_f10_rgb <= atk1_f10_rgb_raw;
        atk1_f11_rgb <= atk1_f11_rgb_raw;
        atk1_f12_rgb <= atk1_f12_rgb_raw;
        atk1_f13_rgb <= atk1_f13_rgb_raw;
        atk1_f14_rgb <= atk1_f14_rgb_raw;
        atk1_f15_rgb <= atk1_f15_rgb_raw;
        atk1_f16_rgb <= atk1_f16_rgb_raw;
        atk1_f17_rgb <= atk1_f17_rgb_raw;

        // idle frames
        for (i = 0; i < 10; i = i + 1)
            idle_rgb[i] <= idle_rgb_raw[i];

        // run frames
        for (i = 0; i < 8; i = i + 1)
            run_rgb[i] <= run_rgb_raw[i];

        // hit frames
        for (i = 0; i < 15; i = i + 1)
            hit_rgb[i] <= hit_rgb_raw[i];
    end

    // =====================================================
    // STATE / FRAME SELECTOR + HIT OVERLAY
    // =====================================================
    reg [11:0] base_rgb;
    reg [11:0] hit_overlay_rgb;

    always @(*) begin
        base_rgb        = 12'h000;
        hit_overlay_rgb = 12'h000;
        sprite_rgb      = 12'h000;

        // BASE SPRITE (follows pos_x/pos_y)
        if (inside) begin
            case (anim_state)
                S_IDLE:
                    base_rgb = idle_rgb[0];   // could animate by frame if desired

                S_MOVE:
                    base_rgb = run_rgb[ anim_frame[2:0] ];

                S_ATK1:
                    case (anim_frame)
                        6'd0:  base_rgb = atk1_f0_rgb;
                        6'd1:  base_rgb = atk1_f1_rgb;
                        6'd2:  base_rgb = atk1_f2_rgb;
                        6'd3:  base_rgb = atk1_f3_rgb;
                        6'd4:  base_rgb = atk1_f4_rgb;
                        6'd5:  base_rgb = atk1_f5_rgb;
                        6'd6:  base_rgb = atk1_f6_rgb;
                        6'd7:  base_rgb = atk1_f7_rgb;
                        6'd8:  base_rgb = atk1_f8_rgb;
                        6'd9:  base_rgb = atk1_f9_rgb;
                        6'd10: base_rgb = atk1_f10_rgb;
                        6'd11: base_rgb = atk1_f11_rgb;
                        6'd12: base_rgb = atk1_f12_rgb;
                        6'd13: base_rgb = atk1_f13_rgb;
                        6'd14: base_rgb = atk1_f14_rgb;
                        6'd15: base_rgb = atk1_f15_rgb;
                        6'd16: base_rgb = atk1_f16_rgb;
                        6'd17: base_rgb = atk1_f17_rgb;
                        default: base_rgb = atk1_f0_rgb;
                    endcase

                default:
                    base_rgb = idle_rgb[0];
            endcase
        end

        // HIT OVERLAY (stays at hit_x/hit_y)
        if (inside_hit && anim_state == S_HIT) begin
            hit_overlay_rgb = hit_rgb[ anim_frame[3:0] ];
        end

        // LAYERING
        if (hit_overlay_rgb != 12'h000)
            sprite_rgb = hit_overlay_rgb;  // hit effect on top
        else
            sprite_rgb = base_rgb;         // normal sprite
    end

    assign sprite_on = (sprite_rgb != 12'h000) && (inside || inside_hit);

endmodule
