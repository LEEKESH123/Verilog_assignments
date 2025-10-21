module hhp(
	input [3:0]a,
	output [1:0]b);

	always@(*) begin
		if(a[3]==1'b1) y = 2'b11;
		else if(a[2]==1'b1) y = 2'b10;
		else if(a[1]==1'b1) y = 2'b01;
		else y = 2'b00;

	end
endmodule
