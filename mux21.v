module mux21(a,b,s,c);
input a,b,s;
output c;
assign c = s?a:b;
endmodule
