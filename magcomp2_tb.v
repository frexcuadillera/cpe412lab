`timescale 1ps/1ps
module magcomp2_tb();
 reg [1:0]a,b;
 wire agtb,aeqb,altb;
 reg [3:0] k;
 
 initial begin
   k = 0;
   #16 $stop;
 end
 
 always begin
   {a,b} = k;
   #1 k = k + 1;
 end
 
 magcomp2 MUT(a,b,agtb,aeqb,altb);
   
endmodule
