# gpt top file

`timescale 1ns / 1ps

module vga_top(
    input  wire       ClkPort,   // must match XDC
    input  wire       BtnC,      // reset button
    input  wire       BtnU,      // not used yet, but fine

    output wire       hSync,
    output wire       vSync,
    output wire [3:0] vgaR,
    output wire [3:0] vgaG,
    output wire [3:0] vgaB,

    output wire An0, An1, An2, An3, An4, An5, An6, An7,
    output wire Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp,

    output wire QuadSpiFlashCS
);
    // reset
    wire reset = BtnC;

    // simple divide 100 MHz down to 25 MHz pixel clock
    reg [1:0] div = 0;
    always @(posedge ClkPort) begin
        div <= div + 1;
    end
    wire pix_clk = div[1];

    // hvsync signals
    wire inDisplayArea;
    wire [9:0] CounterX;
    wire [9:0] CounterY;

    hvsync_generator syncgen(
        .clk          (pix_clk),
        .reset        (reset),
        .vga_h_sync   (hSync),
        .vga_v_sync   (vSync),
        .inDisplayArea(inDisplayArea),
        .CounterX     (CounterX),
        .CounterY     (CounterY)
    );

    // test pattern
    wire [11:0] rgb;
    vga_test_pattern pat(
        .clk          (pix_clk),
        .inDisplayArea(inDisplayArea),
        .CounterX     (CounterX),
        .CounterY     (CounterY),
        .rgb          (rgb)
    );

    assign vgaR = rgb[11:8];
    assign vgaG = rgb[7:4];
    assign vgaB = rgb[3:0];

    // seven segment and flash - for now, just blank them
    assign {An0, An1, An2, An3, An4, An5, An6, An7} = 8'b1111_1111;
    assign {Ca, Cb, Cc, Cd, Ce, Cf, Cg}             = 7'b111_1111;
    assign Dp                                       = 1'b1;

    assign QuadSpiFlashCS = 1'b1;
endmodule
