`timescale 1ns/1ps

module top();

    reg  [31:0] test_num;        // Число, которое подаём на вход
    wire        is_even_flag;    // Результат (1 — чётное, 0 — нечётное)

    // Подключаем модуль проверки чётности
    even_num is_number_even (
        .num     (test_num),
        .is_even (is_even_flag)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, top);

        // Тест 1: Чётное число (4)
        test_num = 32'd4;   #10;

        // Тест 2: Нечётное число (7)
        test_num = 32'd7;   #10;

        // Тест 3: Чётное число (100)
        test_num = 32'd100; #10;

        // Тест 4: Нечётное число (13)
        test_num = 32'd13;  #10;

        $finish;
    end

endmodule