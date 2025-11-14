# does the VGA peripheral even work lol

module vga_test_pattern(
    input  wire       clk,
    input  wire       inDisplayArea,
    input  wire [9:0] CounterX,
    input  wire [9:0] CounterY,
    output reg  [11:0] rgb
);
    always @(posedge clk) begin
        if (!inDisplayArea) begin
            rgb <= 12'h000;
        end else begin
            if (CounterX < 213) begin
                rgb <= 12'hF00;   // red
            end else if (CounterX < 426) begin
                rgb <= 12'h0F0;   // green
            end else begin
                rgb <= 12'h00F;   // blue
            end
        end
    end
endmodule
