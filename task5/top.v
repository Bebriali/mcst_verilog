`timescale 1ns/100ps

module top();
reg     [7:0] val;
wire     res;

mod3 module_of_three(
    .in(val),
    .is_div_3(res)
); 
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, top);
    val = 8'b00000001; #10;
    val = 8'b00000010; #10;
    val = 8'b00000100; #10;
    val = 8'b00001100; #10;
    val = 8'b00000011; #10;

    $finish;
end

endmodule