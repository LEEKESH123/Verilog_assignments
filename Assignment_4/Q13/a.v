module tb;
  reg [3:0]a = 4'b1010;
  reg [3:0]b = 4'b1001;
  reg [1:0]c = 2'b10;
  integer catr;
  initial begin
    catr = {{4{a}},b,{2{c}}};
    $display("catr = %b",catr);
  end
endmodule

//# KERNEL: catr = 00000000101010101010101010011010
