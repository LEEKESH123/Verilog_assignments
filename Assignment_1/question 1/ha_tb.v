`include "1.v"
module tb;

	reg a,b;
	wire sum;
	wire carry;

	Ha dut(a,b,sum,carry);
	initial begin
		repeat(5) begin
			a = $random;
			b = $random;
			#1;
			$display("a=%0b b=%0b sum=%0b carry=%0b",a,b,sum,carry);
		end
	end

	
    initial begin
 	 $dumpfile("dump.vcd");
 	 $dumpvars;
	end
	
	
endmodule
