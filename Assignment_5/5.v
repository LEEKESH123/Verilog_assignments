module fa(
	input [N-1:0]a,
	input [N-1:0]b,
	input cin,
	output [N-1:0]sum,
	output cout
	); 

	assign sum = a ^ b ^ cin;
	assign cout = a&b | cin&a | cin&b;


endmodule

module fa #(
	parameter N=4;
) (

	input [N-1:0]a;
	input [N-1:0]b;
	input cin;
	output [N-1:0]s;
	output cout;
);
	wire [N:0]c;
	assign c[0] = cin;
	assign cout = c[N];

	genvar i;
	generate
	for(i=0;i<N;i=i+1) begin
		fa dut1 (
		.a(a[i]),
		.b(b[i]),
		.cin(cin[i]),
		.s(s[i]),
		.cout(cout[i+1])
		);
	end
	endgenerate
endmodule 



module tb_fa_Nbit;
  parameter N = 4;
  reg  [N-1:0] a, b;
  reg          cin;
  wire [N-1:0] sum;
  wire         cout;

  fa_Nbit #(N) dut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );

  initial begin
    $display("A        B       Cin | Sum      Cout");
    $display("----------------------------------");

    a = 4'b0001; b = 4'b0010; cin = 0; #10;
    $display("%b %b  %b  | %b   %b", a, b, cin, sum, cout);

    a = 4'b0111; b = 4'b0011; cin = 1; #10;
    $display("%b %b  %b  | %b   %b", a, b, cin, sum, cout);

    a = 4'b1111; b = 4'b0001; cin = 0; #10;
    $display("%b %b  %b  | %b   %b", a, b, cin, sum, cout);

    a = 4'b1010; b = 4'b0101; cin = 1; #10;
    $display("%b %b  %b  | %b   %b", a, b, cin, sum, cout);

    $finish;
  end
endmodule

