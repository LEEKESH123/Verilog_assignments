module tb;
	reg [4:0] valid;
	reg [31:0] a;
	initial begin
	a = 4'b1111;
	valid = {{a}};
	$display("valid = %b",valid);
	$display("a = %b",a);
	end
endmodule

//# valid = 01111
//# a = 00000000000000000000000000001111


