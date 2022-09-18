module struct(a,b,c);
input a,b;
output c;
and(k1,a,b);
and(k2,~a,~b);
or(c,k1,k2);
endmodule