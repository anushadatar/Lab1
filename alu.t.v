//ALU Test Bench
`timescale 1 ns / 1 ps
`include "alu.v"

module testAlu();

  reg A, B, carryin;
  reg[2:0] S;

  wire out, carryout;

  ALU_1bit alu (out, carryout, A, B, carryin, S);

  initial begin

    $display("Out Cout| Exp | Operation");
    S[2:0]=3'b010; carryin=0; A=1; B=0; #100000
    $display("%b   %b | 1  0 | Add", out, carryout);

    end

  endmodule
