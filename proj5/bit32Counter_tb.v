`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:09:23 11/08/2016
// Design Name:   bit32counter
// Module Name:   C:/Users/Naoaki/Desktop/CECS201/Project_5/Project_5/bit32Counter_tb.v
// Project Name:  Project_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bit32counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bit32Counter_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [1:0] sel;

	// Outputs
	wire [31:0] q;
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	bit32counter uut (
		.clk(clk), 
		.rst(rst),
      .sel(sel),		
		.q(q),
		.led(led)
	);

   always
	#5 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		sel = 0;
		#100 rst = 0;

		// Add stimulus here

	end
      
endmodule

