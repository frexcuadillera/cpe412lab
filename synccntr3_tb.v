module synccntr3_tb;
	reg  clk,reset,cnt_en,load;
	reg [2:0] load_val;
	wire [2:0] count;
	
	always #1 clk = ~clk;
	
	initial begin
	clk = 0;
	reset = 1;
	load = 0;
	load_val = 3'b100;
	cnt_en = 1;
	#2 reset = 0;
	#50 $stop;
	end
	
	initial begin
	#11 cnt_en = 0;
	#5 cnt_en = 1;
	end
	
	initial begin
	#23 load = 1;
	#2 load = 0;
	end
	
	initial begin
	#39 reset = 1;
	#2 reset = 0;
	end
	
	synccntr3  MUT(clk,reset,cnt_en,load,load_val,count);
	
endmodule
