// Adder testbench
`timescale 1 ns / 1 ps
`include "add_sub.v"

module testFourBit();

    reg A;
    reg B;
    reg carryin;
    wire sum;
    wire carryout;

    add_sub adder (sum, carryout, A, B, carryin); // Swap after testing

    initial begin

        $display("A  B | SUM C");
        A = 0;B = 0;carryin = 0; #1000;
        $display(" %b   %b |  %b   %b ", A, B, sum, carryout);
        A = 0;B = 1;carryin = 0; #1000;
        $display(" %b   %b |  %b   %b ", A, B, sum, carryout);
        A = 1;B = 1;carryin = 1; #1000;
        $display(" %b   %b |  %b   %b ", A, B, sum, carryout);

        end
endmodule
