module lab2ex3(a, b, c, d, f1,f2);
input a, b, c, d;
output f1,f2;

//Behavioural Code
assign f1 = (a&b&c)|(d&b&c)|(a&b&d)|(a&d&c);

//Structural Code
and(k1,a,b,c);
and(k2,d,b,c);
and(k3,a,b,d);
and(k4,a,d,c);
or(f2,k1,k2,k3,k4);
endmodule