module top();

    wire        clk;
    wire        reset;
    wire [2:0]  Q;

    // Модуль генератора тактового сигнала и сброса
    sys_sig sys (clk, reset);

    // Экземпляр делителя частоты
    clk_div divider
    (
        .clk      (clk),
        .reset    (reset),
        .clk_div2 (Q[0]),
        .clk_div4 (Q[1]),
        .clk_div8 (Q[2])
    );

endmodule