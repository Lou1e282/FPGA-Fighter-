`timescale 1ns/1ps

module player_move_tb;

    // Instantiate the top wrapper (pure Verilog)
    player_move_top top();

    // Waveform dump
    initial begin
        $dumpfile("player_move.vcd");
        $dumpvars(0, player_move_tb);
    end

    // Logger
    task print_state;
        $display("[%0t] pos_x=%0d pos_y=%0d x_lock=%b facing=%b jump=%b move=%b",
            $time,
            top.dut.pos_x,
            top.dut.pos_y,
            top.dut.x_lock,
            top.dut.facing_right,
            top.dut.jump_active,
            top.dut.move_active
        );
    endtask

    initial begin
        // Wait past reset
        #200;
        print_state();

        // --- Move Left ---
        $display("\n--- Move Left ---");
        top.move_left = 1;
        repeat (20) @(posedge top.clk);
        top.move_left = 0;
        print_state();

        // --- Move Right ---
        $display("\n--- Move Right ---");
        top.move_right = 1;
        repeat (20) @(posedge top.clk);
        top.move_right = 0;
        print_state();

        // --- Jump ---
        $display("\n--- Jump ---");
        top.jump = 1;
        @(posedge top.clk);
        top.jump = 0;

        repeat (40) begin
            @(posedge top.clk);
            print_state();
        end

        // --- Test Facing Flip ---
        $display("\n--- Facing Change ---");
        top.opponent_x = 40;
        repeat (10) @(posedge top.clk);
        print_state();

        top.opponent_x = 300;
        repeat (10) @(posedge top.clk);
        print_state();

        $display("\n--- Simulation Finished ---");
        $finish;
    end

endmodule
