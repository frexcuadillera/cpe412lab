module fa_tst_;
    reg a3,b3,a2,b2,a1,b1,a0,b0,cin;
    wire s3,s2,s1,s0,cout,c0,c1,c2;
	 
	 initial begin
   {a3,b3,a2,b2,a1,b1,a0,b0,cin} = 0;
   #512 $stop;
	end	
	
    fa_4b fa_tst_4b(a3,b3,a2,b2,a1,b1,a0,b0,cin,s3,s2,s1,s0,cout);
	 
	 always begin
	  #1 {a3,b3,a2,b2,a1,b1,a0,b0,cin} = {a3,b3,a2,b2,a1,b1,a0,b0,cin} + 1;
	 end
endmodule
