`include "multiplexer.v"
`include "gates.v"
`include "add_sub.v"


`define MUX     multiplexer #10 //this delay could be wrong & this line does not work
`define AND     ALUand
`define OR      ALUor
`define NAND    ALUnand
`define XOR     ALUxor
`define NOR     ALUnor

`define ALUBIT  ALU_1bit
`define ALULAST ALU_last
`define ADDSUB  add_sub



module ALU_last
(
  output out,
  output overflow,
  output carryout,
  output SLT,
  output zero,
  input A,
  input B,
  input carryin,
  input[0:2] S
);
  wire[0:7] I;
  wire modB;
  wire as;

  assign I[0] = as; //output 0 is add
  assign I[1] = as; // output 1 is sub
  assign I[3] = 0;  // output 3 is zero (SLT)

  `XOR        xorgate(modB, B, S[0]); //invert B if subtracting

  `ADDSUB     addsub(as, carryout, A, modB, carryin);
  `XOR        xorgate1(I[2], A, B);
  `AND        andgate(I[4], A, B);
  `NAND       nandgate(I[5], A, B);
  `NOR        norgate(I[6], A, B);
  `OR         orgate(I[7], A, B);

  `MUX        elonMux(out, I, S); //use S to select which output is shown

  `XOR        xorgate2(overflow, carryin, carryout); //set overflow flag

  `XOR        xorgate3(SLT, overflow, as); //set SLT


  //this is the plan
endmodule


module ALU_1bit
(
  output out,
  output carryout,
  input A,
  input B,
  input carryin,
  input[0:2] S
);
  wire[0:7] I;
  wire modB;
  wire as;

  `XOR        xorgate(modB, B, S[0]); //invert B if subtracting

  `ADDSUB     addsub(I[0], carryout, A, modB, carryin); //should be outputs 0 and 1
  `XOR        xorgate1(I[2], A, B);
  `AND        andgate(I[4], A, B);
  `NAND       nandgate(I[5], A, B);
  `NOR        norgate(I[6], A, B);
  `OR         orgate(I[7], A, B);

  `MUX        elonMux(out, I, S); //select which output is shown

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


  // Your code here
endmodule
