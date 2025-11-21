module player_state_anim (
    input  wire        SCEN,
    input  wire        clk,
    input  wire        reset,

    // From resolver
    input  wire        hitstun_active,

    // From attack module
    input  wire        attack_active,
    input  wire [5:0]  attack_frame,   // 0..17 for ATK1

    // From move module
    input  wire        move_active,
    input  wire        jump_active,    // ignored (no jump anim)

    // Output to sprite mapper
    output reg  [3:0]  anim_state,
    output reg  [5:0]  anim_frame
);

    // Animation state encoding
    localparam S_IDLE = 4'd0;
    localparam S_MOVE = 4'd1;
    localparam S_ATK1 = 4'd3;
    localparam S_HIT  = 4'd5;

    // Move/walk loop (your run sprite count = 8 frames)
    reg [5:0] walk_frame;
    localparam WALK_LAST = 6'd7;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            anim_state <= S_IDLE;
            anim_frame <= 6'd0;
            walk_frame <= 6'd0;
        end
        else if (SCEN) begin

            //------------------------------------------------------------
            // Walk frame counter updates ONLY when actually walking
            //------------------------------------------------------------
            if (move_active && !attack_active && !hitstun_active) begin
                walk_frame <= (walk_frame == WALK_LAST)
                              ? 6'd0
                              : walk_frame + 1'b1;
            end
            else begin
                walk_frame <= 6'd0;
            end

            //------------------------------------------------------------
            // PRIORITY: HIT > ATTACK > MOVE > IDLE
            //------------------------------------------------------------
            if (hitstun_active) begin
                anim_state <= S_HIT;
                anim_frame <= 6'd0;
            end

            else if (attack_active) begin
                anim_state <= S_ATK1;
                anim_frame <= attack_frame;   // 0..17 from attack module
            end

            else if (move_active) begin
                anim_state <= S_MOVE;
                anim_frame <= walk_frame;     // 0..7 → Run_0..Run_7
            end

            else begin
                anim_state <= S_IDLE;
                anim_frame <= 6'd0;
            end
        end
    end
endmodule
