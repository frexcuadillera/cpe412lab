module demux18_behavioural(in,en,s0,s1,s2,o);
  input en,in,s0,s1,s2;
  output reg [7:0]o;
  
  always @(en or in or s0 or s1 or s2) begin
	o = 8'b00000000;
	if(en == 1)begin
		if(in == 1)begin
			case({s2,s1,s0})
			0: o[0] = 1;
			1: o[1] = 1;
			2: o[2] = 1;
			3: o[3] = 1;
			4: o[4] = 1;
			5: o[5] = 1;
			6: o[6] = 1;
			7: o[7] = 1;
			endcase
		end
	end
	else begin
	o = 8'b00000000;
	end
  end
endmodule

