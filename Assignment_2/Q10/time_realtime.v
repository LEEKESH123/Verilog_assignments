module tb;
	real a;
	realtime b;
	
	initial begin
		$display("a=%b",a);
		$display("b=%b",b);
	end
endmodule

//default time = 0;singed ,64-bit,dint support frctional
//default realtime = a;unsigned,64-bit,support fractional


