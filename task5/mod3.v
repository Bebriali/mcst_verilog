module mod3
(
    input [15:0] in,
    output is_div_3
);
    wire [3:0] sum_even = {3'b000, in[0]} + {3'b000, in[2]} +
                          {3'b000, in[4]} + {3'b000, in[6]} +
                          {3'b000, in[8]} + {3'b000, in[10]} +
                          {3'b000, in[12]} + {3'b000, in[14]};
    wire [3:0] sum_odd  = {3'b000, in[1]} + {3'b000, in[3]} +
                          {3'b000, in[5]} + {3'b000, in[7]} +
                          {3'b000, in[9]} + {3'b000, in[11]} +
                          {3'b000, in[13]} + {3'b000, in[15]};
    wire  div_even;
    wire  div_odd;

    xmod3 is_div_even(.xin(sum_even), .xis_div_3(div_even));
    xmod3 is_div_odd (.xin(sum_odd),  .xis_div_3(div_odd));

    assign is_div_3 = (div_even == div_odd);
endmodule


// добавка 'x' к названию модуля и переменных как extra
// не уверен, что можно как то доработать нейминг
module xmod3
(
    input [3:0] xin,
    output xis_div_3
);
    wire [1:0] sum_even = xin[0] + xin[2];
    wire [1:0] sum_odd  = xin[1] + xin[3];

    assign xis_div_3 = (sum_even == sum_odd);
endmodule

