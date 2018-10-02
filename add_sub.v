`define AND and #30
`define XOR xor #20
`define OR or #30

module add_sub
(
  output sum,
  output carryout,
  input A,
  input B,
  input carryin
);
  wire out1,out2,out3;
  wire Bin;

  `XOR bin(Bin,B,carryin);

  `XOR xor1(out1,A,Bin);
  `XOR xor2(sum,out1,carryin);

  `AND and1(out2,out1,carryin);
  `AND and2(out3,A,Bin);

  `OR or1(carryout,out2,out3);
endmodule

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
  wire Bin;

  `XOR bin(Bin,B,carryin);

  `XOR xor1(out1,A,Bin);
  `XOR xor2(sum,out1,carryin);

  `AND and1(out2,out1,carryin);
  `AND and2(out3,A,Bin);

  `OR or1(carryout,out2,out3);

  `XOR flag(overflow,carryout,carryin);
endmodule
