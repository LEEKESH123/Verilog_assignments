//Genrating 100MHz frequency

module tb;
	reg clk;
	real tp,freq;
	initial begin
		clk = 0;
		freq = 100.0;
		tp = 1000.0/freq;
		forever #(tp/2) clk= ~clk;
		end
	initial begin
		#1000;
		$finish;
		end
	endmodule

