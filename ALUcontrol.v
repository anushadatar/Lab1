module ALUcontrolLUT
(
output reg[2:0] 	muxindex,
output reg	invertB,
output reg	invertOut,
...
input[2:0]	ALUcommand
)

  always @(ALUcommand) begin
    case (ALUcommand)
      `ADD:  begin muxindex = 0; invertB=0; invertOut = 0; end
      `SUB:  begin muxindex = 0; invertB=1; invertOut = 0; end
      `XOR:  begin muxindex = 1; invertB=0; invertOut = 0; end
      `SLT:  begin muxindex = 2; invertB=1; invertOut = 0; end
      `AND:  begin muxindex = 3; invertB=0; invertOut = 1; end
      `NAND: begin muxindex = 3; invertB=0; invertOut = 0; end
      `NOR:  begin muxindex = 4; invertB=0; invertOut = 0; end
      `OR:   begin muxindex = 4; invertB=0; invertOut = 1; end
    endcase
  end
endmodule
