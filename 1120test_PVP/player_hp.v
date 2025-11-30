//------------------------------------------------------------------------------
// player_hp.v
//   Per-player HP tracker
//   - Consumes 1-cycle hit_event and a damage value
//   - Clamps at 0 HP
//   - Emits KO flag + 1-cycle ko_pulse when HP reaches 0
//------------------------------------------------------------------------------

module player_hp #(
    parameter MAX_HP = 100,
    parameter DMG_WIDTH = 7        // supports up to 127 damage per hit
)(
    input  wire clk,
    input  wire reset,
    input  wire SCEN,

    // hit event from game_resolver (1-cycle pulse)
    input  wire hit_event,

    // damage amount for this hit (1-cycle valid when hit_event=1)
    input  wire [DMG_WIDTH-1:0] hit_damage,

    // outputs
    output reg  [DMG_WIDTH-1:0] hp,
    output reg                  ko,        // latched "player is KO"
    output reg                  ko_pulse   // 1-cycle pulse when HP hits 0
);

    // sequential
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            hp       <= MAX_HP[DMG_WIDTH-1:0];
            ko       <= 0;
            ko_pulse <= 0;

        end else if (SCEN) begin
            // default pulse clearing
            ko_pulse <= 0;

            // Only decrement if alive
            if (!ko && hit_event) begin
                // subtract damage with clamp
                if (hp <= hit_damage) begin
                    hp       <= 0;
                    ko       <= 1;
                    ko_pulse <= 1;  // 1-cycle notification
                end else begin
                    hp <= hp - hit_damage;
                end
            end
        end
    end

endmodule
