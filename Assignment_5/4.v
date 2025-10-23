module fa #(
	parameter N=4,
	) (
	input [N-1:0]a,
	input [N-1:0]b,
	input cin,
	output [N-1:0]sum,
	output cout
	);

	assign {cout,sum} = a + b + cin;

endmodule

module tb;

	parameter N=8;
	reg [N-1:0]a;
	reg [N-1:0]b;
	reg cin;

	wire [N-1:0]sum;
	wire cout;

initial begin
	repeat (5) begin
		{a,b} = $random;
		cin = $random;
		#1;
		$display("a=%0b b=%0b cin=%0b | sum=%0b cout=%0b",a,b,cin,sum,cout);
	end
end
endmodule
