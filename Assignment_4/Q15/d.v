module mux41(
	input [3:0]a,
	input [1:0]s,
	output y);

	assign y = (s == 2'b00) ? a[0] : 
			   (s == 2'b01) ? a[1] :
			   (s == 2'b10) ? a[2] :
			   a[3];

endmodule

module tb;

	reg [3:0]a,
	reg [1:0]s,
	wire y;

	mux41 dut (a,s,y);
	initial begin
		repeat (5) begin
			{a,s} = $random;
			#1;
			$display("a=%0b s=%0b y=%0b",a,s,y);
		end
	end
endmodule



