`timescale 1 ns / 1 ps
`include "add_sub.v"

/*
Addition and subtraction test.
Uses add_sub module.

*/
module add_sub_test();

  reg A;
  reg B;
  reg carryin;
  wire  sum,carryout;

  add_sub adder (sum,carryout,A,B,carryin);

  initial begin
    A = 1; B = 1; carryin = 0; #1000
    if (sum !== 0) $display("110 sum failed");
    if (carryout !== 1) $display("110 carry failed");

    A = 1; B = 0; carryin = 0; #1000
    if (sum !== 1) $display("100 sum failed");
    if (carryout !== 0) $display("100 carry failed");

    A = 0; B = 1; carryin = 0; #1000
    if (sum !== 1) $display("010 sum failed");
    if (carryout !== 0) $display("010 carry failed");

    A = 0; B = 0; carryin = 0; #1000
    if (sum !== 0) $display("000 sum failed");
    if (carryout !== 0) $display("000 carry failed");

    A = 1; B = 1; carryin = 1; #1000
    if (sum !== 1) $display("111 sum failed");
    if (carryout !== 1) $display("111 carry failed");

    A = 1; B = 0; carryin = 1; #1000
    if (sum !== 0) $display("101 sum failed");
    if (carryout !== 1) $display("101 carry failed");

    A = 0; B = 1; carryin = 1; #1000
    if (sum !== 0) $display("011 sum failed");
    if (carryout !== 1) $display("011 carry failed");

    A = 0; B = 0; carryin = 1; #1000
    if (sum !== 1) $display("001 sum failed");
    if (carryout !== 0) $display("001 carry failed");

    end
endmodule
