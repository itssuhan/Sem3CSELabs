// code for a 1-bit full adder
module lab4q1b(c_in, x, y, sum, c_out);
    input c_in, x, y;
    output sum, c_out;

    // calculating sum by XORing
    assign sum = c_in ^ x ^ y;

    // calculating carry out by ADDing and ORing
    assign c_out = (x & y) | (y & c_in) | (c_in & x);
endmodule