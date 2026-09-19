`timescale 1ns/100ps

module top();
reg     [2:0] val;
wire    [7:0] res;

\decoder3->8 decoder(
    .in(val),
    .out(res)
); 
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, top);
    val = 3; #10;
    val = 8; #10;
    val = 7; #10;
    val = 5; #10;

    $finish;
end

endmodule