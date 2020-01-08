`timescale 1ns / 1ps
module PFA_SIM();
reg A, B, Cin;
wire S, G, P;


PFA UUT(
.A(A),
.B(B),
.Cin(Cin),
.S(S),
.G(G),
.P(P)

);

initial begin

{A, B, Cin} = 3'd0;
#5 {A, B, Cin} = 3'd1;
#5 {A, B, Cin} = 3'd2;
#5 {A, B, Cin} = 3'd3;
#5 {A, B, Cin} = 3'd4;
#5 {A, B, Cin} = 3'd5;
#5 {A, B, Cin} = 3'd6;
#5 {A, B, Cin} = 3'd7;

end

endmodule