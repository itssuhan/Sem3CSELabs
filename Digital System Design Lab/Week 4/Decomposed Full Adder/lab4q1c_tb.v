`timescale 1ns/1ns
`include "lab4q1c.v"

module lab4q1c_tb;

reg a,b,Cin;
wire s,Cout;

lab4q1c uut(a,b,Cin,s,Cout);
initial begin

	$dumpfile("lab4q1c_tb.vcd");
	$dumpvars(0,lab4q1c_tb);
	
	a=0;
	b=0;
    Cin=0;
	#10;
	
	a=0;
	b=0;
    Cin=1;
	#10;

	a=0;
	b=1;
    Cin=0;
	#10;

	a=0;
	b=1;
    Cin=1;
	#10;

	a=1;
	b=0;
    Cin=0;
	#10;

	a=1;
	b=0;
    Cin=1;
	#10;

	a=1;
	b=1;
    Cin=0;
	#10;

	a=1;
	b=1;
    Cin=1;
	#10;

	$display("Test complete");
end
endmodule
