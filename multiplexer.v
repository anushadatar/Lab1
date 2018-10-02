`define MUX multiplexer
module multiplexer
(
  input[0:7] I,
  input[0:3] S,
  output reg out
);


always @( S or out)
begin
  if(S == 0)
    out = I[0];

  if(S == 1)
    out = I[1];

  if(S == 2)
    out = I[2];

  if(S == 3)
    out = I[3];

  if(S == 4)
    out = I[4];

  if(S == 5)
    out = I[5];

  if(S == 6)
    out = I[6];

  if(S == 7)
    out = I[7];

end

endmodule
