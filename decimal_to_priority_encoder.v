module decimal_to_priority_encoder(d,q);
	input [9:0]d;
	output reg [3:0] q;

	always @(*)begin
		q = 4'bx;
		
		casex(d) 
      10'b0000000001: q = 0;
      10'b000000001?: q = 1;
      10'b00000001??: q = 2;
      10'b0000001???: q = 3;
      10'b000001????: q = 4;
      10'b00001?????: q = 5;
      10'b0001??????: q = 6;
      10'b001???????: q = 7;
      10'b01????????: q = 8;
      10'b1?????????: q = 9;
		default: q = 4'bx;
		endcase
	end
endmodule

