`timescale 1ns/1ns
`include "addsub.v"
module addsub_tb();
reg c_in, x3, x2, x1, x0, y3, y2, y1, y0;
wire s3, s2, s1, s0, carryout;
addsub uut(c_in, x3, x2, x1, x0, y3, y2, y1, y0, s3, s2, s1, s0, carryout);
initial begin
$dumpfile("addsub_tb.vcd");
$dumpvars(0, addsub_tb);
c_in=1'b0;
x0=1'b1; x1=1'b0; x2=1'b1; x3=1'b0; //x0 is LSB and x3 is MSB
y0=1'b1; y1=1'b0; y2=1'b1; y3=1'b0; //y0 is LSB and y3 is MSB
#20;
c_in=1'b0;
x0=1'b1; x1=1'b1; x2=1'b1; x3=1'b0;
y0=1'b0; y1=1'b0; y2=1'b0; y3=1'b1;
#20;
$display("Test complete");
end 
endmodule