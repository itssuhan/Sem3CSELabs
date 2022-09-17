module lab4q1c(a,b,Cin,s,Cout);
input a,b,Cin;
output s,Cout;
halfadd stage0(a,b,s0,c0);
halfadd stage1(s0,Cin,s,c1);
assign Cout = (c0|c1);
endmodule

module halfadd(a,b,s,Cout);
input a,b;
output s,Cout;
assign s = a^b;
assign Cout = a&b;
endmodule