module fact;
integer n;
	function automatic integer fact( input integer n);
	begin
	if (n<2) 
	fact = 1;
	else
	fact = n*fact(n-1);
	end
	endfunction
	initial begin
	n=5;
	$display("factorial of n=%d",fact(n));
	end
endmodule

//# factorial of n=        120
