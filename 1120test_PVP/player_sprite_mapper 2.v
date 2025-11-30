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

    // ============================
    // Inside bounding box
    // ============================
    wire inside =
        (hcount >= pos_x) && (hcount < pos_x + SPR_W) &&
        (vcount >= pos_y) && (vcount < pos_y + SPR_H);

    wire [6:0] row = vcount - pos_y;
    wire [6:0] col_unf = hcount - pos_x;
    wire [6:0] col = facing_right ? col_unf : (SPR_W - 1 - col_unf);

    wire [13:0] spr_addr = row * SPR_W + col;

    // =====================================================
    // RAW (unregistered) BRAM outputs — same names as yours
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

    // ============================
    // Instantiate ROMs (unchanged)
    // ============================

    // ATTACK ROMs
    Attack1_0_rom atk1_0 (.clk(clk), .addr(spr_addr), .color(atk1_f0_rgb_raw));
    Attack1_0_rom atk1_1 (.clk(clk), .addr(spr_addr), .color(atk1_f1_rgb_raw));
    Attack1_0_rom atk1_2 (.clk(clk), .addr(spr_addr), .color(atk1_f2_rgb_raw));
    Attack1_1_rom atk1_3 (.clk(clk), .addr(spr_addr), .color(atk1_f3_rgb_raw));
    Attack1_1_rom atk1_4 (.clk(clk), .addr(spr_addr), .color(atk1_f4_rgb_raw));
    Attack1_2_rom atk1_5 (.clk(clk), .addr(spr_addr), .color(atk1_f5_rgb_raw));
    Attack1_2_rom atk1_6 (.clk(clk), .addr(spr_addr), .color(atk1_f6_rgb_raw));
    Attack1_2_rom atk1_7 (.clk(clk), .addr(spr_addr), .color(atk1_f7_rgb_raw));
    Attack1_3_rom atk1_8 (.clk(clk), .addr(spr_addr), .color(atk1_f8_rgb_raw));
    Attack1_3_rom atk1_9 (.clk(clk), .addr(spr_addr), .color(atk1_f9_rgb_raw));
    Attack1_4_rom atk1_10 (.clk(clk), .addr(spr_addr), .color(atk1_f10_rgb_raw));
    Attack1_4_rom atk1_11 (.clk(clk), .addr(spr_addr), .color(atk1_f11_rgb_raw));
    Attack1_5_rom atk1_12 (.clk(clk), .addr(spr_addr), .color(atk1_f12_rgb_raw));
    Attack1_5_rom atk1_13 (.clk(clk), .addr(spr_addr), .color(atk1_f13_rgb_raw));
    Attack1_5_rom atk1_14 (.clk(clk), .addr(spr_addr), .color(atk1_f14_rgb_raw));
    Attack1_5_rom atk1_15 (.clk(clk), .addr(spr_addr), .color(atk1_f15_rgb_raw));
    Attack1_5_rom atk1_16 (.clk(clk), .addr(spr_addr), .color(atk1_f16_rgb_raw));
    Attack1_5_rom atk1_17 (.clk(clk), .addr(spr_addr), .color(atk1_f17_rgb_raw));

    // IDLE ROMs
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

    // RUN ROMs
    Run_0_rom run_0 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[0]));
    Run_1_rom run_1 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[1]));
    Run_2_rom run_2 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[2]));
    Run_3_rom run_3 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[3]));
    Run_4_rom run_4 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[4]));
    Run_5_rom run_5 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[5]));
    Run_6_rom run_6 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[6]));
    Run_7_rom run_7 (.clk(clk), .addr(spr_addr), .color(run_rgb_raw[7]));

    // ===================================
    // PIPELINED (REGISTERED) BRAM outputs
    // ===================================
    reg [11:0] atk1_f0_rgb, atk1_f1_rgb, atk1_f2_rgb, atk1_f3_rgb;
    reg [11:0] atk1_f4_rgb, atk1_f5_rgb, atk1_f6_rgb, atk1_f7_rgb;
    reg [11:0] atk1_f8_rgb, atk1_f9_rgb, atk1_f10_rgb, atk1_f11_rgb;
    reg [11:0] atk1_f12_rgb, atk1_f13_rgb, atk1_f14_rgb, atk1_f15_rgb;
    reg [11:0] atk1_f16_rgb, atk1_f17_rgb;

    reg [11:0] idle_rgb [0:9];
    reg [11:0] run_rgb  [0:7];

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
    end

    // ===================================
    // STATE / FRAME SELECTOR
    // ===================================
    always @(*) begin
        sprite_rgb = 12'h000;

        if (inside) begin
            case (anim_state)

                S_IDLE:
                    sprite_rgb = idle_rgb[0];

                S_MOVE:
                    sprite_rgb = run_rgb[ anim_frame[2:0] ];

                S_ATK1:
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

                default:
                    sprite_rgb = idle_rgb[0];
            endcase
        end
    end

    assign sprite_on = inside && (sprite_rgb != 12'h000);

endmodule
