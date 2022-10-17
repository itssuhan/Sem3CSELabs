module dec3to8(w ,en, f);
    input [2:0] w;
    input en;
    output [7:0] f;
    dec2to4 stage0 (w[1:0], (~w[2] & en), f[3:0]);
    dec2to4 stage1 (w[1:0], (w[2] & en), f[7:4]);

endmodule

module dec2to4(w, en, f);
    input [1:0] w;
    input en; 
    output [3:0] f;
    reg [3:0] f;
    always @ (w or en)
    begin
    if (en == 1)
    begin
    if (w == 2'b00)
        f = 4'b0001;
    if (w == 2'b01)
        f = 4'b0010;
    if (w == 2'b10)
        f = 4'b0100;
    else 
        f = 4'b1000;
    end
    end

endmodule

