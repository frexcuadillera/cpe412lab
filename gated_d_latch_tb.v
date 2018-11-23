`timescale 1ps/1ps
module gated_d_latch_tb;
	reg d,clk;
	wire qa,qb;

	always #50 clk = ~clk;
	
	initial begin
			clk = 0;
	        d = 0;
		#20  d = 0;
		#20  d = 1;
		#80  d = 0;
		#100 d = 1;
		#60  d = 0;
		#40  d = 1;
		#20  d = 0;
		#40  d = 1;
		#40  d = 0;
		#20  $stop;
	end

	gated_d_latch MUT(.d(d),.clk(clk),.qa(qa),.qb(qb));

endmodule

