#!/usr/bin/env python3
import math
from PIL import Image

SPR_W = 126
SPR_H = 126

# ------------------------------------------------------------
# Convert RGB → 12-bit packed RGB
# ------------------------------------------------------------
def rgb12(r, g, b):
    return ((r >> 4) << 8) | ((g >> 4) << 4) | (b >> 4)

# ------------------------------------------------------------
# Generate .mem + .v ROM from an image
# ------------------------------------------------------------
def generate_bram_rom(filename):
    # Load image, convert to RGB, force exact sizep
    img = Image.open(filename).convert("RGB")
    img = img.resize((SPR_W, SPR_H), Image.NEAREST)

    width, height = img.size
    assert width == SPR_W and height == SPR_H

    pixels = img.load()
    depth = SPR_W * SPR_H

    print(f"[OK] Using size {width}×{height}, total {depth} pixels")

    # --------------------------------------------------------
    # Write .mem file (row-major y,x order)
    # --------------------------------------------------------
    mem_filename = filename.rsplit(".", 1)[0] + "_12bit.mem"
    with open(mem_filename, "w") as f:
        for y in range(SPR_H):
            for x in range(SPR_W):
                r, g, b = pixels[x, y]
                f.write(f"{rgb12(r, g, b):03X}\n")

    print(f"[OK] Wrote {mem_filename}")

    # --------------------------------------------------------
    # Verilog ROM module
    # --------------------------------------------------------
    module_name = filename.rsplit(".", 1)[0] + "_rom"
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

    print(f"[OK] Wrote {v_filename}")
    print("[DONE]")


# ------------------------------------------------------------
# Example usage
# ------------------------------------------------------------
if __name__ == "__main__":
    for i in range(1, 30) :
        generate_bram_rom(f"{i}.png")
