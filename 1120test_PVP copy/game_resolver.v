//------------------------------------------------------------------------------
// game_resolver.v  (2 players, single attack type)
//  - Detects single attack vs opponent hurtbox
//  - Emits 1-cycle hit_event, hitstun, knockback
//  - No heavy/light logic, no HP, no multi-duration stun
//------------------------------------------------------------------------------

module game_resolver #(
    parameter POS_WIDTH = 10,

    // Stun duration
    parameter integer HITSTUN_FRAMES = 12,

    // Hurtbox (center-biased around pos_x,pos_y)
    parameter integer HURT_W = 16,
    parameter integer HURT_H = 28,
    parameter integer HURT_OFFX = -8,
    parameter integer HURT_OFFY = -28,

    // Single attack hitbox
    parameter integer ATK_W = 20,
    parameter integer ATK_H = 12,
    parameter integer ATK_FWD = 16,
    parameter integer ATK_UP  = -16,

    // Knockback (same for all hits)
    parameter integer KB_X = 4,
    parameter integer KB_Y = -2
)(
    input  wire clk,
    input  wire reset,
    input  wire SCEN,

    // --- P1 ---
    input  wire [POS_WIDTH-1:0] p1_x,
    input  wire [POS_WIDTH-1:0] p1_y,
    input  wire                 p1_face_right,

    input  wire                 p1_attack_active,

    // --- P2 ---
    input  wire [POS_WIDTH-1:0] p2_x,
    input  wire [POS_WIDTH-1:0] p2_y,
    input  wire                 p2_face_right,

    input  wire                 p2_attack_active,

    // --- outputs ---
    output reg                  p1_hit_event,
    output reg                  p2_hit_event,
    output reg                  p1_hitstun_active,
    output reg                  p2_hitstun_active,

    output reg  signed [7:0]    p1_kb_dx,
    output reg  signed [7:0]    p1_kb_dy,
    output reg  signed [7:0]    p2_kb_dx,
    output reg  signed [7:0]    p2_kb_dy
);

    // Stun counter width
    localparam HCW = $clog2((HITSTUN_FRAMES>1)?HITSTUN_FRAMES:2);
    reg [HCW-1:0] p1_stun_cnt, p2_stun_cnt;

    // AABB overlap
    function automatic bit aabb_overlap;
        input integer ax, ay, aw, ah;
        input integer bx, by, bw, bh;
        begin
            aabb_overlap = (ax < bx + bw) && (bx < ax + aw) &&
                           (ay < by + bh) && (by < ay + ah);
        end
    endfunction

    // Hurtboxes
    integer p1_hx, p1_hy;
    integer p2_hx, p2_hy;

    // Attack boxes
    integer p1_ax, p1_ay, p1_aw, p1_ah;
    integer p2_ax, p2_ay, p2_aw, p2_ah;

    reg p1_hits_p2, p2_hits_p1;

    // --- Combinational ---
    always @* begin
        // Hurtboxes
        p1_hx = $signed(p1_x) + HURT_OFFX;
        p1_hy = $signed(p1_y) + HURT_OFFY;
        p2_hx = $signed(p2_x) + HURT_OFFX;
        p2_hy = $signed(p2_y) + HURT_OFFY;

        // Defaults
        p1_aw=0; p1_ah=0; p1_ax=0; p1_ay=0;
        p2_aw=0; p2_ah=0; p2_ax=0; p2_ay=0;

        // Single attack type
        if (p1_attack_active) begin
            p1_aw = ATK_W; 
            p1_ah = ATK_H;
            p1_ax = $signed(p1_x) + (p1_face_right ? +ATK_FWD : -(ATK_FWD+ATK_W));
            p1_ay = $signed(p1_y) + ATK_UP;
        end

        if (p2_attack_active) begin
            p2_aw = ATK_W;
            p2_ah = ATK_H;
            p2_ax = $signed(p2_x) + (p2_face_right ? +ATK_FWD : -(ATK_FWD+ATK_W));
            p2_ay = $signed(p2_y) + ATK_UP;
        end

        // Overlap
        p1_hits_p2 = (p1_aw>0) && aabb_overlap(p1_ax, p1_ay, p1_aw, p1_ah,
                                              p2_hx, p2_hy, HURT_W, HURT_H);

        p2_hits_p1 = (p2_aw>0) && aabb_overlap(p2_ax, p2_ay, p2_aw, p2_ah,
                                              p1_hx, p1_hy, HURT_W, HURT_H);
    end

    // --- Sequential: events, stun, knockback ---
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            p1_hit_event      <= 0;
            p2_hit_event      <= 0;
            p1_hitstun_active <= 0;
            p2_hitstun_active <= 0;
            p1_stun_cnt       <= 0;
            p2_stun_cnt       <= 0;
            p1_kb_dx <= 0; p1_kb_dy <= 0;
            p2_kb_dx <= 0; p2_kb_dy <= 0;

        end else if (SCEN) begin
            // clear one-cycle pulses
            p1_hit_event <= 0;
            p2_hit_event <= 0;

            // --- P1 hits P2 ---
            if (p1_hits_p2) begin
                p2_hit_event      <= 1;
                p2_hitstun_active <= 1;
                p2_stun_cnt       <= HITSTUN_FRAMES[HCW-1:0];

                p2_kb_dx <= p1_face_right ? +KB_X : -KB_X;
                p2_kb_dy <= KB_Y;
            end

            // --- P2 hits P1 ---
            if (p2_hits_p1) begin
                p1_hit_event      <= 1;
                p1_hitstun_active <= 1;
                p1_stun_cnt       <= HITSTUN_FRAMES[HCW-1:0];

                p1_kb_dx <= p2_face_right ? +KB_X : -KB_X;
                p1_kb_dy <= KB_Y;
            end

            // --- Stun countdown ---
            if (p1_hitstun_active) begin
                if (p1_stun_cnt == 0) p1_hitstun_active <= 0;
                else                  p1_stun_cnt <= p1_stun_cnt - 1;
            end

            if (p2_hitstun_active) begin
                if (p2_stun_cnt == 0) p2_hitstun_active <= 0;
                else                  p2_stun_cnt <= p2_stun_cnt - 1;
            end
        end
    end
endmodule
