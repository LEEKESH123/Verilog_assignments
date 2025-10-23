module alu_32 (
  input  [31:0] A,
  input  [31:0] B,
  input  [2:0]  F,
  output [31:0] R
);

  wire [31:0] add_out, sub_out, mul_out;
  wire [31:0] mux1_out, mux2_out;

  add32 u1 (.i0(A), .i1(B), .sum(add_out));
  sub32 u2 (.i0(A), .i1(B), .diff(sub_out));
  mul32 u3 (.i0(A), .i1(B), .prod(mul_out));

  mux32two u4 (.i0(add_out), .i1(sub_out), .sel(F[0]), .y(mux1_out));

  mux32two u5 (.i0(mux1_out), .i1(mul_out), .sel(F[1]), .y(R));

endmodule

