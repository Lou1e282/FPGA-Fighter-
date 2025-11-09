// inside ingame_fsm.v

player_block u_player_block (
    .clk(clk),
    .reset(reset),
    .attack_in(opponent_attack),
    .player_move(move_active),
    .player_attack(attack_active),
    .player_hit(hit_active),
    .block_active(block_flag)
);

// use block_flag inside ingame FSM state logic
always @(*) begin
    case (state)
        IDLE: begin
            if (attack_active)
                next_state = ATTACK;
            else if (move_active)
                next_state = MOVE;
            else if (opponent_attack && block_flag)
                next_state = BLOCK;
            else if (opponent_attack)
                next_state = HIT;
        end
        
        FIGHT:begin
            if()

        
    endcase
end
