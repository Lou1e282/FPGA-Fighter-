//------------------------------------------------------------------------------
// game_resolver.v  (2 players)
//  - Final authority on inter-player outcomes
//  - Detects AABB overlaps between ATTACK hitbox and opponent HURTBOX
//  - On hit: emits 1-cycle hit_event, starts hitstun timer, outputs knockback
//  - "Being hit overrides everything" => drive hitstun_active high
//  - Attack/Move/Idle priority is handled upstream in player_state;
//    resolver only reports collisions & consequences.
//------------------------------------------------------------------------------

module game_resolver #(
    // Coordinate & timing
    parameter POS_WIDTH         = 10,
    parameter integer HITSTUN_FRAMES_LIGHT = 12,
    parameter integer HITSTUN_FRAMES_HEAVY = 20,

    // Generic sizes (pixels). Tune per character as needed.
    parameter integer HURT_W = 16,  // centered on (pos_x,pos_y) or biased by HURT_OFF*
    parameter integer HURT_H = 28,
    parameter integer HURT_OFFX = -8,   // shift relative to pos_x (left-biased a bit)
    parameter integer HURT_OFFY = -28,  // put box above feet (pos is usually feet)
    // Attack 1
    parameter integer ATK1_W = 18,
    parameter integer ATK1_H = 12,
    parameter integer ATK1_FWD = 14,    // forward reach from body
    parameter integer ATK1_UP  = -16,   // vertical offset from feet
    // Attack 2
    parameter integer ATK2_W = 22,
    parameter integer ATK2_H = 14,
    parameter integer ATK2_FWD = 20,
    parameter integer ATK2_UP  = -12,

    // Knockback magnitudes (pixels per frame on integration side)
    parameter integer KB_LIGHT_X = 3,
    parameter integer KB_LIGHT_Y = -2,
    parameter integer KB_HEAVY_X = 5,
    parameter integer KB_HEAVY_Y = -3
)(
    input  wire clk,
    input  wire reset,
    input  wire SCEN,

    // ---------------- P1 inputs ----------------
    input  wire [POS_WIDTH-1:0] p1_x,
    input  wire [POS_WIDTH-1:0] p1_y,
    input  wire                 p1_face_right,

    input  wire                 p1_attack_active,
    input  wire [1:0]           p1_attack_type,   // 0:none, 1:ATK1, 2:ATK2
    input  wire [5:0]           p1_attack_frame,  // for per-frame windows if desired

    // ---------------- P2 inputs ----------------
    input  wire [POS_WIDTH-1:0] p2_x,
    input  wire [POS_WIDTH-1:0] p2_y,
    input  wire                 p2_face_right,

    input  wire                 p2_attack_active,
    input  wire [1:0]           p2_attack_type,   // 0:none, 1:ATK1, 2:ATK2
    input  wire [5:0]           p2_attack_frame,

    // ---------------- Outputs to players / UI ----------------
    output reg                  p1_hit_event,     // 1-cycle on new hit
    output reg                  p2_hit_event,     // 1-cycle on new hit
    output reg                  p1_hitstun_active,
    output reg                  p2_hitstun_active,

    // Simple knockback “impulse” vectors (apply in your move/physics or state)
    output reg  signed [7:0]    p1_kb_dx,
    output reg  signed [7:0]    p1_kb_dy,
    output reg  signed [7:0]    p2_kb_dx,
    output reg  signed [7:0]    p2_kb_dy

    // (Optional: expose damage, HP, round/KO here)
);

    // ---------------- Internal: hitstun timers ----------------
    localparam HCW = $clog2((HITSTUN_FRAMES_HEAVY>1)?HITSTUN_FRAMES_HEAVY:2);    //// hitstun
    reg [HCW-1:0] p1_stun_cnt, p2_stun_cnt;

    // ---------------- AABB helper ----------------
    function automatic bit aabb_overlap;
        input integer ax, ay, aw, ah;
        input integer bx, by, bw, bh;
        begin
            aabb_overlap = (ax < bx + bw) && (bx < ax + aw) &&
                           (ay < by + bh) && (by < ay + ah);
        end
    endfunction

    // ---------------- Build HURTBOX (centered/bias on pos) ----------------
    // For robustness, use integers internally.
    integer p1_hx, p1_hy, p2_hx, p2_hy;

    // ---------------- Build ATTACK hitboxes per player ----------------
    integer p1_ax, p1_ay, p1_aw, p1_ah;
    integer p2_ax, p2_ay, p2_aw, p2_ah;

    // Decode attack strength for stun/knockback selection
    wire p1_light = (p1_attack_type == 2'd1);
    wire p1_heavy = (p1_attack_type == 2'd2);
    wire p2_light = (p2_attack_type == 2'd1);
    wire p2_heavy = (p2_attack_type == 2'd2);

    // Overlap booleans (combinational)
    reg p1_hits_p2, p2_hits_p1;

    // ---------------- Combinational region: rectangles & overlap ----------------
    always @* begin
        // HURTBOX: top-left corner from (pos_x,pos_y) + offsets
        p1_hx = $signed(p1_x) + HURT_OFFX;
        p1_hy = $signed(p1_y) + HURT_OFFY;
        p2_hx = $signed(p2_x) + HURT_OFFX;
        p2_hy = $signed(p2_y) + HURT_OFFY;

        // Defaults (no attack)
        p1_ax = 0; p1_ay = 0; p1_aw = 0; p1_ah = 0;
        p2_ax = 0; p2_ay = 0; p2_aw = 0; p2_ah = 0;

        // Build P1 attack box if active
        if (p1_attack_active && (p1_attack_type != 2'd0)) begin
            unique case (p1_attack_type)
                2'd1: begin p1_aw=ATK1_W; p1_ah=ATK1_H;
                              p1_ax = $signed(p1_x) + (p1_face_right ? +ATK1_FWD : -(ATK1_FWD+ATK1_W));
                              p1_ay = $signed(p1_y) + ATK1_UP;
                      end
                2'd2: begin p1_aw=ATK2_W; p1_ah=ATK2_H;
                              p1_ax = $signed(p1_x) + (p1_face_right ? +ATK2_FWD : -(ATK2_FWD+ATK2_W));
                              p1_ay = $signed(p1_y) + ATK2_UP;
                      end
                default: begin p1_aw=0; p1_ah=0; p1_ax=0; p1_ay=0; end
            endcase
        end

        // Build P2 attack box if active
        if (p2_attack_active && (p2_attack_type != 2'd0)) begin
            unique case (p2_attack_type)
                2'd1: begin p2_aw=ATK1_W; p2_ah=ATK1_H;
                              p2_ax = $signed(p2_x) + (p2_face_right ? +ATK1_FWD : -(ATK1_FWD+ATK1_W));
                              p2_ay = $signed(p2_y) + ATK1_UP;
                      end
                2'd2: begin p2_aw=ATK2_W; p2_ah=ATK2_H;
                              p2_ax = $signed(p2_x) + (p2_face_right ? +ATK2_FWD : -(ATK2_FWD+ATK2_W));
                              p2_ay = $signed(p2_y) + ATK2_UP;
                      end
                default: begin p2_aw=0; p2_ah=0; p2_ax=0; p2_ay=0; end
            endcase
        end

        // Overlap checks (attacker hitbox vs defender hurtbox)
        p1_hits_p2 = (p1_aw>0) && aabb_overlap(p1_ax, p1_ay, p1_aw, p1_ah,
                                              p2_hx, p2_hy, HURT_W, HURT_H);
        p2_hits_p1 = (p2_aw>0) && aabb_overlap(p2_ax, p2_ay, p2_aw, p2_ah,
                                              p1_hx, p1_hy, HURT_W, HURT_H);
    end

    // ---------------- Sequential: events, stun, knockback ----------------
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            p1_hit_event      <= 1'b0;
            p2_hit_event      <= 1'b0;
            p1_hitstun_active <= 1'b0;
            p2_hitstun_active <= 1'b0;
            p1_stun_cnt       <= '0;
            p2_stun_cnt       <= '0;
            p1_kb_dx <= '0; p1_kb_dy <= '0;
            p2_kb_dx <= '0; p2_kb_dy <= '0;
        end else if (SCEN) begin
            // default: clear 1-cycle pulses
            p1_hit_event <= 1'b0;
            p2_hit_event <= 1'b0;

            // --- New hits (trade allowed) ---
            if (p1_hits_p2) begin
                p2_hit_event      <= 1'b1;
                p2_hitstun_active <= 1'b1;
                p2_stun_cnt       <= p1_heavy ? HITSTUN_FRAMES_HEAVY[HCW-1:0]
                                              : HITSTUN_FRAMES_LIGHT[HCW-1:0];
                // Knockback applied to defender (P2) away from P1
                p2_kb_dx <= p1_face_right ? + (p1_heavy ? KB_HEAVY_X : KB_LIGHT_X)
                                          : - (p1_heavy ? KB_HEAVY_X : KB_LIGHT_X);
                p2_kb_dy <= (p1_heavy ? KB_HEAVY_Y : KB_LIGHT_Y);
            end
            if (p2_hits_p1) begin
                p1_hit_event      <= 1'b1;
                p1_hitstun_active <= 1'b1;
                p1_stun_cnt       <= p2_heavy ? HITSTUN_FRAMES_HEAVY[HCW-1:0]
                                              : HITSTUN_FRAMES_LIGHT[HCW-1:0];
                p1_kb_dx <= p2_face_right ? + (p2_heavy ? KB_HEAVY_X : KB_LIGHT_X)
                                          : - (p2_heavy ? KB_HEAVY_X : KB_LIGHT_X);
                p1_kb_dy <= (p2_heavy ? KB_HEAVY_Y : KB_LIGHT_Y);
            end

            // --- Count down stun (being hit overrides everything) ---
            if (p1_hitstun_active) begin
                if (p1_stun_cnt == 0) p1_hitstun_active <= 1'b0;
                else                  p1_stun_cnt       <= p1_stun_cnt - 1'b1;
            end
            if (p2_hitstun_active) begin
                if (p2_stun_cnt == 0) p2_hitstun_active <= 1'b0;
                else                  p2_stun_cnt       <= p2_stun_cnt - 1'b1;
            end
        end
    end
endmodule
