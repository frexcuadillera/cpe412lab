`timescale 1ps/1ps

module mux81structural_tb;
    reg[7:0] a;
    reg[2:0] s;
    reg a0,a1,a2,a3,a4,a5,a6,a7;
    reg s0,s1,s2;  
    wire c;
    reg [10:0] in;           
            
  
    initial
    in = 11'b00000000000;        

	
	 
    always begin
	  a0 = in[0];                 
	  a1 = in[1];
	  a2 = in[2];
	  a3 = in[3];
	  a4 = in[4];
	  a5 = in[5];
	  a6 = in[6];
	  a7 = in[7];
	  a[0] = a0;
	  a[1] = a1;
	  a[2] = a2;
	  a[3] = a3;
	  a[4] = a4;
	  a[5] = a5;
	  a[6] = a6;
	  a[7] = a7;
	  
	  s0 = in[8];
	  s1 = in[9];
	  s2 = in[10];
	  s[0] = s0;
	  s[1] = s1;
	  s[2] = s2;
	  #1 in = in + 1;                 
    end

    initial #2048 $stop;
    
    mux81structural MUT(a,s,c);
    

endmodule




