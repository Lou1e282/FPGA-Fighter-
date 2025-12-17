module player_attack #(
    parameter integer ATK_TOTAL_FRAMES = 18,
    parameter integer ATK_ACTIVE_START = 4,
    parameter integer ATK_ACTIVE_END   = 10
)(
    input  wire clk,
    input  wire reset,
    input  wire SCEN,
    input  wire attack_enable,

    input  wire attack1,          // 1-cycle pulse
    output reg [5:0] attack_frame,
    output reg       attack_damage,  // hitbox window
    output reg       attack_active   // entire attack animation
);

    reg [5:0] acnt;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            attack_active <= 1'b0;
            attack_damage <= 1'b0;
            attack_frame  <= 6'd0;
            acnt          <= 6'd0;
        end else if (SCEN && attack_enable) begin

            attack_damage <= 1'b0;   // default each frame

            if (!attack_active) begin
                //------------------------------------------------
                // IDLE: wait for attack1 trigger
                //------------------------------------------------
                attack_frame <= 6'd0;
                acnt         <= 6'd0;

                if (attack1) begin
                    attack_active <= 1'b1;   // <<< IMPORTANT
                end
            end else begin
                //------------------------------------------------
                // IN ATTACK
                //------------------------------------------------
                acnt <= acnt + 1'b1;
                attack_frame <= acnt;

                // hitbox window
                if (acnt >= ATK_ACTIVE_START && acnt <= ATK_ACTIVE_END)
                    attack_damage <= 1'b1;

                // attack finished
                if (acnt == ATK_TOTAL_FRAMES - 1) begin
                    attack_active <= 1'b0;
                    attack_frame  <= 6'd0;
                end
            end
        end
    end
endmodule