module mux41structural(a,s,c);
  input[3:0] a;
  input[1:0] s;
  output c;
  wire a0,a1,a2,a3,s0_,s1_;
  
  not(s0_,s[0]);
  not(s1_,s[1]);
  
  and(a0,s0_,s1_,a[0]);
  and(a1,s[0],s1_,a[1]);
  and(a2,s0_,s[1],a[2]);
  and(a3,s[0],s[1],a[3]);
  
  or(c,a0,a1,a2,a3);


endmodule

