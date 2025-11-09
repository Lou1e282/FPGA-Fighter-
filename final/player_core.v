`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Louie Shen
// Module: core_player_block
// Description:
//   Automatic block controller for a fighting game character.
//
//   - Character blocks automatically when neutral and threatened.
//   - Any action (attack, move, jump, dash, special) disables auto-block
//     until the character has returned to neutral for N frames.
//
//   Attack and Move states are separate inputs for clarity.
//
//////////////////////////////////////////////////////////////////////////////////

module core_player_block #(
    parameter GUARD_WINDOW         = 3,  // threat detection grace frames
    parameter INHIBIT_CLEAR_FRAMES = 2   // neutral frames before re-enabling block
)(
    input  wire clk,
    input  wire rst,

    // Opponent threat inputs
    input  wire op_hitbox_active,
    input  wire op_is_grab,
    input  wire in_front,
    input  wire within_guard_range,
    input  wire guard_break,

    // Player state inputs
    input  wire atk_active,           // 1 while performing attack animation
    input  wire move_active,          // 1 while moving/dashing/jumping
    input  wire atk_start_pulse,      // 1-cycle pulse when attack starts
    input  wire move_start_pulse,     // 1-cycle pulse when movement starts
    input  wire returned_to_neutral,  // 1-cycle pulse when back to idle
    input  wire hitstun,
    input  wire blockstun,

    // Output
    output reg  is_blocking
);

    // ============================================================
    // Threat detection window (simple shift register)
    // ============================================================
    reg [GUARD_WINDOW-1:0] threat_sr;
    wire threat_now;
    wire threat_window;

    assign threat_now    = op_hitbox_active && in_front && within_guard_range && !op_is_grab;
    assign threat_window = |threat_sr | threat_now;

    always @(posedge clk or posedge rst) begin
        if (rst)
            threat_sr <= {GUARD_WINDOW{1'b0}};
        else
            threat_sr <= {threat_sr[GUARD_WINDOW-2:0], threat_now};
    end

    // ============================================================
    // Combine attack + movement as a unified action
    // ============================================================
    wire action_active = atk_active || move_active;
    wire action_start  = atk_start_pulse || move_start_pulse;

    // ============================================================
    // Block inhibit logic
    // ============================================================
    reg [$clog2(INHIBIT_CLEAR_FRAMES+1)-1:0] neutral_cnt;
    reg block_inhibit;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            block_inhibit <= 1'b0;
            neutral_cnt   <= '0;
        end else begin
            if (action_start) begin
                // Disable blocking immediately on any new action
                block_inhibit <= 1'b1;
                neutral_cnt   <= '0;
            end else if (returned_to_neutral && block_inhibit) begin
                // Wait neutral frames before re-enabling block
                if (neutral_cnt >= INHIBIT_CLEAR_FRAMES) begin
                    block_inhibit <= 1'b0;
                    neutral_cnt   <= '0;
                end else begin
                    neutral_cnt <= neutral_cnt + 1'b1;
                end
            end else if (action_active) begin
                // Still performing an action → reset counter
                neutral_cnt <= '0;
            end
        end
    end

    // ============================================================
    // Auto-block control logic
    // ============================================================
    wire can_block;
    wire block_request;

    assign can_block     = !action_active && !hitstun && !blockstun && !guard_break;
    assign block_request = can_block && !block_inhibit && threat_window;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            is_blocking <= 1'b0;
        end else if (hitstun || blockstun || action_active || guard_break) begin
            // Cancel block if performing action, in stun, or guard-broken
            is_blocking <= 1'b0;
        end else if (block_request) begin
            // Auto-block if idle and under threat
            is_blocking <= 1'b1;
        end else begin
            is_blocking <= 1'b0;
        end
    end

endmodule
