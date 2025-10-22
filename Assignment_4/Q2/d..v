//multiply using <<

module muti;
	reg [15:0]a = 65;
	reg [15:0]b = 37;
	reg [31:0]c;

	initial begin
	c = (a<<5) + (a<<4) + a;
	$display("65 * 37 is equal to : %0d",c);
	end
endmodule
