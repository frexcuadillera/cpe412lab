module test;
  wire dataIn, dataOut, clk;
  
  shift4 s4(dataIn, dataOut,clk);
  clkGen #(10) cg (clk);
  shiftTest at(dataIn,dataOut,clk);
endmodule
