module ha(
	input a,b,
	output s,ca
	);

	assign s = a ^ b;
	assign ca = a & b;


endmodule

module fa(
	input a,b,cin,
	output s,ca
	);

	wire w1,w2,w3;
	ha dut1 (.a(a),.b(b),.s(w1),.ca(w2));
	ha dut2 (.a(w1),.b(cin),.s(s),.ca(w3));

	assign ca = w2 | w3;

endmodule
 


 module tb;
	reg a,b,cin;
	wire s,ca;

	fa dut (a,b,cin,s,ca);
	initial begin
		repeat(5) begin
			{a,b} = $random;
			cin = $random;
			#1;
			$display("a=%0b b=%0b cin=%0b | sum=%0b carry=%0b",a,b,cin,s,ca);
		end
	end 




 endmodule
