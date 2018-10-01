module multiplexer
(
  input I[0:7],
  input S[0:2],
  output reg out

);

always @ (I[0:7])
begin
  case (S)
  00:
