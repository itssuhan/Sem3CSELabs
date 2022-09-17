    // Expression = (B'+D)(A'+B')(C'+D')

module lab3q2(a, b, c, d, f, f2);
    input a, b, c, d;
    output f,f2;

	//Behavioural Code
	assign f = ~(~(~b|d)) & ~(~(~a|~b)) & ~(~(~c|~d));

	//Structural Code
    nor(g1, ~b, d);
    nor(g2, ~a, ~b);
    nor(g3, ~c, ~d);
    nor(f2, g1, g2, g3);
endmodule