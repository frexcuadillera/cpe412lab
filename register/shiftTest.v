module shiftTest (dataBit, delayedBit, clk);
  output dataBit;
  input delayedBit;
  input clk;
  reg dataBit;
  
  task emitBits;
    input  [7:0] bits, n;
    begin
     repeat (n) begin
        dataBit = bits[0];
        bits = bits >> 1;
      @(negedge clk);
      end
    end
  endtask
  
  always@(posedge clk)
	$strobe($stime," dataBit: %b delayedBit: %b", dataBit, delayedBit);
  
  initial begin
    emitBits(0, 1);
    emitBits('b10010, 5);
    emitBits('b101101, 6);
    emitBits('b01, 2);
    emitBits(8'b00000010, 8);
    $finish;
  end
endmodule

