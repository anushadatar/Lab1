`timescale 1 ns / 1 ps
`include "add_sub.v"

/*
Test module for addition and subtraction operations to 
be incorporated into 1-bit ALU.

USES ADDER module from add_sub.v
*/

module add_sub_test();

  reg A;
  reg B;
  reg carryin;
  wire  sum,carryout,overflow;

  add_sub_last adder (sum,carryout,overflow,A,B,carryin);

  initial begin
    // Test exhaustively without carryin.
    A = 1; B = 1; carryin = 0; #1000
    if (sum !== 0) $display("110 sum failed");
    if (carryout !== 1) $display("110 carry failed");
    if (overflow !== 1) $display("110 overflow failed");

    A = 1; B = 0; carryin = 0; #1000
    if (sum !== 1) $display("100 sum failed");
    if (carryout !== 0) $display("100 carry failed");
    if (overflow !== 0) $display("100 overflow failed");

    A = 0; B = 1; carryin = 0; #1000
    if (sum !== 1) $display("010 sum failed");
    if (carryout !== 0) $display("010 carry failed");
    if (overflow !== 0) $display("010 overflow failed");

    A = 0; B = 0; carryin = 0; #1000
    if (sum !== 0) $display("000 sum failed");
    if (carryout !== 0) $display("000 carry failed");
    if (overflow !== 0) $display("000 overflow failed");

    // Test exhaustively with carryin,
    A = 1; B = 1; carryin = 1; #1000
    if (sum !== 1) $display("111 sum failed");
    if (carryout !== 1) $display("111 carry failed");
    if (overflow !== 0) $display("111 overflow failed");

    A = 1; B = 0; carryin = 1; #1000
    if (sum !== 0) $display("101 sum failed");
    if (carryout !== 1) $display("101 carry failed");
    if (overflow !== 0) $display("101 overflow failed");

    A = 0; B = 1; carryin = 1; #1000
    if (sum !== 0) $display("011 sum failed");
    if (carryout !== 1) $display("011 carry failed");
    if (overflow !== 0) $display("011 overflow failed");

    A = 0; B = 0; carryin = 1; #1000
    if (sum !== 1) $display("001 sum failed");
    if (carryout !== 0) $display("001 carry failed");
    if (overflow !== 1) $display("001 overflow failed");

    end
endmodule
