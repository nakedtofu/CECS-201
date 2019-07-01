`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:32:18 10/10/2016 
// Design Name: 
// Module Name:    Fulladder 
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
module Fulladder
(

   input A,
   input B,
   input Ci,
   output reg S,
   output reg Co

);

   always @(*)
   begin
   #5 Co = A&B | A&Ci | B&Ci;
   S = A ^ B ^ Ci;
   end

endmodule