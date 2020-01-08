`timescale 1ns / 1ps
module CLL_SIM();
parameter bits = 8;

reg Cin;
reg [bits-1:0] P,G;
wire [bits-1:0] Cout;

CLL UUT(
.Cin(Cin),
.P(P),
.G(G),

.Cout(Cout)
);


initial begin
/*
//Testing 4-bit configuration
{Cin, P, G} = 9'h0_B_A;
# 5 {Cin, P, G} = 9'h1_7_A;
# 5 {Cin, P, G} = 9'h1_C_D;
# 5 {Cin, P, G} = 9'h1_2_9;
*/


//Testing 8-bit configuration
{Cin, P, G} = 17'h0_AB_CD;
#5 {Cin, P, G} = 17'h0_FA_4B;
#5 {Cin, P, G} = 17'h1_BC_AF;
#5 {Cin, P, G} = 17'h1_4B_D9;



end



endmodule