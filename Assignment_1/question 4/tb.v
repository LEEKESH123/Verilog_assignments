
`include "mux_4x1.v"  

module tb;
    reg [3:0] a;
    reg [1:0] sel;
    wire y;

    mux_4x1 dut (
        .a(a),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("mux.vcd");
        $dumpvars(0, tb);

        $display("Time | a[3:0] sel | y");

        $monitor("%4t | %b %b  | %b", $time, a, sel, y);

        a = 4'b0000; sel = 2'b00; #5;
        a = 4'b1010; sel = 2'b01; #5;
        a = 4'b1100; sel = 2'b10; #5;
        a = 4'b1111; sel = 2'b11; #5;

        for (integer i=0; i<16; i=i+1) begin
            a = i;                // 4-bit input
            sel = i % 4;          // 2-bit selector
            #5;
        end

        $display("Simulation finished at time %0t", $time);
        $finish;
    end
endmodule
