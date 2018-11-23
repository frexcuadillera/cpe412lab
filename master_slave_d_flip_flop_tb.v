`timescale 1ps/1ps
module master_slave_d_flip_flop_tb;
	reg D,Clock;
	wire Q,Qnot;
	
	always begin
	#10 Clock=~Clock;
	end
	
	initial begin
	Clock = 0;
	D = 0;
	#13 D =1;
	#10 D =0;
	#22 D =1;
	#70 $stop;
	end
	
	master_slave_d_flip_flop MUT(.D(D),.Clock(Clock),.Q(Q),.Qnot(Qnot));
endmodule


