`timescale 1ns/1ns
`include "labex2.v"

module labex2_input();
reg a,b,c,d;
wire f,g;

labex2 uut(a,b,c,d,f,g); 
initial begin

	$dumpfile("labex2_input.vcd");
	$dumpvars(0, labex2_input);

	a=0; b=0; c=0; d=0;
	#20;
	
	a=0; b=0; c=0; d=1;
	#20;
	
	a=0; b=0; c=1; d=0;
	#20;
	
	a=0; b=0; c=1; d=1;
	#20;
	
	a=0; b=1; c=0; d=0;
	#20;
	
	a=0; b=1; c=0; d=1;
	#20;
	
	a=0; b=1; c=1; d=0;
	#20;
	
	a=0; b=1; c=1; d=1;
	#20;
	
	a=1; b=0; c=0; d=0;
	#20;
	
	a=1; b=0; c=0; d=1;
	#20;
	
	a=1; b=0; c=1; d=0;
	#20;
	
	a=1; b=0; c=1; d=1;
	#20;
	
	a=1; b=1; c=0; d=0;
	#20;
	
	a=1; b=1; c=0; d=1;
	#20;
	
	a=1; b=1; c=1; d=0;
	#20;
	
	a=1; b=1; c=1; d=1;
	#20;	
	$display("Test complete");
	
end
endmodule
