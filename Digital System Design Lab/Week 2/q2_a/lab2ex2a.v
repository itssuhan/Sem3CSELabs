module lab2ex2a(a, b, c, d, f1,f2);
input a, b, c, d;
output f1,f2;

//Behavioural Code
assign f1 = (c|b)&(~b|d);

//Structural Code
or(k1,c,b);
or(k2,~b,d);
and(f2,k1,k2);
endmodule