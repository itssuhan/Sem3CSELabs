module btog(b,g);
    input [3:0] b;
    output [3:0] g;

    MUX4to1 stage0({1'b0,1'b0,1'b1,1'b1},{b[3],b[2]},g[3]);
    MUX4to1 stage1({1'b0,1'b1,1'b1,1'b0},{b[3],b[2]},g[2]);
    MUX4to1 stage2({b[1],~b[1],b[1],~b[1]},{b[3],b[2]},g[1]);
    MUX4to1 stage3({4{b[1]^b[0]}},{b[3],b[2]},g[0]);

endmodule

module MUX4to1(w,s,f);
    input [0:3] w;
    input [1:0] s;
    output f;
    // reg f;

    // always @(w or s)
    assign f = s[1] ? ( s[0] ? w[3] : w[2] ) : ( s[0] ? w[1] : w[0]);

endmodule