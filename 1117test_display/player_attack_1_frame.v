//////////////////////////////////////////////////////////////
// player_attack
// - Only ATK1 supported
// - One-shot trigger (attack1 pulse)
// - attack_busy = whole attack animation
// - attack_active = hitbox window
// - attack_frame = 0..17 for sprite animation
//////////////////////////////////////////////////////////////

module player_attack #(
    parameter integer ATK_TOTAL_FRAMES = 18,
    parameter integer ATK_ACTIVE_START = 4,
    parameter integer ATK_ACTIVE_END   = 10
)(
    input  wire clk,
    input  wire reset,
    input  wire SCEN,            // 1 pulse per frame
    input  wire attack_enable,

    input  wire attack1,         // one-shot button pulse

    output reg        attack_active,  // hitbox window
    output reg        attack_busy,    // entire attack animation
    output reg [1:0]  attack_type,    // always 1 for now
    output reg [5:0]  attack_frame    // 0..17 for sprite animation
);

    // Internal animation counter
    reg [5:0] acnt;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            attack_active <= 1'b0;
            attack_busy   <= 1'b0;
            attack_type   <= 2'd0;
            attack_frame  <= 6'd0;
            acnt          <= 6'd0;
        end

        else if (SCEN && attack_enable) begin
            // default every frame
            attack_active <= 1'b0;

            //------------------------------------------------
            // NOT IN ATTACK → CAN START
            //------------------------------------------------
            if (!attack_busy) begin
                acnt         <= 6'd0;
                attack_frame <= 6'd0;

                if (attack1) begin
                    attack_busy <= 1'b1;
                    attack_type <= 2'd1;  // ATK1 only
                end
            end

            //------------------------------------------------
            // IN ATTACK → PROGRESS
            //------------------------------------------------
            else begin
                acnt         <= acnt + 1'b1;
                attack_frame <= acnt;     // directly feed sprite frame

                // Active hitbox window
                if (acnt >= ATK_ACTIVE_START && acnt <= ATK_ACTIVE_END)
                    attack_active <= 1'b1;

                // End of attack animation
                if (acnt == ATK_TOTAL_FRAMES - 1) begin
                    attack_busy   <= 1'b0;
                    attack_type   <= 2'd0;
                    attack_frame  <= 6'd0;
                end
            end
        end
    end
endmodule
