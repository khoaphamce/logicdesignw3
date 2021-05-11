`timescale 1ns/1ns
module dff_tb;
    reg clk, d, reset;
    wire q, qbar;

    initial
    begin
        $dumpfile("dff_tb.vcd");
        $dumpvars(0, dff_tb);
    end

    dff flipflop(clk, q, qbar, d, reset);
    always #5 clk = ~clk;

    initial begin
        reset <= 1'b1;
        clk <= 1'b0;
        d <= 1'b0;
        repeat (20) @ (posedge clk)
        begin
            d = ~d;
            #5;
        end
        $finish;
    end
endmodule