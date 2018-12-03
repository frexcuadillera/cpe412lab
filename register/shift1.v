module shift1 (bitIn, clk, bitOut);
  output bitOut;
  input bitIn, clk;
  
  not (clk_, clk);
  latch pos (bitIn, clk, t),
        neg (t,     clk_, bitOut);
endmodule

