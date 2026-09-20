module log2
(
    input   wire [7:0] in,
    output  wire [2:0] out
);

assign out = in == 8'b00000001 ? 3'd0 :
             in == 8'b00000010 ? 3'd1 :
             in == 8'b00000100 ? 3'd2 :
             in == 8'b00001000 ? 3'd3 :
             in == 8'b00010000 ? 3'd4 :
             in == 8'b00100000 ? 3'd5 :
             in == 8'b01000000 ? 3'd6 :
             in == 8'b10000000 ? 3'd7 : 
             3'd0;

endmodule