/*
3-select bit multiplexer.
*/
module multiplexer
(
output out,
input[7:0] I,
input[2:0] S
);
wire[7:0]  I;
wire[2:0]  S;
wire       out;

assign out = I[S];

endmodule
