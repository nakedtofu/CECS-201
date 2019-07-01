`timescale 1ns / 1ps

module JKtb;

	reg clk;
	reg j;
	reg k;
	reg rst;

	wire q;
	integer i;

	JK uut (	
	.clk(clk),
	.j(j),
	.k(k),
	.rst(rst),
	.q(q)
	);

   always #5 clk = ~clk;

	initial begin
		clk=0;
		rst=1;
		j=0;
		k=0;

		#100;
      rst = 0;

		for (i=0; i<20; i=i+1)
		begin
			#7 {j} = i[1];
			#13 {k} = i[1];
		end
	end
      
endmodule
