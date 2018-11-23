`timescale 1ps/1ps
module gated_d_latch(d,clk,qa,qb);
	input d,clk;
	output reg qa,qb;

	always @(posedge clk)begin
		if(d==1)begin
			qa = 1;
			qb = 0;
		end
		else begin
			qa = 0;
			qb = 1;		
		end
	end			
endmodule
