module 25_rom(
    input wire clk,
    input wire [11:0] addr,
    output reg [11:0] color
);

    (* rom_style="block" *)
    reg [11:0] mem [0:4095];

    initial begin
        $readmemh("25_12bit.mem", mem);
    end

    always @(posedge clk)
        color <= mem[addr];

endmodule
