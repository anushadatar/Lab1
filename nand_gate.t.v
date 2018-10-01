`timescale 1 ns / 1 ps
`include "nand_gate.v"

module testNandGate();
    wire[31:0] nandoutput;
    reg[31:0] A;
    reg[31:0] B;
    ALUnand nandgate(nandoutput, A, B);

initial begin
    $display("Testing");
    $display("A | B | !(A & B)");
    A = 32'b0000000000000000000000000000; B = 32'b1111111111111111111111111111; #1000
    $display("%b | %b | %b", A, B, nandoutput);

end
endmodule
