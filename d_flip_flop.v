module d_flip_flop (D,Clk, Q,Qnot);
	input D, Clk;
	output reg Q,Qnot;
	always @(posedge Clk) begin
		Q = D;
		Qnot = ~Q;
	end
endmodule



