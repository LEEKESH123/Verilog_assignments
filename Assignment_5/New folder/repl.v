//Replication operater
module tb;
reg [3:0] a,b,c;
reg [31:0]catr;
	initial begin 
	a = 4'b1010;
	b = 4'b1001;
	c = 4'b0101;

		catr = {{4{a}},{b},{2{c}}};
		$display("catr = %b",catr);
		end
	endmodule

//# End time: 14:47:17 on Aug 18,2025, Elapsed time: 0:00:01
//# Errors: 0, Warnings: 0
//# End time: 14:47:29 on Aug 18,2025, Elapsed time: 0:02:10
//# Errors: 4, Warnings: 0
//# vsim tb 
//# Start time: 14:47:30 on Aug 18,2025
//# Loading work.tb
//# catr = 00001010101010101010100101010101




