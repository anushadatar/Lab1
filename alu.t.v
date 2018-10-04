//ALU Test Bench
`timescale 1 ns / 1 ps
`include "alu.v"

module testAlu();

  reg A, B, carryin;
  reg[2:0] S;

  wire out, carryout;
  wire[7:0] I;
  wire[7:0] IF;

  ALU_1bit alu (out, carryout, IF, A, B, carryin, S);

  initial begin
<<<<<<< HEAD
    $dumpvars();
    $display("Out Cout| Eout ECout | Operation");
    S[2:0]=3'b000; carryin=0; A=1; B=1; #100000
    $display("%b   %b   | 0  1 | SUB", out, carryout);
=======

    $display("Out Cout| Exp | Operation");
    S[2:0]=3'b010; carryin=0; A=1; B=0; #100000
    $display("%b   %b | 1  0 | Add", out, carryout);
>>>>>>> dcbd83d0fd421fa3fc924d8ec5bdb62e3a605630

    end

  endmodule
