module shift4 (dataIn, clk, dataOut);
  output dataOut;
  input dataIn, clk;
  wire [2:0] shiftreg;
  
  shift1 s0 (dataIn     , clk, shiftreg[0]);
  shift1 s1 (shiftreg[0], clk, shiftreg[1]);
  shift1 s2 (shiftreg[1], clk, shiftreg[2]);
  shift1 s3 (shiftreg[2], clk, dataOut);
endmodule

