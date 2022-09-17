`timescale 1ns/1ns
`include "lab2ex1a.v"

module lab2ex1a_input();
reg a,b,c,d;
wire f1,f2;
lab2ex1a uut(a,b,c,d,f1,f2);
initial begin

	$dumpfile("lab2ex1a_input.vcd");
	$dumpvars(0, lab2ex1a_input);
	a=0;b=0;c=0;d=0;
	#20;
	a=0;b=0;c=0;d=1;
	#20;
	a=0;b=0;c=1;d=0;
	#20;
	a=0;b=0;c=1;d=1;
	#20;
	a=0;b=1;c=0;d=0;
	#20;
	a=0;b=1;c=0;d=1;
	#20;
	a=0;b=1;c=1;d=0;
	#20;
	a=0;b=1;c=1;d=1;
	#20;
	a=1;b=0;c=0;d=0;
	#20;
	a=1;b=0;c=0;d=1;
	#20;
	a=1;b=0;c=1;d=0;
	#20;
	a=1;b=0;c=1;d=1;
	#20;
	a=1;b=1;c=0;d=0;
	#20;
	a=1;b=1;c=0;d=1;
	#20;
	a=1;b=1;c=1;d=0;
	#20;
	a=1;b=1;c=1;d=1;
	#20;
	$display("Test Complete");
end
endmodule