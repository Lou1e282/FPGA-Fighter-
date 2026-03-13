// jstk_to_controls.v
// map joystick readings to left/right/jump/atk1/atk2
// we only have one jstk, so consider using buttons as well 

module jstk_to_controls (
    input  wire [7:0] jstk_x,
    input  wire [7:0] jstk_y,
    input  wire       btn1,
    input  wire       btn2,
    input  wire       btn3,
    input  wire       data_valid,

    output reg        left,
    output reg        right,
    output reg        jump,
    output reg        atk1,
    output reg        atk2
);

    localparam [7:0] LEFT_TH   = 8'd80;
    localparam [7:0] RIGHT_TH  = 8'd176;
    localparam [7:0] UP_TH     = 8'd80;

    always @(*) begin
        left  = 1'b0;
        right = 1'b0;
        jump  = 1'b0;
        atk1  = 1'b0;
        atk2  = 1'b0;

        if (data_valid) begin
            if (jstk_x < LEFT_TH)
                left = 1'b1;
            else if (jstk_x > RIGHT_TH)
                right = 1'b1;

            if (jstk_y < UP_TH)
                jump = 1'b1;

            atk1 = btn1;
            atk2 = btn2;
        end
    end

endmodule
