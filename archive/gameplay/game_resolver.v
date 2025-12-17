module game_resolver #(
    parameter POS_WIDTH = 10   // TODO
)(
    input  wire [2:0] p1_action,
    input  wire [2:0] p2_action,

    /////////// two attack moves //////////////
    input  wire [POS_WIDTH-1:0] p1_hitbox1_left, 
    input  wire [POS_WIDTH-1:0] p1_hitbox1_right,
    input  wire [POS_WIDTH-1:0] p1_hitbox2_left, 
    input  wire [POS_WIDTH-1:0] p1_hitbox2_right,
    input  wire [POS_WIDTH-1:0] p1_hurtbox_left,
    input  wire [POS_WIDTH-1:0] p1_hurtbox_right,

    input  wire [POS_WIDTH-1:0] p2_hitbox1_left,
    input  wire [POS_WIDTH-1:0] p2_hitbox1_right,
    input  wire [POS_WIDTH-1:0] p2_hitbox2_left,
    input  wire [POS_WIDTH-1:0] p2_hitbox2_right,
    input  wire [POS_WIDTH-1:0] p2_hurtbox_left,
    input  wire [POS_WIDTH-1:0] p2_hurtbox_right,

    output reg hit_p1_to_p2,
    output reg hit_p2_to_p1
);
     // State encoding
    localparam IDLE   = 3'b000;
    localparam MOVE   = 3'b001;
    localparam JUMP   = 3'b010;
    localparam BLOCK  = 3'b011;
    localparam ATTACK1 = 3'b100; 
    localparam ATTACK2 = 3'b101;
    localparam HIT    = 3'b111;



    //////////// 1 attacks 2
    wire overlap_12 = ((p1_hitbox1_right || p1_hitbox2_right) >= p2_hurtbox_left) &&
                      ((p1_hitbox1_left || p1_hitbox2_left) <= p2_hurtbox_right);
    wire overlap_21 = ((p2_hitbox1_right || p2_hitbox2_right) >= p1_hurtbox_left) &&
                      ((p2_hitbox1_left || p2_hitbox2_left)  <= p1_hurtbox_right);

    //////////// 2 attacks 1
    always @(*) begin
        hit_p1_to_p2 = 0;
        hit_p2_to_p1 = 0;

        ///////// Player 1 attacks Player 2
        if (overlap_12 && p1_action == (ATTACK1 || ATTACK2) && p2_action != BLOCK)
            hit_p1_to_p2 = 1;

        ///////// Player 2 attacks Player 1
        if (overlap_21 && p2_action == (ATTACK1 || ATTACK2) && p1_action != BLOCK)
            hit_p2_to_p1 = 1;
    end
endmodule
