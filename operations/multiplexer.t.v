// multiplexer Test Bench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

/*
Tests multiplexer exhaustively.
*/
module testMux();

  reg[7:0] I;
  reg[2:0] S;
  wire out;

  multiplexer mux (out, I, S);

  initial begin

    I[7:0] = 8'b00000001; S[2:0] = 3'b000; #1000
    if (out !== 1) $display("000 failed");

    I[7:0] = 8'b00000010; S[2:0] = 3'b001; #1000
    if (out !== 1) $display("001 failed");

    I[7:0] = 8'b00000100; S[2:0] = 3'b010; #1000
    if (out !== 1) $display("010 failed");

    I[7:0] = 8'b00001000; S[2:0] = 3'b011; #1000
    if (out !== 1) $display("011 failed");

    I[7:0] = 8'b00010000; S[2:0] = 3'b100; #1000
    if (out !== 1) $display("100 failed");

    I[7:0] = 8'b00100000; S[2:0] = 3'b101; #1000
    if (out !== 1) $display("101 failed");

    I[7:0] = 8'b01000000; S[2:0] = 3'b110; #1000
    if (out !== 1) $display("110 failed");

    I[7:0] = 8'b10000001; S[2:0] = 3'b111; #1000
    if (out !== 1) $display("111 failed");
    end

  endmodule
