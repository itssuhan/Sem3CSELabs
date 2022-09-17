module labex2(a,b,c,d,f,g);
input a,b,c,d;
output f,g;
assign f=(d^~(a&b)^c);
assign g=(~(b|c|d));
endmodule
