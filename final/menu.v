`timescale 1ns / 1ps

module menu_select #(
    parameter NUM_TEMPLATES = 4,      // number of selectable templates
    parameter CNT_WIDTH = 2           // log2(NUM_TEMPLATES)
)(
    input  wire        clk,           // system clock
    input  wire        reset,         // async reset
    input  wire        up_btn,        // increment (next template)
    input  wire        down_btn,      // decrement (previous template)
    input  wire        confirm_btn,   // confirm selection
    output reg  [CNT_WIDTH-1:0] selection,   // current menu selection
    output reg         confirmed      // high when selection is confirmed
);

    // Internal signal: selection next-state
    reg [CNT_WIDTH-1:0] next_selection;
    reg next_confirmed;

    always @(*) begin
        next_selection = selection;
        next_confirmed = confirmed;

        if (up_btn) begin
            if (selection == NUM_TEMPLATES - 1)
                next_selection = 0;
            else
                next_selection = selection + 1;
            next_confirmed = 0;
        end
        else if (down_btn) begin
            if (selection == 0)
                next_selection = NUM_TEMPLATES - 1;
            else
                next_selection = selection - 1;
            next_confirmed = 0;
        end
        else if (confirm_btn) begin
            next_confirmed = 1;
        end
    end

    // Sequential logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            selection <= 0;
            confirmed <= 0;
        end else begin
            selection <= next_selection;
            confirmed <= next_confirmed;
        end
    end

endmodule
