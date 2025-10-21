//encoder using multiplexers
module mux_21(
  input  i0, i1,
  input  s,
  output reg y
);
  always @(*) begin
    case (s)
      1'b0: y = i0;
      1'b1: y = i1;
    endcase
  end
endmodule

module encode_42(
	input i0,i1,i2,i3,
	output y1,y2);
	
	mux_21 dut1 (.i0(i1),.i1(1'b1),.s(i3),.y(y1));
	mux_21 dut2 (.i0(i2),.i1(1'b1),.s(i3),.y(y2));

endmodule
