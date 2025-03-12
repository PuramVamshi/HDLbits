// synthesis verilog_input_version verilog_2001
module top_module (
    input [7:0] in,
    output reg [2:0] pos );
    always @ (*)
        begin
            casez(in)
                8'bZZZZZZZ1: pos = 3'd0;
                8'bZZZZZZ10: pos = 3'd1;
                8'bZZZZZ100: pos = 3'd2;
                8'bZZZZ1000: pos = 3'd3;
                8'bZZZ10000: pos = 3'd4;
                8'bZZ100000: pos = 3'd5;
                8'bZ1000000: pos = 3'd6;
                8'b10000000: pos = 3'd7;
                default: pos = 3'd0;
            endcase
        end
            

endmodule
