////////// Player_attack module
////////// Handles attack1 / attack2 timing, active frames, and local state
////////// No animation is selected here — only attack timing state.


module player_attack #(
    parameter integer ATK1_TOTAL_FRAMES = 18,
    parameter integer ATK1_ACTIVE_START = 4,
    parameter integer ATK1_ACTIVE_END   = 10,

    parameter integer ATK2_TOTAL_FRAMES = 26,
    parameter integer ATK2_ACTIVE_START = 8,
    parameter integer ATK2_ACTIVE_END   = 16
)(
    input  wire clk,
    input  wire reset,
    input  wire SCEN,
    input  wire attack_enable,

    input  wire attack1,   // sw0 (switch)
    input  wire attack2,   // sw1 (switch)

    output reg  attack_active,
    output reg  [1:0] attack_type,
    output reg  [5:0] attack_frame,
    output reg        attack_busy
);

    reg [5:0] acnt;

    // -----------------------------------------------------
    // SWITCH-BASED (LEVEL-SENSITIVE) attack requests
    // -----------------------------------------------------
    // These are NOT edge-triggered anymore.
    // Whenever the switch is ON, request remains ON.
    reg attack1_req, attack2_req;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            attack_active <= 1'b0;
            attack_busy   <= 1'b0;
            attack_type   <= 2'd0;
            attack_frame  <= 6'd0;
            acnt          <= 6'd0;

            attack1_req <= 1'b0;
            attack2_req <= 1'b0;
        end else begin

            // --------------------------------------------------
            // LEVEL-SENSITIVE REQUEST (switch ON → request ON)
            // --------------------------------------------------
            if (attack1) attack1_req <= 1'b1;
            if (attack2) attack2_req <= 1'b1;

            // Clear after consumption (below)

            // =======================
            // MAIN FSM – 1 per frame
            // =======================
            if (SCEN && attack_enable) begin
                attack_active <= 1'b0;

                // ------------------------------------------------------
                // IDLE → begin next attack as long as switch is still ON
                // ------------------------------------------------------
                if (!attack_busy) begin
                    acnt         <= 6'd0;
                    attack_frame <= 6'd0;

                    if (attack1_req) begin
                        attack_busy <= 1'b1;
                        attack_type <= 2'd1;
                        attack1_req <= 1'b0;     // consume one iteration
                    end
                    else if (attack2_req) begin
                        attack_busy <= 1'b1;
                        attack_type <= 2'd2;
                        attack2_req <= 1'b0;
                    end
                end

                // ---------------------------
                // IN ATTACK
                // ---------------------------
                else begin
                    acnt         <= acnt + 1'b1;
                    attack_frame <= acnt;

                    if (attack_type == 2'd1) begin
                        if (acnt >= ATK1_ACTIVE_START &&
                            acnt <= ATK1_ACTIVE_END)
                            attack_active <= 1'b1;

                        if (acnt == ATK1_TOTAL_FRAMES - 1) begin
                            attack_busy <= 1'b0;
                            attack_type <= 2'd0;
                        end
                    end

                    else if (attack_type == 2'd2) begin
                        if (acnt >= ATK2_ACTIVE_START &&
                            acnt <= ATK2_ACTIVE_END)
                            attack_active <= 1'b1;

                        if (acnt == ATK2_TOTAL_FRAMES - 1) begin
                            attack_busy <= 1'b0;
                            attack_type <= 2'd0;
                        end
                    end
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
