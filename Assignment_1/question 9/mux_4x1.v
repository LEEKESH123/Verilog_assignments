module mux_4x1(
 input a,b,c,d,
 input s0,s1,
 output y
 );

	always@(*) begin
		case({s0,s1})
			2'b00 : y = a;
			2'b01 : y = b;
			2'b10 : y = c;
			2'b11 : y = d;

		endcase
	end
endmodule

module mux_8x1(
  input [7:0]a;
  input [2:0]s;
  output y
);

	wire w1,w2;
 mux_4x1 dut1(.a(a[0]),.b(a[1]),.c(a[2]),.d(a[3]),.s0(s[0]),.s1(s[1]),.y(w1)); 
 mux_4x1 dut2(.a(a[4]),.b(a[5]),.c(a[6]),.d(a[7]),.s0(s[0]),.s1(s[1]),.y(w2)); 
 mux_4x1 dut3(.a(w1),.b(w2),.c(1'b0),.d(1'b0),.s0(s[2]),.s1(1'b0),.y(y));

endmodule

