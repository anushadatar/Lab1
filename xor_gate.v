`define XOR xor #20
// NOTE : Check on xor gate delay.

module ALUxor
(
    output[31:0] xoroutput,
    input[31:0] A,
    input[31:0] B
);
`XOR xorgate0(xoroutput[0], A[0], B[0]);
`XOR xorgate1(xoroutput[1], A[1], B[1]);
`XOR xorgate2(xoroutput[2], A[2], B[2]);
`XOR xorgate3(xoroutput[3], A[3], B[3]);
`XOR xorgate4(xoroutput[4], A[4], B[4]);
`XOR xorgate5(xoroutput[5], A[5], B[5]);
`XOR xorgate6(xoroutput[6], A[6], B[6]);
`XOR xorgate7(xoroutput[7], A[7], B[7]);
`XOR xorgate8(xoroutput[8], A[8], B[8]);
`XOR xorgate9(xoroutput[9], A[9], B[9]);
`XOR xorgate10(xoroutput[10], A[10], B[10]);
`XOR xorgate11(xoroutput[11], A[11], B[11]);
`XOR xorgate12(xoroutput[12], A[12], B[12]);
`XOR xorgate13(xoroutput[13], A[13], B[13]);
`XOR xorgate14(xoroutput[14], A[14], B[14]);
`XOR xorgate15(xoroutput[15], A[15], B[15]);
`XOR xorgate16(xoroutput[16], A[16], B[16]);
`XOR xorgate17(xoroutput[17], A[17], B[17]);
`XOR xorgate18(xoroutput[18], A[18], B[18]);
`XOR xorgate19(xoroutput[19], A[19], B[19]);
`XOR xorgate20(xoroutput[20], A[20], B[20]);
`XOR xorgate21(xoroutput[21], A[21], B[21]);
`XOR xorgate22(xoroutput[22], A[22], B[22]);
`XOR xorgate23(xoroutput[23], A[23], B[23]);
`XOR xorgate24(xoroutput[24], A[24], B[24]);
`XOR xorgate25(xoroutput[25], A[25], B[25]);
`XOR xorgate26(xoroutput[26], A[26], B[26]);
`XOR xorgate27(xoroutput[27], A[27], B[27]);
`XOR xorgate28(xoroutput[28], A[28], B[28]);
`XOR xorgate29(xoroutput[29], A[29], B[29]);
`XOR xorgate30(xoroutput[30], A[30], B[30]);
`XOR xorgate31(xoroutput[31], A[31], B[31]);
endmodule
