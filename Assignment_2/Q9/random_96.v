module tb;
	integer a;
	initial begin
		a = {$random,$random.$random};
		$display("a=%d",a);
	end
endmodule
