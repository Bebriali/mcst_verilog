module mod3
(
    input [7:0] in,
    output is_div_3
);
    wire [2:0] sum_even = in[0] + in[2] + in[4] + in[6];
    wire [2:0] sum_odd  = in[1] + in[3] + in[5] + in[7];
    
    wire [1:0] rem_even = (sum_even >= 3) ? (sum_even - 3) : sum_even;
    wire [1:0] rem_odd  = (sum_odd >= 3) ? (sum_odd - 3) : sum_odd;
    
    assign is_div_3 = (rem_even == rem_odd);
endmodule