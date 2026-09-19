`timescale 1ns / 1ps

module even_num
(
    input wire [31:0] num,
    output wire is_even
);

assign is_even = ~num[0];

endmodule