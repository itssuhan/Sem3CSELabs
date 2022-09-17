module lab2ex1a(a,b,c,d,f1,f2);
//Behavioural Code
input a,b,c,d;
output f1,f2;
assign f1 = (~a & b) | (~b & c) | (b & ~c & ~d) | (c & d);
// Structural Code
and(k1,b,~c,~d);
and(k2,~a,b);
and(k3,c,d);
and(k4,~b,c);
or(f2,k1,k2,k3,k4);
endmodule