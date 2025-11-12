module player_core (
    input  wire clk,
    input  wire reset,

    // player control inputs
    input  wire move_btn,
    input  wire attack_btn,        // TODO detailed controls

    // external events
    input  wire opponent_attack,   // attack signal from opponent
    input  wire hit_in,            // hit flag from resolver

    // outputs
    output reg  [2:0] action_state,  // 000=idle,001=move,010=attack,011=block,100=hit
    output reg         block_active, // 1 when blocking
    output reg         attack_active,// 1 when attacking
    output reg         move_active,  // 1 when moving
    output reg         hit_active    // 1 when hit
);

    // State encoding
    localparam IDLE    = 3'b000;
    localparam MOVE    = 3'b001;
    localparam JUMP    = 3'b010;   // ROLL? 
    localparam BLOCK   = 3'b011;
    localparam ATTACK1 = 3'b100; 
    localparam ATTACK2 = 3'b101;
    localparam HIT     = 3'b111;

    reg [2:0] next_state;

    //-------------------------------------------------
    // Next-state logic (combinational)
    //-------------------------------------------------
    always @(*) begin
        next_state = action_state;

        case (action_state)
            IDLE: begin
                if (hit_in)
                    next_state = HIT;
                else if (attack_btn)
                    next_state = ATTACK;
                else if (move_btn)
                    next_state = MOVE;
                else if (opponent_attack)
                    next_state = BLOCK;
                else
                    next_state = IDLE;
            end

            MOVE: begin
                if (hit_in)
                    next_state = HIT;
                else if (!move_btn)
                    next_state = IDLE;
            end

            ATTACK: begin
                if (hit_in)
                    next_state = HIT;
                else if (!attack_btn)
                    next_state = IDLE;
            end

            BLOCK: begin
                if (hit_in)
                    next_state = HIT;
                else if (move_btn || attack_btn)
                    next_state = IDLE; // cancel block on action
                else if (!opponent_attack)
                    next_state = IDLE; // stop blocking if attack gone
            end

            HIT: begin
                // recovery logic can be expanded with a counter
                next_state = IDLE;
            end

            default: next_state = IDLE;
        endcase
    end

    //-------------------------------------------------
    // Sequential state register
    //-------------------------------------------------
    always @(posedge clk or posedge reset) begin
        if (reset)
            action_state <= IDLE;
        else
            action_state <= next_state;
    end

    //-------------------------------------------------
    // Output control logic
    //-------------------------------------------------
    always @(*) begin
        // defaults
        move_active   = 0;
        attack_active = 0;
        block_active  = 0;
        hit_active    = 0;

        case (action_state)
            IDLE:   ;
            MOVE:   move_active   = 1;
            ATTACK: attack_active = 1;
            BLOCK:  block_active  = 1;
            HIT:    hit_active    = 1;
        endcase
    end

endmodule