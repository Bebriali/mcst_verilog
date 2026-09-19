module \decoder3->8 (
    input  [2:0] in,
    output [7:0] out
);

assign out = 1'b1 << in;

endmodule