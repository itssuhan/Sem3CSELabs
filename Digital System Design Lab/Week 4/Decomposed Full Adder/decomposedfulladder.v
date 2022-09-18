module decomposedfulladder(x1,y1,CIn,Sum,Cout);
input x1,y1,CIn;
output Sum,Cout;
halfadder stage0(x1,y1,s1,c1);
halfadder stage1(s1,CIn,Sum,c2);
assign Cout = c1|c2;
endmodule

module halfadder(x1,y1,sum,cout);
input x1,y1;
output sum,cout;
assign sum=x1^y1;
assign cout=x1&y1;
endmodule