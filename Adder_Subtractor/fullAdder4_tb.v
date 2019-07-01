`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:57:59 10/10/2016
// Design Name:   fullAdder4
// Module Name:   C:/Users/Naoaki/Desktop/adderSubtractor/adderSubtractor/fullAdder4_tb.v
// Project Name:  adderSubtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fullAdder4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fullAdder4_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Ci;

	// Outputs
	wire [3:0] S;
	wire Co;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	fullAdder4 uut (
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

      for(i=0; i<16; i=i+1)
		   #20 {A,B,Ci} = {i[3:0],i[3:0],i[0]};
	end
      
endmodule

