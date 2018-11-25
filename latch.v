module latch(bitIn,clk,bitOut);
  output bitOut;
  input bitIn,clk;
  
  not (bitIn_ ,bitIn);
  nand(cin    ,bitIn,clk),
      (cin_   ,bitIn_,clk);
  nand(bitOut ,cin,bitOut_),
      (bitOut_,cin_,bitOut);
endmodule
