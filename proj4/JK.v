`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:08:56 11/01/2016
// Design Name:   JK
// Module Name:   C:/Users/Naoaki/Desktop/CECS201/Project_4/Project_4/JKtb.v
// Project Name:  Project_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JK
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JK(clk, rst, j, k, q);

	// Inputs
	input clk;
	input rst;
	input j;
	input k;
	output q;

	// Outputs
	reg q, nq;
	
	always @(posedge clk, posedge rst)
	
	   if(rst)
		   q <= 1'b0;
		else
		   q <= nq;
			
	always @(*)
	
	   case({j,k})
	      2'b00: nq = q;
			2'b01: nq = 1'b0;
			2'b10: nq = 1'b1;
			2'b11: nq = ~q;
      endcase
		
endmodule
