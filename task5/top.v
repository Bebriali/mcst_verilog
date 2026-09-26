`timescale 1ns/100ps

module top();
reg     [15:0] val;
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
    val = 16'hffff;    #10;
    val = 16'hdabc;    #10;
    val = 16'hfbac;    #10;
    val = 16'd80;      #10;
    val = 16'd81;      #10;

    $finish;
end

endmodule
