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
    $display("R32-----------------------------0 | Overflow | Carryout | SLT | Zero");
    command[2:0]=3'b000; A=32'b01111111111111111111111111111111; B=1; #100000
    $display(" %b   %b", result, overflow);

    command[2:0]=3'b001; A=1; B=1; #100000000
    $display(" %b   %b", result, overflow);

    command[2:0]=3'b001; A=32'b10000000000000000000000000000000; B=1; #100000000
    $display(" %b   %b", result, overflow);

    command[2:0]=3'b011; A=-1; B=-3; #100000000
    $display(" %b   %b", result, overflow);

    command[2:0]=3'b011; A=-1; B=20; #100000000
    $display(" %b   %b", result, overflow);
    end

endmodule
