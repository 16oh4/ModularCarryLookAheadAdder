`timescale 1ns / 1ps

//Wrapper for Carry-Lookahead-Logic and Partial Full Adders
module CLA #(parameter bits = 8) ( //parameter to specify number of bits for adder
input [bits-1:0] A, B, //augend and addend
input Cin,  //first carry in

output [bits-1:0] Sum, //sum output
output Cout //carry out bit

//output [bits-1:0]carries //for testbench
);

wire [bits-1:0]P_in, G_in; //wire bus for propagate and generate bits
wire [bits-1:0]carries; //wire bus for carry bits

assign Cout = carries[bits-1]; //propagate last carry out from msb of carries bus

//create partial full adder instance for the first bit to incorporate Cin
PFA PFA0(
.A(A[0]),
.B(B[0]),
.Cin(Cin),

.P(P_in[0]),
.G(G_in[0]),
.S(Sum[0])

);

genvar i;
generate //Instantiate N PFA's for bits
    for(i=1; i<bits; i=i+1) begin : PFAS
        PFA PFA_I(
            .A(A[i]),
            .B(B[i]),
            .Cin(carries[i-1]),
            
            .P(P_in[i]),
            .G(G_in[i]),
            .S(Sum[i])        
        );    
    end
endgenerate

//Instantiate Carry-Lookahead-Logic block
CLL #(.bits(bits)) CLL_INST(
.Cin(Cin),
.P(P_in),
.G(G_in),

.Cout(carries)
);

endmodule