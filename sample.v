module sample(a,b,c,d,o);

input a,b,c,d;
output o;
wire ab,cd;

and g1(ab,a,b);
and g2(cd,c,d);
nor g3(o,ab,cd);

endmodule
