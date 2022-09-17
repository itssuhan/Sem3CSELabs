`timescale 1ns/1ns
`include "labex1.v"

module labex1_input();
reg a,b,c,d;
wire f;

labex1 uut(a,b,c,d,f); 
initial begin

	$dumpfile("labex1_input.vcd");
	$dumpvars(0, labex1_input);

	a=0;
	b=0;
	c=0;
	d=0;
	#20;
	
	a=0;
	b=0;
	c=0;
	d=1;
	#20;
	
	a=0;
	b=0;
	c=1;
	d=0;
	#20;
	
	a=0;
	b=0;
	c=1;
	d=1;
	#20;
	
	a=0;
	b=1;
	c=0;
	d=0;
	#20;
	
	a=0;
	b=1;
	c=0;
	d=1;
	#20;
	
	a=0;
	b=1;
	c=1;
	d=0;
	#20;
	
	a=0;
	b=1;
	c=1;
	d=1;
	#20;
	
	a=1;
	b=0;
	c=0;
	d=0;
	#20;
	
	a=1;
	b=0;
	c=0;
	d=1;
	#20;
	
	a=1;
	b=0;
	c=1;
	d=0;
	#20;
	
	a=1;
	b=0;
	c=1;
	d=1;
	#20;
	
	a=1;
	b=1;
	c=0;
	d=0;
	#20;
	
	a=1;
	b=1;
	c=0;
	d=1;
	#20;
	
	a=1;
	b=1;
	c=1;
	d=0;
	#20;	
	
	a=1;
	b=1;
	c=1;
	d=1;
	#20;	
	$display("Test complete");
	
end
endmodule
