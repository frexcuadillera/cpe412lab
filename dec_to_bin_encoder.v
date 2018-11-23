module dec_to_bin_encoder(I,Y);
	input [9:0] I;
	output reg [3:0] Y;
	
	always@(I)begin
		Y = 4'bx;
		case(I)
		  1: Y = 0;
		  2: Y = 1;
		  4: Y = 2;
		  8: Y = 3;
		 16: Y = 4;
		 32: Y = 5;
		 64: Y = 6;
		128: Y = 7;
		256: Y = 8;
		512: Y = 9;
		default: Y = 4'bx;
		endcase
	end
endmodule



