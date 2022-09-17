module lab2ex2b(a, b, c, d, f1,f2);
input a, b, c, d;
output f1,f2;

//Behavioural Code
assign f1 = (~b|c|d)&(a|~b|~d)&(a|~b|c)&(b|~c|d);

//Structural Code
or(k1,~b,c,d);
or(k2,a,~b,~d);
or(k3,a,~b,c);
or(k4,b,~c,d);
and(f2,k1,k2,k3,k4);
endmodule