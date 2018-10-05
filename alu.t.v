//ALU Test Bench
`timescale 1 ns / 1 ps
`include "alu.v"

/*
Test entire ALU with a suite of cases that represent all of the 
major operations and potential failure points of the ALU.

Uses the testAlu module from alu.v.
*/

module testAlu();

  reg[31:0] A;
  reg[31:0] B;
  reg[2:0] command;

  wire[31:0] result;
  wire carryout, zero, overflow;

  ALU alu (result, carryout, zero, overflow, A, B, command);

  initial begin
    $dumpfile("fullalu.vcd");
    $dumpvars();
<<<<<<< HEAD
    command=0;A=1;B=1; #100000
=======

    // Tests addition.
    command=0;A=1;B=1; #10000
>>>>>>> 5e3e906bf621330a155560dd754aabdb9c73a245
    if (result !== 2)      $display("1- result failed");
    if (carryout !== 0)    $display("1- carryout failed");
    if (zero !== 0)        $display("1- zero flag failed");
    if (overflow !== 0)    $display("1- overflow flag failed");

    command=0;A=-1;B=-1000; #100000
    if (result !== -1001)  $display("2- result failed");
    if (carryout !== 1)    $display("2- carryout failed");
    if (zero !== 0)        $display("2- zero flag failed");
    if (overflow !== 0)    $display("2- overflow flag failed");

    command=0;A=32'b11111111111111111111111111111111;B=32'b10000000000000000000000000000000; #10000
    //if (result !== 2)    $display("3- result failed");
    //if (carryout !== 0)  $display("3- carryout failed");
    if (zero !== 0)        $display("3- zero flag failed");
    if (overflow !== 1)    $display("3- overflow flag failed");

<<<<<<< HEAD
    command=1;A=100;B=100; #100000
=======
    // Tests subtraction.
    command=1;A=100;B=100; #10000
>>>>>>> 5e3e906bf621330a155560dd754aabdb9c73a245
    if (result !== 0)      $display("4- result failed");
    if (carryout !== 1)    $display("4- carryout failed");
    if (zero !== 1)        $display("4- zero flag failed");
    if (overflow !== 0)    $display("4- overflow flag failed");

    command=1;A=1;B=10; #100000
    if (result !== -9)     $display("5- result failed");
    if (carryout !== 0)    $display("5- carryout failed");
    if (zero !== 0)        $display("5- zero flag failed");
    if (overflow !== 0)    $display("5- overflow flag failed");

    command=1;A=-1;B=-1001; #100000
    if (result !== 1000)   $display("6- result failed");
    if (carryout !== 1)    $display("6- carryout failed");
    if (zero !== 0)        $display("6- zero flag failed");
    if (overflow !== 0)    $display("6- overflow flag failed");

<<<<<<< HEAD
    command=2;A=32'b1100;B=32'b1100; #100000
=======
    // Tests the XOR gate.
    command=2;A=32'b1100;B=32'b1100; #10000
>>>>>>> 5e3e906bf621330a155560dd754aabdb9c73a245
    if (result !== 0)      $display("7- result failed");
    //if (carryout !== 0)  $display("7- carryout failed");
    //if (zero !== 0)      $display("7- zero flag failed");
    //if (overflow !== 0)  $display("7- overflow flag failed");

    command=2;A=32'b101100;B=32'b110011; #100000
    if (result !== 32'b011111)    $display("8- result failed");
    //if (carryout !== 0)         $display("8- carryout failed");
    //if (zero !== 0)             $display("8- zero flag failed");
    //if (overflow !== 0)         $display("8- overflow flag failed");

<<<<<<< HEAD
    command=3;A=1856;B=1856; #100000
=======
    // Tests the SLT function.
    command=3;A=1856;B=1856; #10000
>>>>>>> 5e3e906bf621330a155560dd754aabdb9c73a245
    if (result !== 32'b0)                                   $display("9- result failed");
    //if (carryout !== 0)                                   $display("9- carryout failed");
    if (zero !== 1)                                         $display("9- zero flag failed");
    if (overflow !== 0)                                     $display("9- overflow flag failed");

    command=3;A=1998;B=2018; #100000
    if (result !== 32'b10000000000000000000000000000000)    $display("10- result failed");
    //if (carryout !== 0)                                   $display("10- carryout failed");
    if (zero !== 0)                                         $display("10- zero flag failed");
    if (overflow !== 0)                                     $display("10- overflow flag failed");

    command=3;A=42;B=-144; #100000
    if (result !== 32'b0)                                   $display("11- result failed");
    //if (carryout !== 0)                                   $display("11- carryout failed");
    if (zero !== 1)                                         $display("11- zero flag failed");
    if (overflow !== 0)                                     $display("11- overflow flag failed");

<<<<<<< HEAD
    command=4;A=-1;B=-1; #100000
=======
    // Tests the AND gate.
    command=4;A=-1;B=-1; #10000
>>>>>>> 5e3e906bf621330a155560dd754aabdb9c73a245
    if (result !== -1)                                      $display("12- result failed");
    //if (carryout !== 0)                                   $display("12- carryout failed");
    //if (zero !== 0)                                       $display("12- zero flag failed");
    //if (overflow !== 0)                                   $display("12- overflow flag failed");

    command=4;A=32'b0011100100;B=32'b1110110110; #100000
    if (result !== 32'b0010100100)                          $display("13- result failed");
    //if (carryout !== 0)                                   $display("13- carryout failed");
    //if (zero !== 0)                                       $display("13- zero flag failed");
    //if (overflow !== 0)                                   $display("13- overflow flag failed");

<<<<<<< HEAD
    command=5;A=0;B=0; #100000
=======
    // Tests the NAND gate.
    command=5;A=0;B=0; #10000
>>>>>>> 5e3e906bf621330a155560dd754aabdb9c73a245
    if (result !== -1)                                      $display("14- result failed");
    //if (carryout !== 0)                                   $display("14- carryout failed");
    if (zero !== 0)                                         $display("14- zero flag failed");
    if (overflow !== 0)                                     $display("14- overflow flag failed");

    command=5;A=32'b1010110;B=32'b1010101; #100000
    if (result !== 32'b11111111111111111111111110101011)    $display("15- result failed");
    //if (carryout !== 0)                                   $display("15- carryout failed");
    if (zero !== 0)                                         $display("15- zero flag failed");
    if (overflow !== 0)                                     $display("15- overflow flag failed");

<<<<<<< HEAD
    command=6;A=0;B=0; #100000
=======
    // Tests the NOR gate.
    command=6;A=0;B=0; #10000
>>>>>>> 5e3e906bf621330a155560dd754aabdb9c73a245
    if (result !== -1)                                      $display("16- result failed");
    //if (carryout !== 0)                                   $display("16- carryout failed");
    if (zero !== 0)                                         $display("16- zero flag failed");
    if (overflow !== 0)                                     $display("16- overflow flag failed");

    command=6;A=32'b010110;B=32'b100110; #100000
    if (result !== 32'b11111111111111111111111111001001)    $display("17- result failed");
    //if (carryout !== 0)                                   $display("17- carryout failed");
    if (zero !== 0)                                         $display("17- zero flag failed");
    if (overflow !== 0)                                     $display("17- overflow flag failed");

    command=6;A=32'b010110;B=32'b100110; #10000
    if (result !== 32'b11111111111111111111111111001001)    $display("18- result failed");
    //if (carryout !== 0)                                   $display("18- carryout failed");
    if (zero !== 0)                                         $display("18- zero flag failed");
    if (overflow !== 0)                                     $display("18- overflow flag failed");

<<<<<<< HEAD
    command=7;A=32'b000111;B=32'b000111; #100000
=======
    // Tests the OR gate.
    command=7;A=32'b000111;B=32'b000111; #10000
>>>>>>> 5e3e906bf621330a155560dd754aabdb9c73a245
    if (result !== 32'b000111)                              $display("19- result failed");
    //if (carryout !== 0)                                   $display("19- carryout failed");
    if (zero !== 0)                                         $display("19- zero flag failed");
    if (overflow !== 0)                                     $display("19- overflow flag failed");

    command=7;A=32'b111111;B=32'b111111; #100000
    if (result !== 32'b111111)                              $display("20- result failed");
    //if (carryout !== 0)                                   $display("20- carryout failed");
    if (zero !== 0)                                         $display("20- zero flag failed");
    if (overflow !== 0)                                     $display("20- overflow flag failed");
    end

endmodule
