module lab2ex1b(a, b, c, d, f1,f2);
input a, b, c, d;
output f1,f2;

//Behavioural Code
assign f1 = (~b & d) | (~b & c) | (b & ~c & ~d);

//Structural Code
and(k1,b,~c,~d);
and(k2,~b,d);
and(k3,~b,c);
or(f2,k1,k2,k3);
endmodule