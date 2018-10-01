`timescale 1 ns / 1 ps
`include "and_gate.v"

module testAndGate();
    wire[31:0] andoutput;
    reg[31:0] A;
    reg[31:0] B;
    ALUand andgate(andoutput, A, B);

initial begin
    $display("Testing");
    $display("A | B | A & B");
    A = 32'b0000000000000000000000000000; B = 32'b1111111111111111111111111111; #100
    $display("%b | %b | %b", A, B, andoutput);

end
endmodule
