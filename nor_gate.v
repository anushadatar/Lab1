`define NOR nor #10

module ALUnor
(
    output[31:0] noroutput,
    input[31:0] A,
    input[31:0] B
);

`NOR norgate0(noroutput[0], A[0], B[0]);
`NOR norgate1(noroutput[1], A[1], B[1]);
`NOR norgate2(noroutput[2], A[2], B[2]);
`NOR norgate3(noroutput[3], A[3], B[3]);
`NOR norgate4(noroutput[4], A[4], B[4]);
`NOR norgate5(noroutput[5], A[5], B[5]);
`NOR norgate6(noroutput[6], A[6], B[6]);
`NOR norgate7(noroutput[7], A[7], B[7]);
`NOR norgate8(noroutput[8], A[8], B[8]);
`NOR norgate9(noroutput[9], A[9], B[9]);
`NOR norgate10(noroutput[10], A[10], B[10]);
`NOR norgate11(noroutput[11], A[11], B[11]);
`NOR norgate12(noroutput[12], A[12], B[12]);
`NOR norgate13(noroutput[13], A[13], B[13]);
`NOR norgate14(noroutput[14], A[14], B[14]);
`NOR norgate15(noroutput[15], A[15], B[15]);
`NOR norgate16(noroutput[16], A[16], B[16]);
`NOR norgate17(noroutput[17], A[17], B[17]);
`NOR norgate18(noroutput[18], A[18], B[18]);
`NOR norgate19(noroutput[19], A[19], B[19]);
`NOR norgate20(noroutput[20], A[20], B[20]);
`NOR norgate21(noroutput[21], A[21], B[21]);
`NOR norgate22(noroutput[22], A[22], B[22]);
`NOR norgate23(noroutput[23], A[23], B[23]);
`NOR norgate24(noroutput[24], A[24], B[24]);
`NOR norgate25(noroutput[25], A[25], B[25]);
`NOR norgate26(noroutput[26], A[26], B[26]);
`NOR norgate27(noroutput[27], A[27], B[27]);
`NOR norgate28(noroutput[28], A[28], B[28]);
`NOR norgate29(noroutput[29], A[29], B[29]);
`NOR norgate30(noroutput[30], A[30], B[30]);
`NOR norgate31(noroutput[31], A[31], B[31]);

endmodule
