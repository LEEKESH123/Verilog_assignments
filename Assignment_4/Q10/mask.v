module mask;
  reg [15:0]a;
  reg [15:0]mask;
  reg [15:0]pattern;
  
  initial begin
  	a = 16'b0100_1010_1001_0011;
    
    $display("a(origianl)=%b",a);
    
    mask = 16'h00f0;
    //example 1 set [7:4] = 1111
    
    pattern = 16'h00f0;
    a = (a & ~mask) | pattern;
    $display("affter setting [7:4] to 1111 = %b",a);
    
    //example 2 set [7:4] = 0000
    
    pattern = 16'h0000;
    a = (a & ~mask) | pattern;
    $display("after setting [7:4] to 0000 = %b",a);
    
    //example 3 set [7:4] = 1010
    
    pattern = 16'h00a0;
    a = (a & ~mask) | pattern;
    $display("after setting [7:4] to 1010 = %b",a);
  end
endmodule
