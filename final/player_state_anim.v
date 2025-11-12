module player_state_anim (
    input  wire SCEN,
    input  wire clk,
    input  wire reset,

    // From resolver
    input  wire hitstun_active,

    // From attack module
    input  wire attack_active,
    input  wire [1:0] attack_type,
    input  wire [5:0] attack_frame,

    // From move module
    input  wire move_active,
    input  wire jump_active,
    input  wire [5:0] jump_frame,

    // from lose ? 

    // Final animation out
    output reg [3:0] anim_state,
    output reg [5:0] anim_frame
);

    // Encode states
    localparam S_IDLE   = 4'd0;
    localparam S_WALK   = 4'd1;
    localparam S_JUMP   = 4'd2;
    localparam S_ATK1   = 4'd3;
    localparam S_ATK2   = 4'd4;
    localparam S_HIT    = 4'd5;
    localparam S_LOSE   = 5'd6; 

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            anim_state <= S_IDLE;
            anim_frame <= 6'd0;
        end

        else if (SCEN) begin
            // ---------- HITSTUN TOP PRIORITY ----------
            if (hitstun_active) begin
                anim_state <= S_HIT;
                anim_frame <= 0;     // can replace with hitstun timer
            end

            // ---------- ATTACKS ----------
            else if (attack_active) begin
                anim_state <= (attack_type==2'd1) ? S_ATK1 : S_ATK2;
                anim_frame <= attack_frame;
            end

            // ---------- JUMP ----------
            else if (jump_active) begin
                anim_state <= S_JUMP;
                anim_frame <= jump_frame;
            end

            // ---------- WALK ----------
            else if (move_active) begin
                anim_state <= S_WALK;
                anim_frame <= 0; // or walk cycle if you add it
            end

            // ---------- LOSE ----------
            else if (lose_active) begin
                anim_state <= S_LOSE;
                anim_frame <= lose;              /// lose state 
            end

            // ---------- IDLE ----------
            else begin
                anim_state <= S_IDLE;
                anim_frame <= 0;
            end
        end

    end

endmodule
