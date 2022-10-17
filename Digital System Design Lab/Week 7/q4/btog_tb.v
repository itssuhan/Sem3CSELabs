`timescale 1ns/1ns
`include "btog.v"

module btog_tb();
reg [3:0] b;
wire [3:0] g;

btog gtb(b,g);
initial 
begin
    $dumpfile("btog_tb.vcd");
    $dumpvars(0,btog_tb);

    b = 4'b1111; #20; //desired output is 0010
    b = 4'b1010; #20; //desired output is 0100

    $display("Test Complete");    
end
endmodule