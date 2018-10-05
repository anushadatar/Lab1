//ALU Test Bench
`timescale 1 ns / 1 ps
`include "alu.v"

module testAlu1bit();

  reg A, B, carryin;
  reg[2:0] S;

  wire out, carryout, overflow;

  ALU_last alu (out, overflow, carryout, A, B, carryin, S);

  initial begin
    $dumpvars();
    // Addition. Counts from 0 up.
    S=0; carryin=0; A=0; B=0; #100
    if (out !== 0) $display("Addition 0 result failed.");
    if (carryout !== 0) $display("Addition 0 carryout failed");
    if (overflow !== 0) $display("Additition 0 overflow failed.");
    S=0; carryin=0; A=1; B=0; #100
    if (out !== 1) $display("Addition 1 result failed.");
    if (carryout !== 0) $display("Addition 1 carryout failed.");
    if (overflow !== 0) $display("Addition 1 overflow failed.");
    S=0; carryin=0; A=0; B=1; #100
    if (out !== 1) $display("Addition 2 result failed.");
    if (carryout !== 0) $display("Addition 2 carryout failed.");
    if (overflow !== 0) $display("Addition 2 overflow failed.");
    S=0; carryin=0; A=1; B=1; #100
    if (out !== 0) $display("Addition 3 result failed.");
    if (carryout !== 1) $display("Addition 3 carryout failed.");
    if (overflow !== 1) $display("Addition 3 overflow failed.");
    S=0; carryin=1; A=0; B=0; #100
    if (out !== 1) $display("Addition 4 result failed.");
    if (carryout !== 0) $display("Addition 4 carryout failed.");
    if (overflow !== 1) $display("Addition 4 overflow failed.");
    S=0; carryin=1; A=1; B=0; #100
    if (out !== 0) $display("Addition 5 result failed.");
    if (carryout !== 1) $display("Addition 5 carryout failed.");
    if (overflow !== 1) $display("Addition 5 overflow failed.");
    S=0; carryin=1; A=0; B=1; #100
    if (out !== 0) $display("Addition 6 result failed.");
    if (carryout !== 1) $display("Addition 6 carryout failed.");
    if (overflow !== 0) $display("Addition 6 overflow failed.");
    S=0; carryin=1; A=1; B=1; #100
    if (out !== 1) $display("Addition 7 result failed.");
    if (carryout !== 1) $display("Addition 7 carryout failed.");
    if (overflow !== 0) $display("Addition 7 overflow failed.");

    // Subtraction.
    S=1; carryin=0; A=0; B=0; #100
    if (out !== 1) $display("Subtraction 0 result failed.");
    if (carryout !== 0) $display("Subtraction 0 carryout failed");
    if (overflow !== 0) $display("Subtracttion 0 overflow failed.");
    S=1; carryin=0; A=1; B=0; #100
    if (out !== 0) $display("Subtraction 1 result failed.");
    if (carryout !== 1) $display("Subtraction 1 carryout failed.");
    if (overflow !== 1) $display("Subtraction 1 overflow failed.");
    S=1; carryin=0; A=0; B=1; #100
    if (out !== 0) $display("Subtraction 2 result failed.");
    if (carryout !== 0) $display("Subtraction 2 carryout failed.");
    if (overflow !== 0) $display("Subtaction 2 overflow failed.");
    S=1; carryin=0; A=1; B=1; #100
    if (out !== 1) $display("Subtraction 3 result failed.");
    if (carryout !== 0) $display("Subtraction 3 carryout failed.");
    if (overflow !== 0) $display("Subtraction 3 overflow failed.");
    S=1; carryin=1; A=0; B=0; #100
    if (out !== 0) $display("Subtraction 4 result failed.");
    if (carryout !== 1) $display("Subtraction 4 carryout failed.");
    if (overflow !== 0) $display("Subtraction 4 overflow failed.");
    S=1; carryin=1; A=1; B=0; #100
    if (out !== 1) $display("Subtraction 5 result failed.");
    if (carryout !== 1) $display("Subtraction 5 carryout failed.");
    if (overflow !== 0) $display("Subtraction 5 overflow failed.");
    S=1; carryin=1; A=0; B=1; #100
    if (out !== 1) $display("Subtraction 6 result failed.");
    if (carryout !== 0) $display("Subtraction 6 carryout failed.");
    if (overflow !== 1) $display("Subtraction 6 overflow failed.");
    S=1; carryin=1; A=1; B=1; #100
    if (out !== 0) $display("Subtraction 7 result failed.");
    if (carryout !== 1) $display("Subtraction 7 carryout failed.");
    if (overflow !== 1) $display("Subtaction 7 overflow failed.");

    S=2; carryin=0; A=0; B=0; #100
    if (out !== 0) $display("XOR 0 result failed.");
    S=2; carryin=0; A=0; B=1; #100
    if (out !== 1) $display("XOR 1 result failed.");
    S=2; carryin=0; A=1; B=0; #100
    if (out !== 1) $display("XOR 2 result failed.");
    S=2; carryin=0; A=1; B=1; #100
    if (out !== 0) $display("XOR 3 result failed.");

    // Skip SLT in this case.
    
    // AND
    S=4; carryin=0; A=0; B=0; #100
    if (out !== 0) $display("AND 0 result failed.");
    S=4; carryin=0; A=1; B=0; #100
    if (out !== 0) $display("AND 1 result failed.");
    S=4; carryin=0; A=0; B=1; #100
    if (out !== 0) $display("AND 2 result failed.");
    S=4; carryin=0; A=1; B=1; #100
    if (out !== 1) $display("AND 3 result failed.");

    // NAND
    S=5; carryin=0; A=0; B=0; #100
    if (out !== 1) $display("NAND 0 result failed.");
    S=5; carryin=0; A=1; B=0; #100
    if (out !== 1) $display("NAND 1 result failed.");
    S=5; carryin=0; A=0; B=1; #100
    if (out !== 1) $display("NAND 2 result failed.");
    S=5; carryin=0; A=1; B=1; #100
    if (out !== 0) $display("NAND 3 result failed.");
    
    // NOR
    S=6; carryin=0; A=0; B=0; #100
    if (out !== 1) $display("NOR 0 result failed.");
    S=6; carryin=0; A=1; B=0; #100
    if (out !== 0) $display("NOR 1 result failed.");
    S=6; carryin=0; A=0; B=1; #100
    if (out !== 0) $display("NOR 2 result failed.");
    S=6; carryin=0; A=1; B=1; #100
    if (out !== 0) $display("NOR 3 result failed.");

    // OR
    S=7; carryin=0; A=0; B=0; #100
    if (out !== 0) $display("OR 0 result failed.");
    S=7; carryin=0; A=1; B=0; #100
    if (out !== 1) $display("OR 1 result failed.");
    S=7; carryin=0; A=0; B=1; #100
    if (out !== 1) $display("OR 2 result failed.");
    S=7; carryin=0; A=1; B=1; #100
    if (out !== 1) $display("OR 3 result failed.");

    end

endmodule
