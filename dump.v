module ALU_first
(
output out,
output carryout,
input A,
input B,
input SLT,
input S[0:2]
);
  wire I[0:7];

  ALUand and1(I[1], A, B);
  ALUor  or1(I[2], A, B);
  multiplexer mux(out, I, S);

endmodule
