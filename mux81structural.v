module mux81structural(a,s,c);
  input[7:0] a;
  input[2:0] s;
  output c;
  wire a0,a1,a2,a3,a4,a5,a6,a7,s0_,s1_,s2_;
  
  not(s0_,s[0]);
  not(s1_,s[1]);
  not(s2_,s[2]);
  
  and(a0, s0_,  s1_,  s2_,  a[0]);
  and(a1, s[0], s1_,  s2_,  a[1]);
  and(a2, s0_,  s[1], s2_,  a[2]);
  and(a3, s[0], s[1], s2_,  a[3]);
  and(a4, s0_,  s1_,  s[2], a[4]);
  and(a5, s[0], s1_,  s[2], a[5]);
  and(a6, s0_,  s[1], s[2], a[6]);
  and(a7, s[0], s[1], s[2], a[7]);
  
  or(c,a0,a1,a2,a3,a4,a5,a6,a7);


endmodule


