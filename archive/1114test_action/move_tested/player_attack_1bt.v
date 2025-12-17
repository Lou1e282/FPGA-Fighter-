////////// Player_attack module
////////// Handles attack1 / attack2 timing, active frames, and local state
////////// No animation is selected here — only attack timing state.

//////////////////////////////////////////////////////////////
// player_attack_test
// Simplified version: only ATK1 exists.
// - one-shot trigger
// - active hitbox window
// - busy until end of animation
//////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////
// player_attack_test
// Simplified attack module for testing
// - Only ATK1 exists
// - One-shot trigger (pulse)
// - Attack busy timing
// - Active hitbox window
// - NO attack_frame output
//////////////////////////////////////////////////////////////

module player_attack_test #(
    parameter integer ATK_TOTAL_FRAMES = 18,
    parameter integer ATK_ACTIVE_START = 4,
    parameter integer ATK_ACTIVE_END   = 10
)(
    input  wire clk,
    input  wire reset,
    input  wire SCEN,            // 1 pulse per frame
    input  wire attack_enable,

    input  wire attack1,         // 1-cycle pulse (debounced upstream)

    output reg  attack_active,   // hitbox active window
    output reg  attack_busy      // in attack animation
);

    // Attack timer
    reg [5:0] acnt;

    //--------------------------------------------------------
    // Reset
    //--------------------------------------------------------
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            attack_active <= 1'b0;
            attack_busy   <= 1'b0;
            acnt          <= 6'd0;
        end

        //----------------------------------------------------
        // FSM (1 update per frame)
        //----------------------------------------------------
        else if (SCEN && attack_enable) begin

            // default
            attack_active <= 1'b0;

            //------------------------------------------------
            // Idle → start attack on one-shot pulse
            //------------------------------------------------
            if (!attack_busy) begin
                acnt <= 6'd0;

                if (attack1) begin
                    attack_busy <= 1'b1;
                end
            end

            //------------------------------------------------
            // In attack
            //------------------------------------------------
            else begin
                acnt <= acnt + 1'b1;

                // Active window
                if (acnt >= ATK_ACTIVE_START &&
                    acnt <= ATK_ACTIVE_END)
                    attack_active <= 1'b1;

                // End of animation
                if (acnt == ATK_TOTAL_FRAMES - 1) begin
                    attack_busy <= 1'b0;
                end
            end
        end
    end

endmodule



// module player_attack #(
//     parameter integer ATK1_TOTAL_FRAMES = 18,
//     parameter integer ATK1_ACTIVE_START = 4,
//     parameter integer ATK1_ACTIVE_END   = 10,

//     parameter integer ATK2_TOTAL_FRAMES = 26,
//     parameter integer ATK2_ACTIVE_START = 8,
//     parameter integer ATK2_ACTIVE_END   = 16
// )(
//     input  wire clk,
//     input  wire reset,
//     input  wire SCEN,
//     input  wire attack_enable,        /// parallel to move_enable

//     input  wire attack1,              /// raw attack buttons (cleaned upstream)
//     input  wire attack2,

//     output reg  attack_active,        /// hitbox window
//     output reg  [1:0] attack_type,    /// 1 = ATK1, 2 = ATK2
//     output reg  [5:0] attack_frame,   /// counter for sprite system
//     output reg        attack_busy     /// internal “in attack”
// );

//     /// Internal attack timer
//     reg [5:0] acnt;

//     // ----------------------- Reset -----------------------
//     always @(posedge clk or posedge reset) begin
//         if (reset) begin
//             attack_active <= 1'b0;
//             attack_busy   <= 1'b0;
//             attack_type   <= 2'd0;
//             attack_frame  <= 6'd0;
//             acnt          <= 6'd0;
//         end

//         // ---------------------- Attack FSM -----------------------
//         else if (SCEN && attack_enable) begin
//             attack_active <= 1'b0;       /// default off each frame

//             // =====================================================
//             // NOT IN ATTACK → Can Begin ATK1 or ATK2
//             // =====================================================
//             if (!attack_busy) begin
//                 acnt <= 6'd0;

//                 if (attack1) begin
//                     attack_busy <= 1'b1;
//                     attack_type <= 2'd1;
//                 end
//                 else if (attack2) begin
//                     attack_busy <= 1'b1;
//                     attack_type <= 2'd2;
//                 end
//             end

//             // =====================================================
//             // IN ATTACK → Progress frames and handle hitbox windows
//             // =====================================================
//             else begin
//                 acnt <= acnt + 1'b1;
//                 attack_frame <= acnt;

//                 /// ---------------- Attack 1 ----------------
//                 if (attack_type == 2'd1) begin
//                     if (acnt >= ATK1_ACTIVE_START && acnt <= ATK1_ACTIVE_END)
//                         attack_active <= 1'b1;

//                     if (acnt == ATK1_TOTAL_FRAMES - 1) begin
//                         attack_busy <= 1'b0;
//                         attack_type <= 2'd0;
//                         attack_frame <= 6'd0;
//                     end
//                 end

//                 /// ---------------- Attack 2 ----------------
//                 else if (attack_type == 2'd2) begin
//                     if (acnt >= ATK2_ACTIVE_START && acnt <= ATK2_ACTIVE_END)
//                         attack_active <= 1'b1;

//                     if (acnt == ATK2_TOTAL_FRAMES - 1) begin
//                         attack_busy <= 1'b0;
//                         attack_type <= 2'd0;
//                         attack_frame <= 6'd0;
//                     end
//                 end
//             end
//         end
//     end

// endmodule
