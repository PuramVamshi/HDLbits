module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

wire w1,w2,w3,w4,w5,w6;
    assign w1 = p2a & p2b;
    assign w2 = p2c & p2d;
    assign w3 = p1a & p1b & p1c;
    assign w4 = p1d & p1e & p1f;
    assign w5 = w1 | w2;
    assign w6 = w3 | w4;
    
    assign p1y = w6;
    assign p2y = w5;
endmodule
