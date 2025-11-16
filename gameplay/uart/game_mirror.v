module game_mirror (
    input  wire        clk, rst_n,
    input  wire [3:0]  p2_ctrl,
    input  wire [7:0]  rx_data,
    input  wire        rx_valid,
    output reg  [7:0]  tx_data,
    output reg         tx_start,
    output reg  [7:0]  p1_hp, p2_hp,
    output reg  [2:0]  game_state
);
    // Mirror sends local action
    always_ff @(posedge clk) begin
        tx_data  <= {4'h0, p2_ctrl}; // encode buttons
        tx_start <= 1'b1;
    end

    // Mirror updates from master packet
    always_ff @(posedge clk) begin
        if(rx_valid) begin
            game_state <= rx_data[7:5];
            // decode hp/state in fuller version
        end
    end
endmodule
