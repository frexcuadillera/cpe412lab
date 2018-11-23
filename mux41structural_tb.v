`timescale 1ps/1ps

module mux41structural_tb;
    reg[3:0] a;
    reg[1:0] s;
    reg  a0,a1,a2,a3;
    reg s0,s1;  
    wire c;
    reg [5:0] in;           
            
  
    initial
    in = 6'b000000;        

	
	 
    always begin
	  a0 = in[0];                 
	  a1 = in[1];
	  a2 = in[2];
	  a3 = in[3];
	  a[0] = a0;
	  a[1] = a1;
	  a[2] = a2;
	  a[3] = a3;
	  
	  s0 = in[4];
	  s1 = in[5];
	  s[0] = s0;
	  s[1] = s1;
	  #1 in = in + 1;                 
    end

    initial #64 $stop;
    
    mux41structural MUT(a,s,c);
    

endmodule


