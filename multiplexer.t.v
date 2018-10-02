// multiplexer Test Bench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMux();

  reg[7:0] I;
  reg[2:0] S;
  wire out;

  multiplexer mux (out, I, S);

  initial begin
    $dumpvars();
    $display("I76543210 | Out | Exp");
    I[7:0] = 8'b10001000;S[2:0]=3'b011; #1000
    $display(" %b | %b   | 1 ", I, out);

    $finish();
    end

  endmodule
