`timescale 1ns/1ns
`include "bcdtoe3.v"

module bcdtoe3_tb();
reg [3:0] w;
wire [3:0] x;

bcdtoe3 q(w,x);
initial
begin 

    $dumpfile("bcdtoe3_tb.vcd");
    $dumpvars(0,bcdtoe3_tb);

    w = 4'b0000; #20;
    w = 4'b0001; #20;
    w = 4'b0010; #20;
    w = 4'b0011; #20;
    w = 4'b0100; #20;
    w = 4'b0101; #20;
    w = 4'b0110; #20;
    w = 4'b0111; #20;
    w = 4'b1000; #20;
    w = 4'b1001; #20;

    $display("Test Complete");

end
endmodule