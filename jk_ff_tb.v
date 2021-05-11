`timescale 1ns/1ns
module jk_ff_tb;
    reg j, k, clk, reset, set;
    wire q, qb;

    initial
    begin
        $dumpfile("jk_ff_tb.vcd");
        $dumpvars(0, jk_ff_tb);
    end

    jk_ff uut(j, k, clk, set, reset, q, qb);

    initial
    begin
        clk = 1'b1; 
        #5;
        clk = ~clk;
        j = 1'b1; k = 1'b0; set = 1'b1; reset = 1'b1; #5;
        clk = ~clk;
        #5;
        clk = ~clk;
        j = 1'b0; k = 1'b1; set = 1'b1; reset = 1'b1; #5;
        clk = ~clk;
        #5;
        clk = ~clk;
        j = 1'b0; k = 1'b0; set = 1'b1; reset = 1'b1; #5;
        clk = ~clk;
        #5;
        clk = ~clk;
        j = 1'b1; k = 1'b1; set = 1'b1; reset = 1'b1; #5;
        clk = ~clk;
        #5;
        clk = ~clk;
        j = 1'b0; k = 1'b0; set = 1'b1; reset = 1'b1; #5;
        clk = ~clk;
        #5;
        clk = ~clk;
        j = 1'b1; k = 1'b1; set = 1'b1; reset = 1'b0; #5;
        clk = ~clk;
        #5;
        clk = ~clk;
        j = 1'b1; k = 1'b1; set = 1'b0; reset = 1'b1; #5;
        clk = ~clk;
        #5;
        clk = ~clk;
        j = 1'b1; k = 1'b1; set = 1'b0; reset = 1'b0; #5;
        clk = ~clk;
        #5
        clk = ~clk;
        set = 1'b1; reset = 1'b0; #5;
        clk = ~clk;
        #2;
        set = 1'b0;
        #5;
        $finish;
    end
endmodule