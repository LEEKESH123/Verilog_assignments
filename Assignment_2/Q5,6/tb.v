`include "Q.5,6.v"
module tb;
	reg [7:0]a;
	reg [2:0]s;
	wire y;

	mux81 dut (a,s,y);

	initial begin
		repeat(5) begin
		  a = $random;
		  s = $random;
		  $display("a=%0b s=%0b y=%0b",a,s,y);
		end
	end
endmodule
