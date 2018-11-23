`timescale 1ps/1ps
module dec_to_bin_encoder_tb;
	reg [9:0] I;
	wire [3:0] Y;
	
	initial begin
		I = 1;
		#10 $stop;
	end
	
	always begin
	#1 I = I * 2;
	end
	
	dec_to_bin_encoder MUT(.I(I),.Y(Y));
endmodule
