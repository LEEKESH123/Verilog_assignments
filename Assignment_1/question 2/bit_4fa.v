module fa(a,b,cin,sum,ca);
	input a,b,cin;
	output sum,ca;

	always@(*) begin
		sum = a ^ b ^ c;
		ca = a&b | a&cin | b&cin;
    end
endmodule 

module fa(a,b,cin,sum,ca);
	input [3:0]a,b;
	input cin;
	output [3:0]sum;
	output ca;

	wire c1,c2,c3;

	fa fa1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.ca(c1));
	fa fa2(.a(a[1]),.b(b[1]),.cin(c1),.sum(sum[1]),.ca(c2));
	fa fa3(.a(a[2]),.b(b[2]),.cin(c2),.sum(sum[2]),.ca(c3));
	fa fa4(.a(a[3]),.b(b[3]),.cin(c3),.sum(sum[3]),.ca(ca));

endmodule
