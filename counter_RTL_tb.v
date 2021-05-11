`timescale 1ns/1ns
module counter_RTL_tb;
    wire RCO;
    wire [0:3]count;
    reg clk;

    initial
    begin
       $dumpfile("counter_RTL_tb.vcd");
       $dumpvars(0, counter_RTL_tb); 
    end

    counter_RTL uut(clk, count, RCO);
    always #5 clk = ~clk;

    initial
    begin
        clk = 1'b1;
        #5;
        //repeat (1) @ (posedge clk);
        repeat (30) @ (posedge clk);
        $finish;
    end
endmodule