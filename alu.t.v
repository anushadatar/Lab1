//ALU Test Bench
`timescale 1 ns / 1 ps
`include "alu.v"

module testAlu();

  reg[31:0] A;
  reg[31:0] B;
  reg[2:0] command;

  wire[31:0] result;
  wire carryout, zero, overflow;

  ALU alu (result, carryout, zero, overflow, A, B, command);

  initial begin

    $dumpvars();
    command=0;A=1;B=1; #10000
    if (result !== 2)    $display("1- result failed");
    if (carryout !== 0)  $display("1- carryout failed");
    if (zero !== 0)      $display("1- zero flag failed");
    if (overflow !== 0)  $display("1- overflow flag failed");

    command=0;A=-1;B=-1000; #10000
    if (result !== -1001)    $display("2- result failed");
    if (carryout !== 1)      $display("2- carryout failed");
    if (zero !== 0)          $display("2- zero flag failed");
    if (overflow !== 0)      $display("2- overflow flag failed");

    command=0;A=32'b11111111111111111111111111111111;B=32'b10000000000000000000000000000000; #10000
    //if (result !== 2)    $display("3- result failed");
    //if (carryout !== 0)  $display("3- carryout failed");
    if (zero !== 0)        $display("3- zero flag failed");
    if (overflow !== 1)    $display("3- overflow flag failed");

    command=1;A=100;B=100; #100000
    if (result !== 0)        $display("4- result failed");
    if (carryout !== 1)      $display("4- carryout failed");
    if (zero !== 1)          $display("4- zero flag failed");
    if (overflow !== 0)      $display("4- overflow flag failed");

    command=1;A=1;B=10; #100000
    if (result !== -9)        $display("5- result failed");
    if (carryout !== 0)       $display("5- carryout failed");
    if (zero !== 0)           $display("5- zero flag failed");
    if (overflow !== 0)       $display("5- overflow flag failed");

    command=1;A=-1;B=-1001; #100000
    if (result !== 1000)        $display("6- result failed");
    if (carryout !== 1)         $display("6- carryout failed");
    if (zero !== 0)             $display("6- zero flag failed");
    if (overflow !== 0)         $display("6- overflow flag failed");

    command=2;A=32'b1100;B=32'b1100; #100000
    if (result !== 0)        $display("7- result failed");
    //if (carryout !== 0)    $display("7- carryout failed");
    //if (zero !== 0)        $display("7- zero flag failed");
    //if (overflow !== 0)    $display("7- overflow flag failed");


    $display("R32-----------------------------0 ");

    command=1; A=100; B=100; #100000000
    $display(" %b   %b", result, carryout);
    $display("%b    %b", A, B);

    end

endmodule
