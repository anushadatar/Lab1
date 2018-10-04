//ALU Test Bench
`timescale 1 ns / 1 ps
`include "alu.v"

module testAlu1bit();

  reg A, B, carryin;
  reg[2:0] S;

  wire out, carryout;

  ALU_1bit alu (out, carryout, A, B, carryin, S);

  initial begin
    $dumpvars();
    $display("Out Carryout| E-Out E-Carryout | Operation");
    S[2:0]=3'b001; carryin=0; A=1; B=1; #10000
    $display("%b   %b       | 0     0          | SUB", out, carryout);

    end

endmodule
