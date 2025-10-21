//4x1 mux using behavioural 

`ifdef BEHAVIOURAL
module mux_4x1(a,sel,y);
	input [3:0]a;
	input [1:0]sel;
	output reg y;

	always@(*) begin
		case(sel)
	  		2'b00 : y = a[0];
			2'b01 : y = a[1];
			2'b10 : y = a[2];
			2'b11 : y = a[3];
			default : y = 1'b0;
		endcase
	end
endmodule

//4x1 mux using dataflow
`elsif DATAFLOW

module mux_4x1(a,sel,y);
	input [3:0]a;
	input [1:0]sel;
	output y;
	
	assign y = a[sel];

endmodule

//4x1 mux using gates 
`else STRUCTURAL

module mux_4x1(a,sel,y);
	input [3:0]a;
	input [1:0]sel;
	output y;

wire s0_n,s1_n;
wire w1,w2,w3,w4;

	not(s0_n,sel[0]);
	not(s1_n,sel[1]);
	and(w1,a[0],s1_n,s0_n);
	and(w2,a[1],s1_n,sel[0]);
	and(w3,a[2],sel[1],s0_n);
	and(w4,a[3],sel[1],sel[0]);
	or(y,w1,w2,w3,w4);

endmodule

`endif
