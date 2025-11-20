module Attack1_6_rom(
    input wire clk,
    input wire [13:0] addr,
    output reg [11:0] color
);

    (* rom_style="block" *)
    reg [11:0] mem [0:15875];

    initial begin
        $readmemh("Attack1_6_12bit.mem", mem);
    end

    always @(posedge clk)
        color <= mem[addr];

endmodule
