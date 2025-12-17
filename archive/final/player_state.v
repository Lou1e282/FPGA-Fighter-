/// Handles player states, 

module player_state (
    input  wire clk,
    input  wire reset,
    input  wire SCEN,

    // input interface
    input  wire move_left,
    input  wire move_right,
    input  wire jump,
    input  wire attack1,
    input  wire attack2,

    // from game_resolver
    input  wire hitstun_active,     // top priority

    // from attack / move modules
    input  wire attack_busy,        // move & attack
    input  wire jump_active,

    // enables
    output reg move_enable,
    output reg attack_enable
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            move_enable   <= 1'b1;
            attack_enable <= 1'b0;
        end

        else if (SCEN) begin

            // ---------------- HITSTUN OVERRIDES ALL ----------------
            if (hitstun_active) begin
                move_enable   <= 1'b0;
                attack_enable <= 1'b0;
            end

            // ---------------- ATTACK PRIORITY ----------------------
            else if (!attack_busy && (attack1 || attack2)) begin
                move_enable   <= 1'b0;    /// TODO: overlap attack and move
                attack_enable <= 1'b1;
            end

            // ---------------- JUMP & MOVE (NORMAL) ------------------
            else begin
                attack_enable <= 1'b0;
                move_enable   <= 1'b1;
            end
        end
    end

endmodule
