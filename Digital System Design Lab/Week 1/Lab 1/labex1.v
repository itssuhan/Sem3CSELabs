module labex1(a,b,c,d,f);
input a,b,c,d;
output f;
and(k1,a,b);
and(k2,a,b);
or(k3,k1,c);
or(k4,c,k2);
and(k5,~k3,d);
or(k6,d,k4);
and(f,k5,k6);
endmodule
