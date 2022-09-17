`timescale 1ns/1ns
`include "lab4q1b.v"

module lab4q1b_tb;

reg x,y,c_in;
wire sum,c_out;

lab4q1b uut(c_in, x, y, sum, c_out);
initial begin

	$dumpfile("lab4q1b_tb.vcd");
	$dumpvars(0,lab4q1b_tb);
	
	x=0;
	y=0;
    c_in=0;
	#10;
	
	x=0;
	y=0;
    c_in=1;
	#10;

	x=0;
	y=1;
    c_in=0;
	#10;

	x=0;
	y=1;
    c_in=1;
	#10;

	x=1;
	y=0;
    c_in=0;
	#10;

	x=1;
	y=0;
    c_in=1;
	#10;

	x=1;
	y=1;
    c_in=0;
	#10;

	x=1;
	y=1;
    c_in=1;
	#10;
	
	$display("Test complete");
end
endmodule
