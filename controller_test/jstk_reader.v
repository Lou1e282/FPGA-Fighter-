// jstk_reader.v
// Talks to Pmod JSTK over SPI and captures X, Y, and button bits

module jstk_reader (
    input  wire clk,
    input  wire reset,
    
    // SPI master interface
    output reg        spi_start,
    input  wire       spi_busy,
    output reg  [7:0] spi_tx_data,
    input  wire [7:0] spi_rx_data,
    input  wire       spi_done,
    
    // Chip select for this JSTK (active low)
    output reg        cs_n,

    // Output data
    output reg [7:0] jstk_x,
    output reg [7:0] jstk_y,
    output reg       btn1,
    output reg       btn2,
    output reg       btn3,
    output reg       data_valid
);

    reg [3:0] byte_count;

    reg [2:0] state;
    localparam ST_IDLE  = 3'b000;
    localparam ST_START = 3'b001;
    localparam ST_READ  = 3'b010;
    localparam ST_DONE  = 3'b011;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state      <= ST_IDLE;
            cs_n       <= 1'b1;
            spi_start  <= 1'b0;
            spi_tx_data<= 8'h00;
            byte_count <= 4'd0;
            data_valid <= 1'b0;
            jstk_x     <= 8'h80;
            jstk_y     <= 8'h80;
            btn1       <= 1'b0;
            btn2       <= 1'b0;
            btn3       <= 1'b0;
        end else begin
            spi_start  <= 1'b0;
            data_valid <= 1'b0;
            
            case (state)
                ST_IDLE: begin
                    cs_n       <= 1'b0;
                    byte_count <= 4'd0;
                    state      <= ST_START;
                end

                ST_START: begin
                    if (!spi_busy) begin
                        spi_tx_data <= 8'h00;
                        spi_start   <= 1'b1;
                        state       <= ST_READ;
                    end
                end

                ST_READ: begin
                    if (spi_done) begin
                        case (byte_count)
                            4'd0: jstk_x <= spi_rx_data;
                            4'd1: jstk_y <= spi_rx_data;
                            4'd2: begin
                                      btn1 <= spi_rx_data[0];
                                      btn2 <= spi_rx_data[1];
                                      btn3 <= spi_rx_data[2];
                                  end
                            default: ;
                        endcase
                        
                        byte_count <= byte_count + 1;

                        if (byte_count == 4'd10) begin
                            state <= ST_DONE;
                        end else begin
                            if (!spi_busy) begin
                                spi_tx_data <= 8'h00;
                                spi_start   <= 1'b1;
                            end
                        end
                    end
                end

                ST_DONE: begin
                    cs_n       <= 1'b1;
                    data_valid <= 1'b1;
                    state      <= ST_IDLE;
                end

                default: begin
                    state <= ST_IDLE;
                end
            endcase
        end
    end

endmodule
