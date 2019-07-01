`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:03:15 11/08/2016 
// Design Name: 
// Module Name:    bit32counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bit32counter(clk, rst, sel, q, led);
	 
	 input clk, rst;
    input [1:0] sel;
	 output [31:0] q;
	 output [7:0] led;
	 reg [31:0] q;
	 reg [7:0] led;	 
	 
	 always @(posedge clk, posedge rst)
	    if(rst) q <= 32'b0;
		 else q <= q + 32'b1;
		 
	 always @ (*)
      case (sel)
        2'b00: led = q[7:0];
		  2'b01: led = q[15:8];
		  2'b10: led = q[23:16];
		  2'b11: led = q[31:24];
		endcase 
endmodule
