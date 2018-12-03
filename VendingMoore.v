module VendingMoore(drink,coin,choice,clk);
  input coin,clk,switch;
  input [3:0] choice;
  output reg [3:0] drink;

   always @(posedge clk)begin //output block
		if(coin) begin
			case(choice)
				1: drink = 1;
				2: drink = 2;
				3: drink = 3;
				4: drink = 4;
				5: drink = 5;
				default: drink  = 0;
			endcase
		end
	end
	
	always @(posedge clk) begin
		case(choice)
			1: if(switch) choice = 2;
			2: if(switch) choice = 3;
			3: if(switch) choice = 4;
			4: if(switch) choice = 5;
			5: if(switch) choice = 1;
		endcase
	end
endmodule 