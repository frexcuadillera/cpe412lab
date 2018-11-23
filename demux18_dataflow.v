module demux18_dataflow(in,en,s0,s1,s2,o);
input in,en,s0,s1,s2;
output[7:0]o;

assign o[0] = en&in&~s0& ~s1&~s2;
assign o[1] = en&in& s0& ~s1&~s2;
assign o[2] = en&in&~s0&  s1&~s2;
assign o[3] = en&in& s0&  s1&~s2;
assign o[4] = en&in&~s0& ~s1& s2;
assign o[5] = en&in& s0& ~s1& s2;
assign o[6] = en&in&~s0&  s1& s2;
assign o[7] = en&in& s0&  s1& s2;
endmodule
