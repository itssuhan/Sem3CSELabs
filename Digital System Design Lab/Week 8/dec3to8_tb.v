`timescale 1ns/1ns
`include "dec3to8.v"

module dec3to8_tb();
reg [2:0] w;
reg en;
wire [7:0] f;

dec3to8 dec(w,en,f);
initial
begin 

    $dumpfile("dec3to8_tb.vcd");
    $dumpvars(0, dec3to8_tb);

    en = 1; w = 3'b000; #20;
    en = 1; w = 3'b001; #20;
    en = 1; w = 3'b010; #20;
    en = 1; w = 3'b011; #20;
    en = 1; w = 3'b100; #20;
    en = 1; w = 3'b101; #20;
    en = 1; w = 3'b110; #20;
    en = 1; w = 3'b111; #20;

    $display("Test Complete");

end
endmodule