//------------------------------------------------------------------------------
// Simplified game_resolver.v (matches top_twoplayers hurtbox/hitbox geometry)
//  - Uses same 40x45 red hurtbox as VGA
//  - Uses same 40x80 attack box (green) as VGA
//  - Emits 1-cycle hit_event and hitstun + knockback
//------------------------------------------------------------------------------

module game_resolver #(
    parameter POS_WIDTH = 10,

    // VGA Hurtbox (centered at sprite torso)
    parameter HURT_W = 40,
    parameter HURT_H = 45,
    parameter HURT_OFFX = 60 - (HURT_W/2),   // match pX_hurt_x0 = pos_x + 60 - W/2
    parameter HURT_OFFY = 75 - (HURT_H/2),

    // VGA Attack box
    parameter ATK_W = 40,
    parameter ATK_H = 80,
    parameter ATK_FWD = 25 + 60,             // pos_x + 25 + 60
    parameter ATK_UP  = 35 - (ATK_H/2),      // pos_y + 35 - H/2

    parameter integer HITSTUN_FRAMES = 12,
    parameter integer KB_X = 4,
    parameter integer KB_Y = -2
)(
    input  wire clk,
    input  wire reset,
    input  wire SCEN,

    // P1
    input  wire [POS_WIDTH-1:0] p1_x,
    input  wire [POS_WIDTH-1:0] p1_y,
    input  wire                 p1_face_right,
    input  wire                 p1_attack_damage,

    // P2
    input  wire [POS_WIDTH-1:0] p2_x,
    input  wire [POS_WIDTH-1:0] p2_y,
    input  wire                 p2_face_right,
    input  wire                 p2_attack_damage,

    // OUT
    output reg  p1_hit_event,
    output reg  p2_hit_event,
    output reg  p1_hitstun,
    output reg  p2_hitstun,
    output reg signed [7:0] p1_kb_dx,
    output reg signed [7:0] p1_kb_dy,
    output reg signed [7:0] p2_kb_dx,
    output reg signed [7:0] p2_kb_dy
);

    // ------------------------------------------------------------------
    // AABB helper
    // ------------------------------------------------------------------
    function automatic bit aabb_hit;
        input integer ax, ay, aw, ah;
        input integer bx, by, bw, bh;
        begin
            aabb_hit =
                (ax < bx + bw) && (bx < ax + aw) &&
                (ay < by + bh) && (by < ay + ah);
        end
    endfunction

    // ------------------------------------------------------------------
    // Hurtboxes (identical to VGA drawing)
    // ------------------------------------------------------------------
    integer p1_hx, p1_hy, p2_hx, p2_hy;

    // ------------------------------------------------------------------
    // Attack boxes (identical to VGA drawing)
    // ------------------------------------------------------------------
    integer p1_ax, p1_ay, p2_ax, p2_ay;

    reg p1_hits_p2, p2_hits_p1;

    // ----- Combinational: compute AABBs -----
    always @* begin
        // Hurtboxes from top_twoplayers
        p1_hx = p1_x + HURT_OFFX;
        p1_hy = p1_y + HURT_OFFY;
        p2_hx = p2_x + HURT_OFFX;
        p2_hy = p2_y + HURT_OFFY;

        // Attack boxes (match green boxes exactly)
        if (p1_attack_damage) begin
            p1_ax = p1_face_right ? (p1_x + ATK_FWD) : (p1_x + ATK_FWD - ATK_W);
            p1_ay = p1_y + ATK_UP;
        end else begin
            p1_ax = 0; p1_ay = 0;
        end

        if (p2_attack_damage) begin
            p2_ax = p2_face_right ? (p2_x + ATK_FWD) : (p2_x + ATK_FWD - ATK_W);
            p2_ay = p2_y + ATK_UP;
        end else begin
            p2_ax = 0; p2_ay = 0;
        end

        // Detection
        p1_hits_p2 =
            p1_attack_damage &&
            aabb_hit(p1_ax,p1_ay, ATK_W,ATK_H, p2_hx,p2_hy, HURT_W,HURT_H);

        p2_hits_p1 =
            p2_attack_damage &&
            aabb_hit(p2_ax,p2_ay, ATK_W,ATK_H, p1_hx,p1_hy, HURT_W,HURT_H);
    end

    // ------------------------------------------------------------------
    // Sequential: pulses + stun + knockback
    // ------------------------------------------------------------------
    reg [4:0] p1_stun, p2_stun; // Enough for 12 frames

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            p1_hit_event <= 0;
            p2_hit_event <= 0;
            p1_hitstun   <= 0;
            p2_hitstun   <= 0;
            p1_stun <= 0;
            p2_stun <= 0;
            p1_kb_dx <= 0; p1_kb_dy <= 0;
            p2_kb_dx <= 0; p2_kb_dy <= 0;
        end else if (SCEN) begin

            p1_hit_event <= 0;
            p2_hit_event <= 0;

            // --- P1 hits P2 ---
            if (p1_hits_p2) begin
                p2_hit_event <= 1;
                p2_hitstun   <= 1;
                p2_stun      <= HITSTUN_FRAMES;
                p2_kb_dx <= p1_face_right ? KB_X : -KB_X;
                p2_kb_dy <= KB_Y;
            end

            // --- P2 hits P1 ---
            if (p2_hits_p1) begin
                p1_hit_event <= 1;
                p1_hitstun   <= 1;
                p1_stun      <= HITSTUN_FRAMES;
                p1_kb_dx <= p2_face_right ? KB_X : -KB_X;
                p1_kb_dy <= KB_Y;
            end

            // --- stun countdown ---
            if (p1_hitstun) begin
                if (p1_stun == 0) p1_hitstun <= 0;
                else              p1_stun <= p1_stun - 1;
            end

            if (p2_hitstun) begin
                if (p2_stun == 0) p2_hitstun <= 0;
                else              p2_stun <= p2_stun - 1;
            end
        end
    end

endmodule
