`timescale 1ns / 1ps
module CARRY_GEN_SIM();

reg G, P, Cin;
wire Cout;

CARRY_GEN UUT(
.G(G),
.P(P),
.Cin(Cin),

.Cout(Cout)
);

initial begin
{G, P, Cin} = 3'd0;
#5 {G, P, Cin} = 3'd1;
#5 {G, P, Cin} = 3'd2;
#5 {G, P, Cin} = 3'd3;
#5 {G, P, Cin} = 3'd4;
#5 {G, P, Cin} = 3'd5;
#5 {G, P, Cin} = 3'd6;
#5 {G, P, Cin} = 3'd7;

end

endmodule