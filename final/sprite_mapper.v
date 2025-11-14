module sprite_mapper (
    input  wire [3:0] anim_state,
    input  wire [5:0] anim_frame,

    output reg [11:0] sprite_id
);

    always @* begin
        case (anim_state)
            4'd0: sprite_id = 12'h000;         // idle
            4'd1: sprite_id = 12'h010;         // walk
            4'd2: sprite_id = 12'h020;         // jump
            4'd3: sprite_id = 12'h030 + anim_frame; // atk1 frames
            4'd4: sprite_id = 12'h040 + anim_frame; // atk2 frames
            4'd5: sprite_id = 12'h050;         // hit/hitstun
            4'd6: sprite_od = 12'h060;         // lose
            default: sprite_id = 12'h000;
        endcase
    end

endmodule
