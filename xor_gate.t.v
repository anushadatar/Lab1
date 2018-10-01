`timescale 1 ns / 1 ps
`include "xor_gate.v"

module testXorGate();
    wire[31:0] xoroutput;
    reg[31:0] A;
    reg[31:0] B;
    ALUxor xorgate(xoroutput, A, B);

initial begin
    $display("Testing");
    $display("A | B | A xor B");
    A = 32'b0000000000000000000000000000; B = 32'b1111111111111111111111111111; #1000
    $display("%b | %b | %b", A, B, xoroutput);

end
endmodule
