module \encoder3->8 (
    input   wire    [7:0] in,
    output  reg     [2:0] out
);

    integer k;

    always @(*) begin
        out = 3'd0;
        
        for (k = 0; k < 8; k = k + 1) begin
            if (in[k]) begin
                out = k[2:0];
            end
        end
    end

endmodule