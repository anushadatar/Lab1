
module ALU_first
(
output out,
output carryout,
input A,
input B,
input SLT,
input S0,
input S1,
input S2
);
  //code
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
