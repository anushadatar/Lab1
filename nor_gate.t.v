`timescale 1 ns / 1 ps
`include "nor_gate.v"

module testNorGate();
    wire[31:0] noroutput;
    reg[31:0] A;
    reg[31:0] B;
    ALUnor norgate(noroutput, A, B);

initial begin
    $display("Testing");
    $display("A | B | !(A | B)");
    A = 32'b0000000000000000000000000000; B = 32'b1111111111111111111111111111; #1000
    $display("%b | %b | %b", A, B, noroutput);

end
endmodule
