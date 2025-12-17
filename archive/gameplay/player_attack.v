//////////  Player_attack module: attack1, attack2
//////////  Handles active frames + timing; no sprite selection here.

module player_attack #(
    parameter integer ATK1_TOTAL_FRAMES = 7,
    parameter integer ATK1_ACTIVE_START = 4,    /// TODO, edit attack frames
    parameter integer ATK1_ACTIVE_END   = 10,

    parameter integer ATK2_TOTAL_FRAMES = 16,
    parameter integer ATK2_ACTIVE_START = 8,
    parameter integer ATK2_ACTIVE_END   = 15
)(
    input  wire clk,
    input  wire reset,
    input  wire SCEN,

    input  wire attack1,
    input  wire attack2,

    output reg  attack_active,     // hitbox window signal
    output reg  [3:0] anim_state,  // goes to sprite_mapper
    output reg  [5:0] anim_frame   // also to sprite_mapper
);

    localparam IDLE = 4'd0,
               ATK1 = 4'd1,
               ATK2 = 4'd2;

    reg [5:0] counter;  // attack frame timer

    // --- Sequential Attack FSM ---
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            anim_state    <= IDLE;
            anim_frame    <= 0;
            attack_active <= 0;
            counter       <= 0;
        end
        else if (SCEN) begin

            case (anim_state)

                // ----- Neutral / Waiting -----
                IDLE: begin
                    attack_active <= 1'b0;
                    anim_frame    <= 0;

                    if (attack1_btn) begin
                        anim_state <= ATK1;
                        counter    <= 0;
                    end
                    else if (attack2_btn) begin
                        anim_state <= ATK2;
                        counter    <= 0;
                    end
                end

                // ----- Attack 1 -----
                ATK1: begin
                    anim_frame <= counter;

                    // active hitbox window
                    attack_active <= (counter >= ATK1_ACTIVE_START &&
                                      counter <= ATK1_ACTIVE_END);

                    counter <= counter + 1'b1;
                    if (counter == ATK1_TOTAL_FRAMES-1) begin
                        anim_state <= IDLE;
                    end
                end

                // ----- Attack 2 -----
                ATK2: begin
                    anim_frame <= counter;

                    attack_active <= (counter >= ATK2_ACTIVE_START &&
                                      counter <= ATK2_ACTIVE_END);

                    counter <= counter + 1'b1;
                    if (counter == ATK2_TOTAL_FRAMES-1) begin
                        anim_state <= IDLE;
                    end
                end

            endcase

        end
    end
endmodule
