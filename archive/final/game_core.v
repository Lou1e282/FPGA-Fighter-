// ---------------- Instantiate core game logic  ---------- 

module game_core (
    input wire clk,
    input wire reset,
    input wire SCEN,

    // P1 inputs
    input wire p1_left,
    input wire p1_right,
    input wire p1_jump,
    input wire p1_atk1,
    input wire p1_atk2,

    // P2 inputs
    input wire p2_left,
    input wire p2_right,
    input wire p2_jump,
    input wire p2_atk1,
    input wire p2_atk2,

    // VGA out
    output wire [11:0] p1_sprite_id,
    output wire [11:0] p2_sprite_id,
    output wire [9:0]  p1_x, p1_y,
    output wire [9:0]  p2_x, p2_y
);

    wire p1_face, p2_face;
    wire p1_attack_active, p2_attack_active;
    wire [1:0] p1_attack_type, p2_attack_type;
    wire [5:0] p1_attack_frame, p2_attack_frame;

    wire p1_hitstun, p2_hitstun;

    // -------------------- PLAYER 1 --------------------
    player_core P1 (
        .clk(clk), .reset(reset), .SCEN(SCEN),
        .move_left(p1_left), .move_right(p1_right),
        .jump(p1_jump), .attack1(p1_atk1), .attack2(p1_atk2),
        .hitstun_active(p1_hitstun),
        .opponent_x(p2_x),
        .pos_x(p1_x), .pos_y(p1_y),
        .face_right(p1_face),
        .attack_active(p1_attack_active),
        .attack_type(p1_attack_type),
        .attack_frame(p1_attack_frame),
        .sprite_id(p1_sprite_id)
    );

    // -------------------- PLAYER 2 --------------------
    player_core P2 (
        .clk(clk), .reset(reset), .SCEN(SCEN),
        .move_left(p2_left), .move_right(p2_right),
        .jump(p2_jump), .attack1(p2_atk1), .attack2(p2_atk2),
        .hitstun_active(p2_hitstun),
        .opponent_x(p1_x),
        .pos_x(p2_x), .pos_y(p2_y),
        .face_right(p2_face),
        .attack_active(p2_attack_active),
        .attack_type(p2_attack_type),
        .attack_frame(p2_attack_frame),
        .sprite_id(p2_sprite_id)
    );

    // -------------------- RESOLVER --------------------
    game_resolver RES (
        .clk(clk), .reset(reset), .SCEN(SCEN),
        .p1_x(p1_x), .p1_y(p1_y), .p1_face_right(p1_face),
        .p1_attack_active(p1_attack_active),
        .p1_attack_type(p1_attack_type),
        .p1_attack_frame(p1_attack_frame),
        .p2_x(p2_x), .p2_y(p2_y), .p2_face_right(p2_face),
        .p2_attack_active(p2_attack_active),
        .p2_attack_type(p2_attack_type),
        .p2_attack_frame(p2_attack_frame),
        .p1_hit_event(), .p2_hit_event(),
        .p1_hitstun_active(p1_hitstun),
        .p2_hitstun_active(p2_hitstun)
    );

endmodule
