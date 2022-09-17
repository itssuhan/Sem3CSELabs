`timescale 1ns/1ns
`include "struct.v"

module struct_input;

reg a,b;
wire c;

struct uut(a,b,c);
initial begin

	$dumpfile("struct_input.vcd");
	$dumpvars(0,struct_input);
	
	a=0;
	b=0;
	#10;
	
	a=0;
	b=1;
	#10;
	
	a=1;
	b=0;
	#10;
	
	a=1;
	b=1;
	#10;
	
	$display("Test complete");
end
endmodule
