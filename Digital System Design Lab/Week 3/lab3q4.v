	// Expression = A'D + C'D
	
module lab3q4(a, b, c, d, f, f2);
    input a, b, c, d;
    output f, f2;

    assign f = ~(~(~a & d)) | ~(~(~c & d));

    nor(g1, d);
    nor(g2, ~c, ~a);
    nor(f2, g1, g2);
endmodule