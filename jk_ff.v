module jk_ff (j, k, clk, set, reset, q, qb);
    input j, k, clk, reset, set;
    output q, qb;
    reg q, qb;

    always @(negedge clk or negedge set)
    begin
        if (set == 1'b0)
        begin
            q = 1'b1;
            qb = ~q;   
        end
        
        else if (reset == 1'b0)

        begin
            q = 1'b0;
            qb = ~q;
        end

        else

        begin
            if (j == 1'b0 && k == 1'b0) begin q = q; qb = ~q; end
            else
            if (j == 1'b1 && k == 1'b0) begin q = 1'b1; qb = ~q; end
            else
            if (j == 1'b0 && k == 1'b1) begin q = 1'b0; qb = ~q;end 
            else
            if (j == 1'b1 && k == 1'b1) begin q = ~q; qb = ~q; end
        end
    end
endmodule