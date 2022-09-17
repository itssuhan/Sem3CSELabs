// code for a 1-bit half adder
module lab4q1a(a, b, sum, c_out);
    input a, b;
    output sum, c_out;
    assign sum = a ^ b;

	// calculating carry out by ADDing and ORing
    assign c_out = (a & b);
endmodule

