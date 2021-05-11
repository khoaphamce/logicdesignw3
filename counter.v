module counter(clk, count , RCO);
    input clk;
    output [0:3]count;
    output RCO;
    wire D0, D1, D3, D4, Q0B, Q1B, Q2B, Q3B, A1, A2;

    dff dff0(.clk(clk), .q(count[3]), .qbar(Q0B), .d(Q0B));
    dff dff1(.clk(Q0B), .q(count[2]), .qbar(Q1B), .d(Q1B));
    dff dff2(.clk(Q1B), .q(count[1]), .qbar(Q2B), .d(Q2B));
    dff dff3(.clk(Q2B), .q(count[0]), .qbar(Q3B), .d(Q3B));

    and And_1(A1, count[0], count[1], count[2], count[3]);
    nor And_2(A2, count[0], count[1], count[2], count[3]);

    or Or_01(RCO, A1, A2);
endmodule