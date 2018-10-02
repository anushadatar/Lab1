`include "multiplexer.v"
`include "gates.v"
`include "add_sub.v"


`define MUX  multiplexer #10 //this delay could be wrong & this line does not work
`define AND  ALUand
`define OR   ALUor
`define NAND ALUnand

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
  multiplexer mux(out, I, S, );

endmodule

module ALU_last
(
  output out,
  output overflow,
  output carryout,
  output SLT,
  input A,
  input B,
  input carryin,
  input S0,
  input S1,
  input S2
);
  add_sub(sum,carryout,A,B,S0);



  //this is the plan
endmodule

module ALU_1ALU_1bit
(
  output out,
  output carryout,
  input A,
  input B,
  input carryin,
  input S0,
  input S1,
  input S2
);
  add_sub(sum,carryout,A,B,carryin);
  //another plan for you chief
endmodule

module ALU
(
  output[31:0]  result,
  output        carryout,
  output        zero,
  output        overflow,
  input[31:0]   operandA,
  input[31:0]   operandB,
  input[2:0]    command
);
  add_sub_last(sum,carryout,overflow,A,B,carryin);
  // Your code here
endmodule
