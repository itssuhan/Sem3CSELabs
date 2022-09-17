module lab3q1(a, b, c, d, f, f2);
    input a, b, c, d;
    output f,f2;
    
	//Behavioural Code
	assign f = ~(~(~a&~c))|~(~(~a&d))|~(~(b&~c))|~(~(b&d));

	//Structural Code
    nand(k1, ~a, ~c);
    nand(k2, ~a, d);
    nand(k3, b, ~c);
    nand(k4, b, d);
    nand(f2, k1, k2, k3, k4);

endmodule