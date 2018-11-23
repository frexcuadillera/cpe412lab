module fa_tst_;
    reg a3,b3,a2,b2,a1,b1,a0,b0,cin;
    wire s3,s2,s1,s0,cout,c0,c1,c2;
	 
	 initial begin
	 a3 = 0;
	 b3 = 0;
	 a2 = 0;
	 b2 = 0;
	 a1 = 0;
	 b1 = 0;
	 a0 = 0;
	 b0 = 0;
	 cin = 0;
	end	
	
    fa_4b fa_tst_4b(a3,b3,a2,b2,a1,b1,a0,b0,cin,s3,s2,s1,s0,cout);
	 
	 always begin
	  #1 a3 = ~a3;
	 end
	 
	 always begin
	  #2 b3 = ~b3;
	 end
	 
	 always begin
	  #4 a2 = ~a2;
	 end
	 
	 always begin
	  #8 b2 = ~b2;
	 end
	 
	 always begin
	  #16 a1 = ~a1;
	 end
	
	 always begin
	  #32 b1 = ~b1;
	 end
	 
	 always begin
	  #64 a0 = ~a0;
	 end
	 
	 always begin
	  #128 b0 = ~b0;
	 end 
	 
	 always begin
	  #256 cin = ~cin;
	 end
endmodule
