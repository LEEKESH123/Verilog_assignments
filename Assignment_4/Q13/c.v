module tb;

parameter WIDTH = 8;
reg [WIDTH-1:0]valid;
	initial begin
		valid = {WIDTH{1'b1}};
		$display("valid=%0b",valid);
	end
endmodule
