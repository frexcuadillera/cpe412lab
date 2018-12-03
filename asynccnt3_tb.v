`timescale 1ps/1ps
module asynccnt3_tb;
	reg clk,reset;
	wire [2:0] count;
	
	always #1 clk = ~clk;
	
	initial begin
	clk = 0;
	 reset = 0;
	#100 $stop;
	end
	
	asynccnt3 MUT(.clk(clk),.reset(reset), .count(count));
endmodule
