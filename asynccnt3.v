module asynccnt3(clk,reset,count);
	input clk,reset;
	output [2:0] count;
	tff a1 (.t(1'b1), .clk(clk)     ,.reset(reset), .q(count[0]));
	tff a2 (.t(1'b1), .clk(count[0]),.reset(reset), .q(count[1]));
	tff a3 (.t(1'b1), .clk(count[1]),.reset(reset), .q(count[2]));
endmodule
