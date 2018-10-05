`define AND and #30
`define XOR xor #30
`define OR or #30

/*
Addition and subtraction module for one bit general case.
*/
module add_sub
(
  output sum,
  output carryout,
  input A,
  input B,
  input carryin
);
  wire out1,out2,out3;

  `XOR xor1(out1,A,B);
  `XOR xor2(sum,out1,carryin);

  `AND and1(out2,out1,carryin);
  `AND and2(out3,A,B);

  `OR or1(carryout,out2,out3);
endmodule

/*
Addition and subtraction module for last case where
carryout flag is implemented.
*/
module add_sub_last
(
  output sum,
  output carryout,
  output overflow,
  input A,
  input B,
  input carryin
);
  wire out1,out2,out3;

  `XOR xor1(out1,A,B);
  `XOR xor2(sum,out1,carryin);

  `AND and1(out2,out1,carryin);
  `AND and2(out3,A,B);

  `OR or1(carryout,out2,out3);

  `XOR flag(overflow,carryout,carryin);
endmodule
