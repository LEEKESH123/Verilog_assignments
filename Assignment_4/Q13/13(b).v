module tb;
	reg [3:0] valid;

	initial begin
		valid = {4{1'b1}};
		$display("valid : %0b",valid);
	end
endmodule 
