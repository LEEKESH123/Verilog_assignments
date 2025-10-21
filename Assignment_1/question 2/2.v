`ifdef BEHAVIORUAL
module fa(a,b,cin,sum,ca);
	input a,b,cin;
	output reg sum,ca;

	always@(*)begin
		sum = a ^ b ^ cin;
		ca = cin(a + b); 
	end
endmodule

`elseif DATAFLOW
module fa(a,b,cin,sum,ca);
	input a,b,cin;
	output sum,ca;

	assign sum = a ^ b ^ cin;
	assign ca  = cin(a + b);
endmodule

`else STRUCTRUAL 
module fa(a,b,cin,sum,ca);
	input a,b,cin;
	output sum,ca;

	wire n1,n2,n3;

	xor(n1,a,b);
	xor(sum,n1,cin);

	and(n2,a,b);
	and(n3,n1,cin);
	or(ca,n1,n2);
	

endmodule

`endif
