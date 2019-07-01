`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:02:24 11/01/2016
// Design Name:   toggle
// Module Name:   C:/Users/Naoaki/Desktop/CECS201/Project_4/Project_4/toggletb.v
// Project Name:  Project_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: toggle
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module toggle(clk, t, q, rst);

	// Inputs
	input clk;
	input t;
	input rst;

	// Outputs
	output q;

   reg q, nq;
	
	always @(posedge clk, posedge rst)
	   if(rst)
		   q <= 1'b0;
		else
		   q <= nq;
			
	always @(*)
	   if(t)
		   nq = ~q;
		else
		   nq = q;
      
endmodule
