`timescale 1ns/1ns
`include "decomposedfulladder.v"
module decomposedfulladder_tb();
reg x1,y1,CIn;
wire Sum,Cout;
decomposedfulladder dfa(x1,y1,CIn,Sum,Cout);
initial begin
$dumpfile("decomposedfulladder_tb.vcd");
$dumpvars(0,decomposedfulladder_tb);
x1=1'b0; y1=1'b0; CIn=1'b0; #20;
x1=1'b0; y1=1'b0; CIn=1'b1; #20;
x1=1'b0; y1=1'b1; CIn=1'b0; #20;
x1=1'b0; y1=1'b1; CIn=1'b1; #20;
x1=1'b1; y1=1'b0; CIn=1'b0; #20;
x1=1'b1; y1=1'b0; CIn=1'b1; #20;
x1=1'b1; y1=1'b1; CIn=1'b0; #20;
x1=1'b1; y1=1'b1; CIn=1'b1; #20;

$display("Test Complete");
end
endmodule