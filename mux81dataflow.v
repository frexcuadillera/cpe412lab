module mux81dataflow(a,s,c);
  input[7:0] a;
  input[2:0] s;
  output c;
  
  assign c = (!s[0]&!s[1]&!s[2]&a[0])|(s[0]&!s[1]&!s[2]&a[1])|(!s[0]&s[1]&!s[2]&a[2])|(s[0]&s[1]&!s[2]&a[3])|
              (!s[0]&!s[1]&s[2]&a[4])|(s[0]&!s[1]&s[2]&a[5])|(!s[0]&s[1]&s[2]&a[6])|(s[0]&s[1]&s[2]&a[7]);
endmodule
