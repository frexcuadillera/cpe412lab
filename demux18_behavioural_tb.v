`timescale 1ps/1ps
module demux18_behavioural_tb();
  reg en,in,s0,s1,s2;
  wire [7:0]o;
  reg[4:0]k;
  
  initial begin
  k = 5'b00000;
  end
  
  always begin
	 s0 = k[0];
	 s1 = k[1];
	 s2 = k[2];
	 in = k[3];
	 en = k[4];
    #1 k = k+1;   
  end
  
  initial #32 $stop;
  
  demux18_behavioural MUT(.in(in),.en(en),.s0(s0),.s1(s1),.s2(s2),.o(o)); 
endmodule

