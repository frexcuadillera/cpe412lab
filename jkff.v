module jkff(j,k,clk,reset,q);
	input j;
	input k;
	input clk;
	input reset;
	output q;
	reg q;

	always@(posedge clk or posedge reset)begin
		if(reset == 1'b1)
			q <= 1'b0;
		else
			case({j,k})
			2'b00: q <= q;
			2'b01: q <= 1'b0;
			2'b10: q <= 1'b1;
			2'b11: q <= ~q;
			default: q <= q;
			endcase
	end
endmodule
