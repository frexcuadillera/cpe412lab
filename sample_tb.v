`timescale 1ns/1ps

module sample_tb;

reg a,b,c,d;
wire o;

initial begin 
  forever begin
  a = 0;
  #10 a = ~a;
end 


  forever begin
  b = 0;
  #20 b = ~b;
end


  forever begin
  c = 0;
  #40 c = ~c;
end


  forever begin
  d = 0;
  #80 d = ~d;
end end

sample sample(
.a(a),
.b(b),
.c(c),
.d(d),
.o(o)

);

endmodule
