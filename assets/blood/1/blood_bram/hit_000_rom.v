module hit_000_rom(
    input wire clk,
    input wire [13:0] addr,
    output reg [11:0] color
);

    (* rom_style="block" *)
    reg [11:0] mem [0:15875];

    initial begin
        $readmemh("hit_000_12bit.mem", mem);
    end

    always @(posedge clk)
        color <= mem[addr];

endmodule
