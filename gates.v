`define AND and #20
`define OR or #20
`define NAND nand #10
`define NOR nor #10
`define XOR xor #20


module ALUand
(
    output out,
    input A,
    input B
);
`AND andgate(out, A, B);
endmodule

module ALUor
(
    output out,
    input A,
    input B
);
`OR orgate(out, A, B);
endmodule

module ALUnand
(
    output out,
    input A,
    input B
);
`NAND nandgate(out, A, B);
endmodule

module ALUnor
(
    output out,
    input A,
    input B
);
`NOR norgate(out, A, B);
endmodule

module ALUxor
(
    output out,
    input A,
    input B
);
`XOR xorgate(out, A, B);
endmodule
