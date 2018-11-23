module fa_4b(a3,b3,a2,b2,a1,b1,a0,b0,cin,s3,s2,s1,s0,cout);
input a3,b3,a2,b2,a1,b1,a0,b0,cin;
output s3,s2,s1,s0,cout;
wire c0,c1,c2;

assign s0 = a0^b0^cin;
assign c0 = (a0&b0)|(b0&cin)|(a0&cin);

assign s1 = a1^b1^c0;
assign c1 = (a1&b1)|(b1&c0)|(a1&c0);

assign s2 = a2^b2^c1;
assign c2 = (a2&b2)|(b2&c1)|(a2&c1);

assign s3 = a3^b3^c2;
assign cout = (a3&b3)|(b3&c2)|(a3&c2);

endmodule




