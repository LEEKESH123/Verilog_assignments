module tb;
	parameter N =4;
	reg [N-1:0] valid;
	integer a;
	initial begin
	valid = {{a}};
	$display("valid = %b",valid);
	end
endmodule
