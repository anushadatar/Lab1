`include "operations/multiplexer.v"
`include "operations/gates.v"
`include "operations/add_sub.v"

`define MUX     multiplexer #120
`define AND     ALUand
`define OR      ALUor
`define NAND    ALUnand
`define XOR     ALUxor
`define NOR     ALUnor

`define ALUBIT  ALU_1bit
`define ALULAST ALU_last
`define ADDSUB  add_sub
`define ADDSUBL add_sub_last

/*
The last 1bit ALU in the cascade of individual ALUs that make up the complete device.
Takes in A, B, Carryin, and Select. Outputs value, carryout, and overflow.

Note that remaining individual ALU units do not include overflow.

Uses multiplexer, gates, and add_sub from the operations directory.
*/

module ALU_last
(
  output out,
  output overflow,
  output carryout,
  //output zero,
  input A,
  input B,
  input carryin,
  input[2:0] S
);
  wire[7:0] I;
  wire modB;
  wire as;

  assign I[0] = as; //output 0 is add
  assign I[1] = as; // output 1 is sub

  `XOR        xorgate(modB, B, S[0]); //invert B if subtracting

  `ADDSUB     addsub(as, carryout, A, modB, carryin);
  `XOR        xorgate1(I[2], A, B);
  `AND        andgate(I[4], A, B);
  `NAND       nandgate(I[5], A, B);
  `NOR        norgate(I[6], A, B);
  `OR         orgate(I[7], A, B);

  `MUX        elonMux(out, I, S);                         //use S to select which output is shown

  `XOR        xorgate2(overflow, carryin, carryout); //set overflow flag

  `XOR        xorgate3(I[3], overflow, as);           //set SLT

endmodule

/*
The 1bit ALUs in the cascade of individual ALUs that make up the complete device.
Takes in A, B, Carryin, and Select. Outputs value and carryout.

The first 31 bits are processed through this device.
Uses multiplexer, gates, and add_sub from the operations directory.
*/


module ALU_1bit
(
  output out,
  output carryout,
  input A,
  input B,
  input carryin,
  input[2:0] S
);
  wire[7:0] I;
  wire modB;
  wire addORsub;

  `XOR        xorgate(modB, B, S[0]);                   //invert B if subtracting/SLT

  `ADDSUB     addsub(addORsub, carryout, A, modB, carryin);   //should be outputs 0 and 1
  `XOR        xorgate1(I[2], A, B);
  `AND        andgate(I[4], A, B);
  `NAND       nandgate(I[5], A, B);
  `NOR        norgate(I[6], A, B);
  `OR         orgate(I[7], A, B);

  `MUX        elonMux(out, I, S);                           //select which output is shown

  assign I[0] = addORsub;
  assign I[1] = addORsub;
  assign I[3] = 0;                                      //We only want the SLT pin to change on the MSB

endmodule

/*
Full 32-bit ALU. Contains 32 individual 1-bit ALU units - 31 of 
the standard modules and one of the final one.

Takes in A, B, and select command. Outputs result of specified 
operation, carryout, zero (returns 1 if all values are zero), 
and an overflow flag.
*/

module ALU
(
  output[31:0]  result,
  output        carryout,
  output        zero,
  output        overflow,
  input[31:0]   A,
  input[31:0]   B,
  input[2:0]    command
);
  wire[30:0] carryin;
  wire[30:0] cout;

  `ALUBIT  alu0(result[0], cout[0], A[0], B[0], command[0], command);
  `ALUBIT  alu1(result[1], cout[1], A[1], B[1], cout[0], command);
  `ALUBIT  alu2(result[2], cout[2], A[2], B[2], cout[1], command);
  `ALUBIT  alu3(result[3], cout[3], A[3], B[3], cout[2], command);
  `ALUBIT  alu4(result[4], cout[4], A[4], B[4], cout[3], command);
  `ALUBIT  alu5(result[5], cout[5], A[5], B[5], cout[4], command);
  `ALUBIT  alu6(result[6], cout[6], A[6], B[6], cout[5], command);
  `ALUBIT  alu7(result[7], cout[7], A[7], B[7], cout[6], command);
  `ALUBIT  alu8(result[8], cout[8], A[8], B[8], cout[7], command);
  `ALUBIT  alu9(result[9], cout[9], A[9], B[9], cout[8], command);
  `ALUBIT  alu10(result[10], cout[10], A[10], B[10], cout[9], command);
  `ALUBIT  alu11(result[11], cout[11], A[11], B[11], cout[10], command);
  `ALUBIT  alu12(result[12], cout[12], A[12], B[12], cout[11], command);
  `ALUBIT  alu13(result[13], cout[13], A[13], B[13], cout[12], command);
  `ALUBIT  alu14(result[14], cout[14], A[14], B[14], cout[13], command);
  `ALUBIT  alu15(result[15], cout[15], A[15], B[15], cout[14], command);
  `ALUBIT  alu16(result[16], cout[16], A[16], B[16], cout[15], command);
  `ALUBIT  alu17(result[17], cout[17], A[17], B[17], cout[16], command);
  `ALUBIT  alu18(result[18], cout[18], A[18], B[18], cout[17], command);
  `ALUBIT  alu19(result[19], cout[19], A[19], B[19], cout[18], command);
  `ALUBIT  alu20(result[20], cout[20], A[20], B[20], cout[19], command);
  `ALUBIT  alu21(result[21], cout[21], A[21], B[21], cout[20], command);
  `ALUBIT  alu22(result[22], cout[22], A[22], B[22], cout[21], command);
  `ALUBIT  alu23(result[23], cout[23], A[23], B[23], cout[22], command);
  `ALUBIT  alu24(result[24], cout[24], A[24], B[24], cout[23], command);
  `ALUBIT  alu25(result[25], cout[25], A[25], B[25], cout[24], command);
  `ALUBIT  alu26(result[26], cout[26], A[26], B[26], cout[25], command);
  `ALUBIT  alu27(result[27], cout[27], A[27], B[27], cout[26], command);
  `ALUBIT  alu28(result[28], cout[28], A[28], B[28], cout[27], command);
  `ALUBIT  alu29(result[29], cout[29], A[29], B[29], cout[28], command);
  `ALUBIT  alu30(result[30], cout[30], A[30], B[30], cout[29], command);
  `ALULAST alu31(result[31], overflow, carryout, A[31], B[31],  cout[30], command);


  `NORZ    nor(zero, result[0], result[1], result[2], result[3], result[4],
                result[5], result[6], result[7], result[8], result[9],
                result[10], result[11], result[12], result[13], result[14],
                result[15], result[16], result[17], result[18], result[19],
                result[20], result[21], result[22], result[23], result[24],
                result[25], result[26], result[27], result[28], result[29],
                result[28], result[29], result[30], result[31]);

endmodule
