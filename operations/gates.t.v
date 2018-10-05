`timescale 1 ns / 1 ps
`include "gates.v"

module testALUgates(); 
    wire andout, orout, norout, nandout, xorout;
    reg A; 
    reg B; 
    ALUand ALUandgate(andout, A, B);
    ALUor ALUorgate(orout, A, B);
    ALUnor ALUnorgate(norout, A, B);
    ALUnand ALUnandgate(nandout, A, B);
    ALUxor ALUxorgate(xorout, A, B);

initial begin 
    $display("Exhaustively testing ALU gates.");
    $display("A | B | AND | OR | NAND | NOR | XOR");
    A = 0; B = 0; #1000
    $display("%b | %b |%b    |%b   |%b     |%b    |%b", A, B, andout, orout, norout, nandout, xorout);
    if (andout !== 0) $display("0 AND 0 failed.");
    if (orout !== 0) $display("0 OR 0 failed.");
    if (nandout !== 1) $display("0 NAND 0 failed.");
    if (norout !== 1) $display("0 NOR 0 failed.");
    if (xorout !== 0) $display("0 XOR 0 failed.");

    A = 1; B = 0; #1000
    $display("%b | %b |%b    |%b   |%b     |%b    |%b", A, B, andout, orout, norout, nandout, xorout);
    if (andout !== 0) $display("1 AND 0 failed.");
    if (orout !== 1) $display("1 OR 0 failed.");
    if (nandout !== 1) $display("1 NAND 0 failed.");
    if (norout !== 0) $display("1 NOR 0 failed.");
    if (xorout !== 1) $display("1 XOR 0 failed.");

    A = 0; B = 1; #1000
    $display("%b | %b |%b    |%b   |%b     |%b    |%b", A, B, andout, orout, norout, nandout, xorout);
    if (andout !== 0) $display("0 AND 1 failed.");
    if (orout !== 1) $display("0 OR 1 failed.");
    if (nandout !== 1) $display("0 NAND 1 failed.");
    if (norout !== 0) $display("0 NOR 1 failed.");
    if (xorout !== 1) $display("0 XOR 1 failed.");

    A = 1; B = 1; #1000
    $display("%b | %b |%b    |%b   |%b     |%b    |%b", A, B, andout, orout, norout, nandout, xorout);
    if (andout !== 1) $display("1 AND 1 failed.");
    if (orout !== 1) $display("1 OR 1 failed.");
    if (nandout !== 0) $display("1 NAND 1 failed.");
    if (norout !== 0) $display("1 NOR 1 failed.");
    if (xorout !== 0) $display("1 XOR 1 failed.");

end
endmodule  
