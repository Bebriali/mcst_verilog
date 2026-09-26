`timescale 1ns/100ps

module top();
reg     [7:0] val;
wire    [2:0] res;

log2 log2_inst(
    .in(val),
    .out(res)
); 
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, top);
    val = 8'b00000001; #10;
    val = 8'b00000010; #10;
    val = 8'b00000100; #10;
    val = 8'd128; #10;

    $finish;
end

endmodule