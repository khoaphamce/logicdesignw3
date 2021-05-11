module dff(clk, q, qbar, d);
    input clk;
    output q, qbar;
    reg q, qbar;
    input d;

    always @(posedge clk) 
    begin
        if (d == 1'b0 || d ==1'b1)
        begin
            q = d;
        end
        else
        begin
            q = 1'b0;
        end
        qbar = ~q;
    end
endmodule