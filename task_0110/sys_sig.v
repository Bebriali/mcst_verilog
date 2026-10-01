module sys_sig(
    output reg clk,
    output reg reset
);

    // Инициализация сигналов
    initial begin
        clk = 1'b0;
        reset = 1'b1;
        #15 reset = 1'b0; // Снимаем сброс через 15 единиц времени
    end

    // Генерация тактового сигнала (период = 10 единиц)
    always #5 clk = ~clk;

endmodule