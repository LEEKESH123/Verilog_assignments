module tb;

reg [7:0]y;
	initial begin
	y = (-1==-1) ? 10 : 20;
	$display("y = %0b",y);
	end
endmodule


//#KERNEL: y = 10
