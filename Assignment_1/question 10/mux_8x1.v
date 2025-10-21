`ifdef DATAFLOW
module mux_8x1 (
	input [7:0]a,
	input [2:0]s,
	output y
	);

	assign y = a[s];

endmodule

`elsif BEHAVIROUAL
module mux_8x1 (
	input [7:0]a,
	input [2:0]s,
	output y
	);

	always @(*) begin
		case(s)
			3'b000 : y = a[0];
			3'b001 : y = a[1];
			3'b010 : y = a[2];
			3'b011 : y = a[3];
			3'b100 : y = a[4];
			3'b101 : y = a[5];
			3'b110 : y = a[6];
			3'b111 : y = a[7];
		endcase
	end
endmodule

`else STRUCTURAL
module mux_8x1 (
	input [7:0]a,
	input [2:0]s,
	output y);

	wire s0_n,s1_n;
	wire w1,w2,w3,w4;
	not (s0_n,s[0]);
	not (s1_n,s[1]);
	and ()

endmodule
