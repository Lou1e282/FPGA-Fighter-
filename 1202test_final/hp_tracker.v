module hp_tracker #(
    parameter integer MAX_HP         = 10,
    parameter integer DAMAGE_PER_HIT = 1
)(
    input  wire clk,
    input  wire reset,
    input  wire SCEN,        
    input  wire p1_hit_event,
    input  wire p2_hit_event,
    output reg  [7:0] p1_hp,
    output reg  [7:0] p2_hp,
    output wire       p1_dead,
    output wire       p2_dead
);

    // previous hit_event
    reg p1_hit_d, p2_hit_d;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            p1_hp   <= MAX_HP[7:0];
            p2_hp   <= MAX_HP[7:0];
            p1_hit_d <= 1'b0;
            p2_hit_d <= 1'b0;
        end else begin
            // sample previous hit_event state
            p1_hit_d <= p1_hit_event;
            p2_hit_d <= p2_hit_event;

            // -------- P1 takes damage when P2 hits P1 --------
            // Rising edge: 0 -> 1
            if (p1_hit_event && !p1_hit_d && p1_hp != 0) begin
                if (p1_hp > DAMAGE_PER_HIT[7:0])
                    p1_hp <= p1_hp - DAMAGE_PER_HIT[7:0];
                else
                    p1_hp <= 0;
            end

            // -------- P2 takes damage when P1 hits P2 --------
            if (p2_hit_event && !p2_hit_d && p2_hp != 0) begin
                if (p2_hp > DAMAGE_PER_HIT[7:0])
                    p2_hp <= p2_hp - DAMAGE_PER_HIT[7:0];
                else
                    p2_hp <= 0;
            end
        end
    end

    assign p1_dead = (p1_hp == 0);
    assign p2_dead = (p2_hp == 0);

endmodule
