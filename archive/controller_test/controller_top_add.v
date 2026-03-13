// game_top_nexys.v
// Nexys A7 board top that drives game_core with two Pmod JSTKs and buttons

module game_top_nexys (
    input  wire clk,
    input  wire btn_left,
    input  wire btn_right,
    input  wire btn_jump,
    input  wire reset_btn,
    input  wire btn_atk,      // used as P1 atk1

    // Player 1 JSTK on JA
    input  wire p1_miso,
    output wire p1_mosi,
    output wire p1_sck,
    output wire p1_cs,

    // Player 2 JSTK on JB
    input  wire p2_miso,
    output wire p2_mosi,
    output wire p2_sck,
    output wire p2_cs,

    // VGA outputs (stubbed)
    output wire [3:0] vga_r,
    output wire [3:0] vga_g,
    output wire [3:0] vga_b,
    output wire       hsync,
    output wire       vsync
);

    wire reset = reset_btn;

    // SPI wires for P1
    wire        p1_spi_start;
    wire        p1_spi_busy;
    wire [7:0]  p1_tx;
    wire [7:0]  p1_rx;
    wire        p1_spi_done;

    // SPI wires for P2
    wire        p2_spi_start;
    wire        p2_spi_busy;
    wire [7:0]  p2_tx;
    wire [7:0]  p2_rx;
    wire        p2_spi_done;

    // JSTK data for P1
    wire [7:0] p1_x;
    wire [7:0] p1_y;
    wire       p1_btn1;
    wire       p1_btn2;
    wire       p1_btn3;
    wire       p1_valid;

    // JSTK data for P2
    wire [7:0] p2_x;
    wire [7:0] p2_y;
    wire       p2_btn1;
    wire       p2_btn2;
    wire       p2_btn3;
    wire       p2_valid;

    // P1 controls from JSTK
    wire p1_left_j;
    wire p1_right_j;
    wire p1_jump_j;
    wire p1_atk1_j;
    wire p1_atk2_j;

    // P2 controls from JSTK
    wire p2_left_j;
    wire p2_right_j;
    wire p2_jump_j;
    wire p2_atk1_j;
    wire p2_atk2_j;

    // Final controls fed into game_core
    wire p1_left_final;
    wire p1_right_final;
    wire p1_jump_final;
    wire p1_atk1_final;
    wire p1_atk2_final;

    wire p2_left_final;
    wire p2_right_final;
    wire p2_jump_final;
    wire p2_atk1_final;
    wire p2_atk2_final;

    // Combine buttons and joystick for player 1
    assign p1_left_final  = btn_left  | p1_left_j;
    assign p1_right_final = btn_right | p1_right_j;
    assign p1_jump_final  = btn_jump  | p1_jump_j;
    assign p1_atk1_final  = btn_atk   | p1_atk1_j;
    assign p1_atk2_final  = p1_atk2_j;  // no separate hardware button

    // Player 2 uses only joystick for now
    assign p2_left_final  = p2_left_j;
    assign p2_right_final = p2_right_j;
    assign p2_jump_final  = p2_jump_j;
    assign p2_atk1_final  = p2_atk1_j;
    assign p2_atk2_final  = p2_atk2_j;

    // SPI masters
    spi_master_simple spi_p1 (
        .clk       (clk),
        .reset     (reset),
        .start     (p1_spi_start),
        .busy      (p1_spi_busy),
        .tx_data   (p1_tx),
        .rx_data   (p1_rx),
        .done      (p1_spi_done),
        .spi_mosi  (p1_mosi),
        .spi_miso  (p1_miso),
        .spi_sck   (p1_sck),
        .spi_cs_n  (p1_cs)
    );

    spi_master_simple spi_p2 (
        .clk       (clk),
        .reset     (reset),
        .start     (p2_spi_start),
        .busy      (p2_spi_busy),
        .tx_data   (p2_tx),
        .rx_data   (p2_rx),
        .done      (p2_spi_done),
        .spi_mosi  (p2_mosi),
        .spi_miso  (p2_miso),
        .spi_sck   (p2_sck),
        .spi_cs_n  (p2_cs)
    );

    // JSTK readers
    jstk_reader jstk1 (
        .clk         (clk),
        .reset       (reset),
        .spi_start   (p1_spi_start),
        .spi_busy    (p1_spi_busy),
        .spi_tx_data (p1_tx),
        .spi_rx_data (p1_rx),
        .spi_done    (p1_spi_done),
        .cs_n        (p1_cs),
        .jstk_x      (p1_x),
        .jstk_y      (p1_y),
        .btn1        (p1_btn1),
        .btn2        (p1_btn2),
        .btn3        (p1_btn3),
        .data_valid  (p1_valid)
    );

    jstk_reader jstk2 (
        .clk         (clk),
        .reset       (reset),
        .spi_start   (p2_spi_start),
        .spi_busy    (p2_spi_busy),
        .spi_tx_data (p2_tx),
        .spi_rx_data (p2_rx),
        .spi_done    (p2_spi_done),
        .cs_n        (p2_cs),
        .jstk_x      (p2_x),
        .jstk_y      (p2_y),
        .btn1        (p2_btn1),
        .btn2        (p2_btn2),
        .btn3        (p2_btn3),
        .data_valid  (p2_valid)
    );

    // Map joystick to controls
    jstk_to_controls map_p1 (
        .jstk_x    (p1_x),
        .jstk_y    (p1_y),
        .btn1      (p1_btn1),
        .btn2      (p1_btn2),
        .btn3      (p1_btn3),
        .data_valid(p1_valid),
        .left      (p1_left_j),
        .right     (p1_right_j),
        .jump      (p1_jump_j),
        .atk1      (p1_atk1_j),
        .atk2      (p1_atk2_j)
    );

    jstk_to_controls map_p2 (
        .jstk_x    (p2_x),
        .jstk_y    (p2_y),
        .btn1      (p2_btn1),
        .btn2      (p2_btn2),
        .btn3      (p2_btn3),
        .data_valid(p2_valid),
        .left      (p2_left_j),
        .right     (p2_right_j),
        .jump      (p2_jump_j),
        .atk1      (p2_atk1_j),
        .atk2      (p2_atk2_j)
    );

    // SCEN - for now always enabled
    wire SCEN;
    assign SCEN = 1'b1;

    // Game core outputs
    wire [11:0] p1_sprite_id;
    wire [11:0] p2_sprite_id;
    wire [9:0]  p1_x;
    wire [9:0]  p1_y;
    wire [9:0]  p2_x;
    wire [9:0]  p2_y;

    game_core core_inst (
        .clk        (clk),
        .reset      (reset),
        .SCEN       (SCEN),
        .p1_left    (p1_left_final),
        .p1_right   (p1_right_final),
        .p1_jump    (p1_jump_final),
        .p1_atk1    (p1_atk1_final),
        .p1_atk2    (p1_atk2_final),
        .p2_left    (p2_left_final),
        .p2_right   (p2_right_final),
        .p2_jump    (p2_jump_final),
        .p2_atk1    (p2_atk1_final),
        .p2_atk2    (p2_atk2_final),
        .p1_sprite_id(p1_sprite_id),
        .p2_sprite_id(p2_sprite_id),
        .p1_x       (p1_x),
        .p1_y       (p1_y),
        .p2_x       (p2_x),
        .p2_y       (p2_y)
    );

    // For now drive VGA black so constraints still match
    assign vga_r = 4'b0000;
    assign vga_g = 4'b0000;
    assign vga_b = 4'b0000;
    assign hsync = 1'b0;
    assign vsync = 1'b0;

endmodule
