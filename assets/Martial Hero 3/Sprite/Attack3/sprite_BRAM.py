import imageio
import math

# returns 12-bit RGB packed as integer (0..4095)
def get_color_12(im, y, x):
    r = im[y][x][0] >> 4    # upper 4 bits
    g = im[y][x][1] >> 4
    b = im[y][x][2] >> 4
    return (r << 8) | (g << 4) | b   # r3..r0 g3..g0 b3..b0


def generate_bram_rom(name):
    im = imageio.imread(name)
    height, width, _ = im.shape
    depth = width * height

    print(f"Image: w={width}, h={height}, total={depth} pixels")

    # ------------------------------------------------------------------
    # 1. Write .mem file
    # ------------------------------------------------------------------
    mem_filename = name.split('.')[0] + "_12bit.mem"
    with open(mem_filename, "w") as f:
        for y in range(height):
            for x in range(width):
                color = get_color_12(im, y, x)
                f.write(f"{color:03X}\n")   # 3-digit hex (12 bits)

    print(f"Wrote {mem_filename}")

    # ------------------------------------------------------------------
    # 2. Write Verilog ROM module
    # ------------------------------------------------------------------
    module_name = name.split('.')[0] + "_rom"
    v_filename = module_name + ".v"

    addr_bits = math.ceil(math.log2(depth))

    with open(v_filename, "w") as f:
        f.write(f"""module {module_name}(
    input wire clk,
    input wire [{addr_bits-1}:0] addr,
    output reg [11:0] color
);

    (* rom_style="block" *)
    reg [11:0] mem [0:{depth-1}];

    initial begin
        $readmemh("{mem_filename}", mem);
    end

    always @(posedge clk)
        color <= mem[addr];

endmodule
""")

    print(f"Wrote {v_filename}")


# Example
for i in range(0,9): 
    generate_bram_rom(f"Idle_{i}.png")
