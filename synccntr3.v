module synccntr3(clk,reset,cnt_en,load,load_val,count);
	input clk;
	input reset;
	input cnt_en;
	input load;
	input [2:0] load_val;
	output [2:0] count;
	reg [2:0] count;
	
	always@(posedge clk or posedge reset) begin
		if(reset) 
			count <= 3'b000;
		else if (load) 
			count <= load_val;
		else if (cnt_en) 
			count <= count + "001"; 
	end
endmodule
