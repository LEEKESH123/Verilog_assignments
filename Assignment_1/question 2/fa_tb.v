`include "2.v"
module tb;

	reg a,b,cin;
	wire sum;
	wire ca;

	fa dut (a,b,cin,sum,ca);

	initial begin
		repeat(5) begin
			a=$random;
			b=$random;
			cin=$rqndom;
			#1;
			$display("a=%0b b=%0b sum=%0b ca=%0b",a,b,sum,ca);
		end
	end
endmodule
