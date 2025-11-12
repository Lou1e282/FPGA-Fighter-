module player_core #(
    parameter POS_WIDTH = 10
)(
    input  wire clk,
    input  wire reset,
    input  wire SCEN,

    // raw input
    input  wire move_left,
    input  wire move_right,
    input  wire jump,
    input  wire attack1,
    input  wire attack2,

    // from resolver
    input  wire hitstun_active,

    // opponent x position for facing logic
    input  wire [POS_WIDTH-1:0] opponent_x,

    // outputs
    output wire [POS_WIDTH-1:0] pos_x,
    output wire [POS_WIDTH-1:0] pos_y,
    output wire face_right,
    output wire attack_active,
    output wire [1:0] attack_type,
    output wire [5:0] attack_frame,
    output wire [11:0] sprite_id
);

    wire move_enable, attack_enable;
    wire move_active, jump_active;
    wire [5:0] jump_frame;

    // ---------------- PLAYER_STATE ----------------
    player_state pst (
        .clk(clk), .reset(reset), .SCEN(SCEN),
        .move_left(move_left), .move_right(move_right),
        .jump(jump), .attack1(attack1), .attack2(attack2),
        .hitstun_active(hitstun_active),
        .attack_busy(attack_active),
        .jump_active(jump_active),
        .move_enable(move_enable),
        .attack_enable(attack_enable)
    );

    // ---------------- MOVE ----------------
    player_move pmv (
        .clk(clk), .reset(reset), .SCEN(SCEN),
        .move_enable(move_enable),
        .move_left(move_left), .move_right(move_right),
        .jump(jump),
        .opponent_x(opponent_x),
        .pos_x(pos_x), .pos_y(pos_y),
        .x_lock(),
        .facing_right(face_right),
        .move_active(move_active),
        .jump_active(jump_active)
    );

    // ---------------- ATTACK ----------------
    player_attack patk (
        .clk(clk), .reset(reset), .SCEN(SCEN),
        .attack_enable(attack_enable),
        .attack1(attack1), .attack2(attack2),
        .attack_active(attack_active),
        .attack_type(attack_type),
        .attack_frame(attack_frame),
        .attack_busy()
    );

    // ---------------- ANIMATION ----------------
    wire [3:0] anim_state;
    wire [5:0] anim_frame;

    player_state_anim pana (
        .clk(clk), .reset(reset), .SCEN(SCEN),
        .hitstun_active(hitstun_active),
        .attack_active(attack_active),
        .attack_type(attack_type),
        .attack_frame(attack_frame),
        .move_active(move_active),
        .jump_active(jump_active),
        .jump_frame(6'd0),
        .anim_state(anim_state),
        .anim_frame(anim_frame)
    );

    // ---------------- SPRITE MAP ----------------
    sprite_mapper sm (
        .anim_state(anim_state),
        .anim_frame(anim_frame),
        .sprite_id(sprite_id)
    );

endmodule
