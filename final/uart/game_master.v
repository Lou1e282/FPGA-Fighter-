module game_master (
    input  wire        clk, rst_n,
    // UART interface
    input  wire [7:0]  rx_data,
    input  wire        rx_valid,
    output reg  [7:0]  tx_data,
    output reg         tx_start,
    // Local inputs
    input  wire [3:0]  p1_ctrl,     // move, attack, start, reset
    // Status outputs
    output reg  [7:0]  p1_hp, p2_hp,
    output reg  [2:0]  game_state
);

    // --- FSM states ---
    typedef enum logic [2:0] {
        IDLE  = 3'd0,
        READY = 3'd1,
        FIGHT = 3'd2,
        HIT   = 3'd3,
        KO    = 3'd4,
        FINISH   = 3'd5
    } state_t;

    state_t state, next_state;

    // --- Player state registers ---
    reg [7:0] p1_action, p2_action;
    reg [15:0] frame_counter;

    // --- Main FSM ---
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) state <= IDLE;
        else       state <= next_state;
    end

    // --- Next-state logic ---
    always begin
        next_state = state;
        case(state)
            IDLE:  if(p1_ctrl[2])              next_state = READY;  // start pressed
            READY: if(rx_valid && rx_data==8'hA5) next_state = FIGHT; // handshake ack
            FIGHT: if(p1_hp==0 || p2_hp==0)   next_state = KO;
            KO:    if(frame_counter > 16'd2000) next_state = FINISH;
            FINISH:   if(p1_ctrl[3])              next_state = IDLE;   // reset
        endcase
    end

    // --- HP and hit detection ---
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            p1_hp <= 8'd100; p2_hp <= 8'd100;
        end else if(state==FIGHT) begin
            if(p1_action==8'h20 && p2_action==8'h10) p2_hp <= p2_hp - 8'd10;
            if(p2_action==8'h20 && p1_action==8'h10) p1_hp <= p1_hp - 8'd10;
        end
    end

    // --- Receive mirror input (p2_action) ---
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) p2_action <= 8'h00;
        else if(rx_valid)    p2_action <= rx_data; // assume single-byte action
    end

    // --- Transmit state packet ---
    always @(posedge clk) begin
        frame_counter <= frame_counter + 1;
        if(frame_counter == 16'd1000) begin
            frame_counter <= 0;
            tx_data  <= {game_state, 2'b00};  // example header
            tx_start <= 1'b1;
        end else tx_start <= 1'b0;
    end

endmodule
