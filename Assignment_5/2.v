module ha(
	input [1:0]a,
	output [1:0]b
	);

	assign b[0] = a[0] ^ a[1];
	assign b[1] = a[0] & a[1];


endmodule

module tb;

reg [1:0]a;
wire [1:0]b;

ha dut (a,b);
initial begin
repeat (5) begin
	{a} = $random;
	#1;
	$display("a=%0b b=%0b",a,b);
end

end
endmodule
