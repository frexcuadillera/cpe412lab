module master_slave_d_flip_flop(D,Clock,Q,Qnot);
input D,Clock;
wire Qm,Qs,Clock_;
not(Clock_,Clock);
output Q,Qnot;

d_flip_flop inst1(.D(D),.Clk(Clock_),.Q(Qm));
d_flip_flop inst2(.D(Qm),.Clk(Clock),.Q(Qs),.Qnot(Qnot));

not(Qnot,Q);
assign Qs = Q;
endmodule
