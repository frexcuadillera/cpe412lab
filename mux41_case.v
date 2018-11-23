module mux41_case(s0,s1,w0,w1,w2,w3,f);
	input s0,s1,w0,w1,w2,w3;
	output reg f;

	always @ (s0,s1,w0,w1,w2,w3) begin
		f = 0;
		case({s1,s0,w3,w2,w1,w0})
		6'b000001: f = 1;
		6'b010010: f = 1;
		6'b100100: f = 1;
		6'b111000: f = 1;
		default: f = 0;		
		endcase
	end
endmodule

