module vga_bitchange(
    input clk,               // USE clk25 from display_controller
    input bright,
    input button,            // BtnU (active-low)
    input [9:0] hCount, vCount,
    output reg [11:0] rgb,
    output reg [15:0] score
    );

    // Colors
    localparam BLACK = 12'b0000_0000_0000;
    localparam WHITE = 12'b1111_1111_1111;
    localparam RED   = 12'b1111_0000_0000;
    localparam GREEN = 12'b0000_1111_0000;

    // Active-low button → convert to active-high press
    wire btn = ~button;

    // Edge detector for button press (so score only increments once per press)
    reg btn_d;
    always @(posedge clk)
        btn_d <= btn;
    wire btn_press = (btn_d == 1'b0 && btn == 1'b1);

    // Moving square Y position and timer
    reg [9:0] greenY = 10'd320;
    reg [19:0] speed = 0; // Using smaller counter because clk25 is slower

    always @(posedge clk) begin
        speed <= speed + 1;
        if (speed == 20'd500_00) begin  // ~50k counts = ~1ms movement
            speed <= 0;
            greenY <= (greenY == 10'd440) ? 10'd0 : greenY + 1;
        end
    end

    // White zone (hit area)
    wire whiteZone = (hCount >= 144 && hCount <= 784) &&
                     (vCount >= 400 && vCount <= 475);

    // Green square
    wire greenBox  = (hCount >= 340 && hCount <= 380) &&
                     (vCount >= greenY && vCount <= greenY + 40);

    // Scoring (only when press occurs while overlapping white zone)
    always @(posedge clk) begin
        if (btn_press && greenBox && whiteZone)
            score <= score + 1;
    end

    // Pixel color output
    always @(*) begin
        if (!bright)
            rgb = BLACK;
        else if (greenBox)
            rgb = GREEN;
        else if (whiteZone)
            rgb = WHITE;
        else
            rgb = RED;
    end

endmodule
