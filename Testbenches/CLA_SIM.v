`timescale 1ns / 1ps
module CLA_SIM();
parameter bits = 8;

reg [bits-1:0] A,B;
reg Cin;
wire [bits-1:0] Sum;
wire Cout;


//wire [bits-1:0] carries;


CLA #(bits) UUT(
.A(A),
.B(B),
.Cin(Cin),

.Sum(Sum),
.Cout(Cout)
//.carries(carries)
);

initial begin

/*
//4bit tests
{Cin, A, B} = 9'h0_F_1; //overflow
#5 {Cin, A, B} = 9'h0_A_4;
#5 {Cin, A, B} = 9'h1_4_7;
#5 {Cin, A, B} = 9'h0_9_C;
*/


//8 bit tests
{Cin, A, B} = 17'h0_FF_01; //overflow
#5 {Cin, A, B} = 17'h0_AC_47; 
#5 {Cin, A, B} = 17'h1_BD_38;
#5 {Cin, A, B} = 17'h1_EF_27;



end


endmodule
