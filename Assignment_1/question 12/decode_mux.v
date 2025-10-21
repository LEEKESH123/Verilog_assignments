//decoder using multiplexer

module mux_21(
	input a,b,
	input s,
	output y);

	assign y = s ? b : a;
	
endmodule

module decode_24(
	input a,b,
	output [3:0]y);
	wire a_bar,b_bar;
    
	not(a_bar,a);
	not(b_bar,b);
	mux_21 dut1 (.a(b_bar),.b(1'b0),.s(b),.y(y[0]));
	mux_21 dut2 (.a(b),.b(1'b0),.s(a),.y(y[1]));
	mux_21 dut3 (.a(b_bar),.b(1'b0),.s(a_bar),.y(y[2]));
	mux_21 dut4 (.a(b),.b(1'b0),.s(a_bar),.y(y[3]));
	
endmodule
