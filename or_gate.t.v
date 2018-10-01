`timescale 1 ns / 1 ps
`include "or_gate.v"

module testOrGate();
    wire[31:0] oroutput;
    reg[31:0] A;
    reg[31:0] B;
    ALUor orgate(oroutput, A, B);

initial begin
    $display("Testing");
    $display("A | B | A | B");
    A = 32'b0000000000000000000000000000; B = 32'b1111111111111111111111111111; #1000
    $display("%b | %b | %b", A, B, oroutput);

end
endmodule
