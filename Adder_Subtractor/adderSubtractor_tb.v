`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:36:28 10/10/2016
// Design Name:   Fulladder
// Module Name:   C:/Users/Naoaki/Desktop/adderSubtractor/adderSubtractor/adderSubtractor_tb.v
// Project Name:  adderSubtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Fulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adderSubtractor_tb;

	// Inputs
	reg A;
	reg B;
	reg Ci;

	// Outputs
	wire S;
	wire Co;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	Fulladder uut (
		.A(A), 
		.B(B), 
		.Ci(Ci), 
		.S(S), 
		.Co(Co)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Ci = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		for (i=0; i<8; i=i+1)
         begin		
		   #20{A,B,Ci} = i[2:0];
	      end
		
   end
   
endmodule