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
    $dumpvars();
    $display("Out Cout| Eout ECout | Operation");
    S[2:0]=3'b000; carryin=0; A=1; B=1; #100000
    $display("%b   %b   | 0  1 | SUB", out, carryout);

    $finish();
    end

  endmodule
