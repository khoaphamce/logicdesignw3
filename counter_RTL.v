module counter_RTL(clk, count , RCO);
    input clk;
    output [0:3]count;
    output RCO;
    wire D0, D1, D3, D4, Q0B, Q1B, Q2B, Q3B, A1, A2, Q0, Q1, Q2, Q3;

    dff dff0(.clk(clk), .q(Q0), .qbar(Q0B), .d(Q0B));
    dff dff1(.clk(Q0B), .q(Q1), .qbar(Q1B), .d(Q1B));
    dff dff2(.clk(Q1B), .q(Q2), .qbar(Q2B), .d(Q2B));
    dff dff3(.clk(Q2B), .q(Q3), .qbar(Q3B), .d(Q3B));

    assign count = {Q3, Q2, Q1, Q0};

    assign A1 = (count == 4'b1111) ? 1'b1 : 1'b0;
    assign A2 = (count == 4'b0000) ? 1'b1 : 1'b0;

    assign RCO = (A1 == 1'b1 || A2 == 1'b1) ? 1'b1 : 1'b0;
endmodule