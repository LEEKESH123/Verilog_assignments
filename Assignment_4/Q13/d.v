module tb;
	parameter width=4;
	reg [width-1:0]valid;
	reg [width-1:0]ready;

	wire handshake;
	initial begin
		valid = {width{1'b1}};
		ready = {width{1'b1}};

		$display("valid=%0b ready=%0b",valid,ready);
	end

	assign handshake = &(valid&ready);

	initial begin
	#1	$display("handshake complete=%0b",handshake);
	end
endmodule




//# KERNEL: valid=1111 ready=1111
//# KERNEL: handshake complete=1

