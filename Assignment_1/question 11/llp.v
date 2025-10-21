module llp(
	input [3:0]a,
	output reg [1:0]b);

	always@(*) begin
		if(a[0]==1'b1) b = 2'b11;
		else if(a[1]==1'b1) b = 2'b10;
		else if(a[2]==1'b1) b = 2'b01;
		else b = 2'b00;
	end
endmodule
