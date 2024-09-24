module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire w1,w2;
    wire [31:0]b1;
    add16 a1(a[15:0],b1[15:0],sub,sum[15:0],w1);
    add16 a2(a[31:16],b1[31:16],w1,sum[31:16],w2);
    
    always@(*)
        begin
            if(sub)
                begin 
                    b1 = ~b;
                end
            else
                begin
                    b1 = b;
                end
        end
    

endmodule
