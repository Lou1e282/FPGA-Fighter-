//------------------------------------------------------------------------------
// hp_tracker
//  - Decrements HP on 1-cycle hit_event pulses (from game_resolver)
//  - One shared MAX_HP and DAMAGE_PER_HIT for both players
//------------------------------------------------------------------------------
module hp_tracker #(
    parameter integer MAX_HP         = 10,  // total health
    parameter integer DAMAGE_PER_HIT = 1    // HP lost per hit
)(
    input  wire clk,
    input  wire reset,
    input  wire SCEN,           // frame tick (same as resolver)

    // From game_resolver
    input  wire p1_hit_event,   // "P2 hits P1"
    input  wire p2_hit_event,   // "P1 hits P2"

    // Output current HP
    output reg  [7:0] p1_hp,
    output reg  [7:0] p2_hp,
    output wire       p1_dead,
    output wire       p2_dead
);

    // dead when HP is 0
    assign p1_dead = (p1_hp == 0);
    assign p2_dead = (p2_hp == 0);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            p1_hp <= MAX_HP[7:0];
            p2_hp <= MAX_HP[7:0];
        end else if (SCEN) begin
            // P1 takes damage when p1_hit_event is asserted
            if (p1_hit_event && p1_hp != 0) begin
                if (p1_hp > DAMAGE_PER_HIT)
                    p1_hp <= p1_hp - DAMAGE_PER_HIT[7:0];
                else
                    p1_hp <= 0;
            end

            // P2 takes damage when p2_hit_event is asserted
            if (p2_hit_event && p2_hp != 0) begin
                if (p2_hp > DAMAGE_PER_HIT)
                    p2_hp <= p2_hp - DAMAGE_PER_HIT[7:0];
                else
                    p2_hp <= 0;
            end
        end
    end

endmodule
