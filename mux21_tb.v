`timescale 1ps/1ps

module mux21_tb;
    reg a,b;
    reg s;
    wire c;
    
    reg [2:0] in;           
            
  
    initial
    in = 3'b000;        

	
	 
    always begin
    a = in[0];
    b = in[1];
    s = in[2];
	  #1 in = in + 1;                 
    end

    initial #8 $stop;
    
    mux21 MUT(a,b,s,c);
    

endmodule



