`timescale 1ns / 1ps

module toggletb;

	reg clk;
	reg t;
	reg rst;

	wire q;
	integer i;

	toggle uut (
		.clk(clk), 
		.t(t), 
		.q(q), 
		.rst(rst)
	);

	always #5 clk = ~clk;

	initial begin

		clk = 0;
		t=0;
		rst = 1;

		#100;
		rst = 0;

		for (i=0; i<20; i=i+1) 
			#20 t = i[1];

	end
      
endmodule
