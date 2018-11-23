`timescale 1ps/1ps   // predefined timescale

module circuit_test; //module name

reg in1, in2, in3, in4; // 4 pin inputs
wire out; // output

initial begin // set every input as initial 0
in1 = 0;
in2 = 0;
in3 = 0;
in4 = 0;
end

//since 4 inputs are used, use 4 always block for each inputs with 1,2,4,8... delays
//remember that the 1 cycle for each inputs is twice the delay time, Example: in1 will took 2 time units to complete 1 cycle


always begin
#1 in1 = ~in1;
end

always begin
#2 in2 = ~in2;
end

always begin
#4 in3 = ~in3;
end

always begin
#8 in4 = ~in4;
end

initial #16 $stop;   // stop after 16 time for 4 pin inputs, in general, use the formula stop_time = 2^n_inputs, in this example, 

circuit circuit_t(in1,in2,in3,in4,out); //module

endmodule