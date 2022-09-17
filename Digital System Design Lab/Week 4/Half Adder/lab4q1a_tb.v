`timescale 1ns/1ns
`include "lab4q1a.v"

module lab4q1a_tb;

reg a,b;
wire sum,c_out;

lab4q1a uut(a,b,sum,c_out);
initial begin

	$dumpfile("lab4q1a_.vcd");
	$dumpvars(0,lab4q1a_tb);
	
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
