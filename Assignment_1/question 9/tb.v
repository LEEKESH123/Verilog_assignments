`include "mux_4x1.v"
module tb;
  reg [7:0] a;
  reg [2:0] s;
  wire y;

  mux_8x1 dut(
    .a(a),
    .s(s),
    .y(y)
  );

  initial begin
    $display("TIME\t s2 s1 s0 | INPUTS (a7..a0) | OUTPUT");
    $display("--------------------------------------------");

    a = 8'b10101011;  

    for (integer i = 0; i < 8; i = i + 1) begin
      s = i[2:0];
      #5; // small delay
      $display("%4t\t  %b  %b  %b | %b |   %b",
          $time, s[2], s[1], s[0], a, y);
    end

    $display("--------------------------------------------");
    $finish;
  end
endmodule
