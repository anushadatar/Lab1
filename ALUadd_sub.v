`define AND and #20
`define XOR xor #20
`define NOT not #10

module ALUsub
(
    output sum,
    output carryout,
    input A,
    input B,
    input carryin
);

  wire out1,out2,out3;

  `NOT invb(Binv,B)

  `XOR xor1(out1,A,Binv)
  `XOR xor2(sum,out1,carryin)

  `AND and1(out2,out1,carryin);
  `AND and2(out3,A,Binv);

  `OR or1(carryout,out2,out3);

endmodule

module ALUadd
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

module ALDadd_half
(
  output sum,
  output carryout,
  input A,
  input B
);

  `XOR xor1(sum,A,B);
  `AND and1(carryout,A,B);

endmodule
