//ALU Test Bench
`timescale 1 ns / 1 ps
`include "alu.v"

module testAlu();

  reg[31:0] A;
  reg[31:0] B;
  reg[2:0] command;

  wire[31:0] result;
  wire carryout, zero, overflow;

  ALU alu (result, carryout, zero, overflow, A, B, command);

  initial begin
    $dumpvars();
    $display("R32-----------------------------0");
    command[2:0]=3'b100; A=32'b11111111111111111111111111111111; B=32'b10101010101010101010101010101010; #100000
    $display(" %b", result);

    end

endmodule
