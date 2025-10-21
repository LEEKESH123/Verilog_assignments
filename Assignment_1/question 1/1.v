//half adder in data flow 
`ifdef DATAFLOW
module Ha(a,b,sum,ca);
	input a,b;
	output sum;
	output ca;

	assign sum = a ^ b;
	assign ca  = a & b;
	
endmodule


//half adder in behaviorual 
`elseif BEHAVIORUAL
module Ha(a,b,sum,ca);
	input a,b;
	output sum;
	output ca;

	always@(*) begin
		sum = a ^ b;
		ca  = a & b;
	end
endmodule


//half adder in structural 
`else STRUCTURAL
module Ha(a,b,sum,ca);
	input a,b;
	output sum,ca;

	xor(sum,a,b);
	and(ca,a,b);

endmodule

`endif
