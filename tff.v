module tff(t,clk,reset,q);
  input t,reset,clk;
  output reg q;
  
  initial q = 1'b0;
  
  always @(posedge clk,t)begin
    if(clk && !reset)begin
        if(t)
          q <= ~q;
    end
    else
      q <= 1'b0;
  end


endmodule