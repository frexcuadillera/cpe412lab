module clkGen(clk);
  parameter period = 2;
  output clk;
  reg clk;
  
  initial clk = 0;
  always #(period/2) clk = ~clk;
endmodule
