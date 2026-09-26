`timescale 1ns/1ns

module top();
reg [7:0]	number;

wire [2:0]	result;

hotone2bin log2
(
	.bin 	(number),
	.hotone (result)
);


initial begin
	number	= 1;
	#1
	number	= 4;
	#1
	number	= 128;	
	#1
	number	= 0;	
	#1
	number	= 32;
end

endmodule