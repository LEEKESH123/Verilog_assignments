module tb;
	
	reg [3:0]a = 4'b10zx;
	reg [3:0]b = 4'b10zx;
	reg c;
	initial begin
		c = (a==b);
		$display("c=%0b",c);
	end
endmodule

//# KERNEL: c=x
