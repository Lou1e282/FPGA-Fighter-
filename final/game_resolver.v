module game_resolver(
    .p1(player1_state),
    .p2(player2_state),
    .p1_to_p2_hit(hit_p1_to_p2),
    .p2_to_p1_hit(hit_p2_to_p1)
);

always @(*) begin
    hit_p1_to_p2 = 0;
    hit_p2_to_p1 = 0;

    if (hit_overlap) begin
        if (p1.action == ATTACK && p2.action == BLOCK)

            hit_p1_to_p2 = 0;

        else if (p1.action == ATTACK && p2.action != BLOCK)

            hit_p1_to_p2 = 1;

        if (p2.action == ATTACK && p1.action == BLOCK)

            hit_p2_to_p1 = 0;

        else if (p2.action == ATTACK && p1.action != BLOCK)
        
            hit_p2_to_p1 = 1;
    end
end


endmodule
