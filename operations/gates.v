`define AND and #30
`define OR or #30
`define NAND nand #20
`define NOR nor #20
`define XOR xor #10


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
