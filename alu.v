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
  input A,
  input B,
  input carryin,
  input[0:2] S
);
wire[0:7] I;
wire modB;
wire as;

assign I[0] = as;
assign I[1] = as;
assign I[3] = 0;

`XOR        anush(modB, B, S[0]);
`ADDSUB     will(as, carryout, A, modB, carryin);
`XOR        lauren(I[2], A, B);
`AND        combo(I[4], A, B);
`NAND       nombo(I[5], A, B);
`NOR        nalgene(I[6], A, B);
`OR         purpoise(I[7], A, B);

`MUX        elonMux(out, I, S);

`XOR        houstonWeHaveAProblem(overflow, carryin, carryout);

`XOR        iAmYourFather(SLT, overflow, as);


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



  `XOR        anush(modB, B, S[0]);
  `ADDSUB     will(as, carryout, A, modB, carryin);
  `XOR        lauren(I[2], A, B);
  `AND        combo(I[4], A, B);
  `NAND       nombo(I[5], A, B);
  `NOR        nalgene(I[6], A, B);
  `OR         purpoise(I[7], A, B);

  `MUX        elonMux(out, I, S);

  assign I[0] = as;
  assign I[1] = as;
  assign I[3] = 0;
  
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
