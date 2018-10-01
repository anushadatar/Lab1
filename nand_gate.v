`define NAND nand #20

module ALUnand
(
    output[31:0] nandoutput,
    input[31:0] A,
    input[31:0] B
);

`NAND nandgate0(nandoutput[0], A[0], B[0]);
`NAND nandgate1(nandoutput[1], A[1], B[1]);
`NAND nandgate2(nandoutput[2], A[2], B[2]);
`NAND nandgate3(nandoutput[3], A[3], B[3]);
`NAND nandgate4(nandoutput[4], A[4], B[4]);
`NAND nandgate5(nandoutput[5], A[5], B[5]);
`NAND nandgate6(nandoutput[6], A[6], B[6]);
`NAND nandgate7(nandoutput[7], A[7], B[7]);
`NAND nandgate8(nandoutput[8], A[8], B[8]);
`NAND nandgate9(nandoutput[9], A[9], B[9]);
`NAND nandgate10(nandoutput[10], A[10], B[10]);
`NAND nandgate11(nandoutput[11], A[11], B[11]);
`NAND nandgate12(nandoutput[12], A[12], B[12]);
`NAND nandgate13(nandoutput[13], A[13], B[13]);
`NAND nandgate14(nandoutput[14], A[14], B[14]);
`NAND nandgate15(nandoutput[15], A[15], B[15]);
`NAND nandgate16(nandoutput[16], A[16], B[16]);
`NAND nandgate17(nandoutput[17], A[17], B[17]);
`NAND nandgate18(nandoutput[18], A[18], B[18]);
`NAND nandgate19(nandoutput[19], A[19], B[19]);
`NAND nandgate20(nandoutput[20], A[20], B[20]);
`NAND nandgate21(nandoutput[21], A[21], B[21]);
`NAND nandgate22(nandoutput[22], A[22], B[22]);
`NAND nandgate23(nandoutput[23], A[23], B[23]);
`NAND nandgate24(nandoutput[24], A[24], B[24]);
`NAND nandgate25(nandoutput[25], A[25], B[25]);
`NAND nandgate26(nandoutput[26], A[26], B[26]);
`NAND nandgate27(nandoutput[27], A[27], B[27]);
`NAND nandgate28(nandoutput[28], A[28], B[28]);
`NAND nandgate29(nandoutput[29], A[29], B[29]);
`NAND nandgate30(nandoutput[30], A[30], B[30]);
`NAND nandgate31(nandoutput[31], A[31], B[31]);

endmodule
