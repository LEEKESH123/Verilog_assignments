module tb;
  reg [7:0] a,b,c,d,e,f,g,h,i,j,k;
  reg [7:0] y;

  // Procedural version using if-else
  always @(*) begin
    if (a == b)
      y = c;
    else if (d > 20)
      y = e;
    else if (f > 40)
      y = g;
    else if (h == i)
      y = j;
    else
      y = k;
  end

  initial begin
    $display(" a   b   c   d   e   f   g   h   i   j   k   |   y");
    $display("--------------------------------------------------");
    repeat(10) begin
      a = $urandom_range(0,50);
      b = $urandom_range(0,50);
      c = $urandom_range(0,50);
      d = $urandom_range(0,50);
      e = $urandom_range(0,50);
      f = $urandom_range(0,50);
      g = $urandom_range(0,50);
      h = $urandom_range(0,50);
      i = $urandom_range(0,50);
      j = $urandom_range(0,50);
      k = $urandom_range(0,50);
      #1; // allow combinational block to react
      $display("%2d  %2d  %2d  %2d  %2d  %2d  %2d  %2d  %2d  %2d  %2d  |  %2d",
                a,b,c,d,e,f,g,h,i,j,k,y);
    end
  end
endmodule

