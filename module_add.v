module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c1,c2;
    wire [15:0]s1,s2;
    
    add16 a1(a[15:0],b[15:0],0,s1,c1);
    add16 a2(a[31:16],b[31:16],c1,s2,c2);
    
    assign sum = {s2,s1};

endmodule
