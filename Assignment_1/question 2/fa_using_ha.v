module ha(a,b,sum,ca);
	input a,b;
	output reg sum,ca;

	always@(*) begin
		sum = a ^ b;
		ca = a & b;
	end
endmodule

module fa(a,b,cin,sum,ca);
	input a,b,cin;
	output sum,ca;

	wire s1,c1,c2;

		ha ha1 (.a(a),.b(b),.sum(s1),.ca(c1));
		ha ha2 (.a(cin),.b(s1),.sum(sum),.ca(c2));

		assign ca = c1 | c2;


endmodule

