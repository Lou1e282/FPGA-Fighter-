// spi_master_simple.v
// Simple SPI master, mode 0, MSB first, about 1 MHz on 100 MHz clock

module spi_master_simple (
    input  wire clk,
    input  wire reset,
    input  wire start,
    output reg  busy,
    input  wire [7:0] tx_data,
    output reg  [7:0] rx_data,
    output reg  done,
    output reg  spi_mosi,
    input  wire spi_miso,
    output reg  spi_sck,
    output reg  spi_cs_n
);

    localparam CLK_DIV = 50;  // 100 MHz / (2 * 50) = 1 MHz

    reg [7:0] shift_tx;
    reg [7:0] shift_rx;
    reg [2:0] bit_cnt;
    reg [15:0] div_cnt;

    reg [1:0] state;
    reg [1:0] next_state;

    localparam S_IDLE  = 2'b00;
    localparam S_LOAD  = 2'b01;
    localparam S_TRANS = 2'b10;
    localparam S_DONE  = 2'b11;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state    <= S_IDLE;
            busy     <= 1'b0;
            done     <= 1'b0;
            spi_cs_n <= 1'b1;
            spi_sck  <= 1'b0;
            spi_mosi <= 1'b0;
            shift_tx <= 8'h00;
            shift_rx <= 8'h00;
            bit_cnt  <= 3'd0;
            div_cnt  <= 16'd0;
        end else begin
            state <= next_state;

            case (state)
                S_IDLE: begin
                    done    <= 1'b0;
                    spi_sck <= 1'b0;
                    div_cnt <= 16'd0;
                end

                S_LOAD: begin
                    busy     <= 1'b1;
                    spi_cs_n <= 1'b0;
                    shift_tx <= tx_data;
                    shift_rx <= 8'h00;
                    bit_cnt  <= 3'd7;
                    spi_mosi <= tx_data[7];
                    spi_sck  <= 1'b0;
                    div_cnt  <= 16'd0;
                end

                S_TRANS: begin
                    if (div_cnt == CLK_DIV - 1) begin
                        div_cnt <= 16'd0;
                        spi_sck <= ~spi_sck;

                        if (spi_sck == 1'b0) begin
                            shift_rx <= {shift_rx[6:0], spi_miso};
                            if (bit_cnt != 3'd0) begin
                                bit_cnt <= bit_cnt - 1;
                            end
                        end else begin
                            shift_tx <= {shift_tx[6:0], 1'b0};
                            spi_mosi <= shift_tx[6];
                        end
                    end else begin
                        div_cnt <= div_cnt + 1;
                    end
                end

                S_DONE: begin
                    busy     <= 1'b0;
                    done     <= 1'b1;
                    spi_cs_n <= 1'b1;
                    spi_sck  <= 1'b0;
                    rx_data  <= shift_rx;
                end
            endcase
        end
    end

    always @(*) begin
        next_state = state;

        case (state)
            S_IDLE: begin
                if (start)
                    next_state = S_LOAD;
            end

            S_LOAD: begin
                next_state = S_TRANS;
            end

            S_TRANS: begin
                if ((bit_cnt == 3'd0) && (spi_sck == 1'b0) && (div_cnt == CLK_DIV - 1))
                    next_state = S_DONE;
            end

            S_DONE: begin
                next_state = S_IDLE;
            end
        endcase
    end

endmodule
