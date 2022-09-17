module addsub(c_in, x3, x2, x1, x0, y3, y2, y1, y0, sum3, sum2, sum1, sum0, c_out);
    input c_in, x3, x2, x1, x0, y3, y2, y1, y0;
    output sum3, sum2, sum1, sum0, c_out;   
    full_adder stage0(c_in, x0, y0^c_in, sum0, carry1);
    full_adder stage1(carry1, x1, y1^c_in, sum1, carry2);
    full_adder stage2(carry2, x2, y2^c_in, sum2, carry3);
    full_adder stage3(carry3, x3, y3^c_in, sum3, c_out);
endmodule

module full_adder(c_in, x, y, sum, c_out);
    input c_in, x, y;
    output sum, c_out;

    assign sum = c_in ^ x ^ y;
    assign c_out = (x & y) | (y & c_in) | (c_in & x);
endmodule


// module 4bitadder(// Add a 4bit Adder //) //