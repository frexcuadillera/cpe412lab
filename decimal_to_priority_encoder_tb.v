`timescale 1ps/1ps
module decimal_to_priority_encoder_tb;
reg [9:0]d;
wire [3:0] q;

initial begin
d = 10'b0000000000;
#1 d = 10'b0000000001;
#1 d = 10'b0000000010;
#1 d = 10'b0000000101;
#1 d = 10'b0000001010;
#1 d = 10'b0000010101;
#1 d = 10'b0000101010;
#1 d = 10'b0001010101;
#1 d = 10'b0010101001;
#1 d = 10'b0101010101;
#1 d = 10'b1010101010;
#1 $stop;
end

decimal_to_priority_encoder MUT(d,q);

endmodule
