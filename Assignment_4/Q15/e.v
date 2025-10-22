module tb;

	integer a,b,c,d,e,f,g,h,i,j,k;
	integer y;
	

	assign y = (a==b) ? c: (d>20) ? e : (f > 40) ? g : (h==i) ? j :k;

	initial begin
	$display("a  b  c  d  e  f  g  h  i  j  k    y");
	$monitor("%2d %2d %2d %2d %2d %2d %2d %2d %2d %2d %2d  | %2d ",a,b,c,d,e,f,g,h,i,j,k,y);
		repeat(10) begin
			a = $urandom_range(10,50);      
			b = $urandom_range(10,50);      
			c = $urandom_range(10,50);      
			d = $urandom_range(10,50);      
			e = $urandom_range(10,50);      
			f = $urandom_range(10,50);      
			g = $urandom_range(10,50);      
			h = $urandom_range(10,50);      
			i = $urandom_range(10,50);      
			j = $urandom_range(10,50);      
			k = $urandom_range(10,50);
			#1;
	    end
	end
endmodule 


//# KERNEL: a  b  c  d  e  f  g  h  i  j  k    y
//# KERNEL: 27 22 20 23 12 31 30 47 42 30 45  | 12 
//# KERNEL: 13 27 36 17 10 37 29 25 48 35 45  | 45 
//# KERNEL: 32 26 36 50 19 47 25 17 39 26 50  | 19 
//# KERNEL: 47 47 40 19 21 40 50 37 32 13 25  | 40 
//# KERNEL: 49 22 38 41 36 10 34 20 19 24 25  | 36 
//# KERNEL: 22 24 18 32 28 50 42 35 30 34 49  | 28 
//# KERNEL: 50 10 41 33 27 29 14 15 17 18 46  | 27 
//# KERNEL: 15 37 29 16 43 32 12 28 39 19 22  | 22 
//# KERNEL: 14 48 30 49 14 20 48 38 29 30 16  | 14 
//# KERNEL: 14 27 19 26 33 33 35 10 45 26 16  | 33 
