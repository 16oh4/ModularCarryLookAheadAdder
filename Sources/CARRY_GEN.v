`timescale 1ns / 1ps

//Calculates the carry using generate, propagate, and carry in bits
module CARRY_GEN(
    input G, P, Cin,
    output Cout    
);

assign Cout = G | P&Cin; //wire out carry calculation

endmodule