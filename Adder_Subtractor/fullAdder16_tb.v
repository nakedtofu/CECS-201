`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:19:31 10/10/2016
// Design Name:   fullAdder16
// Module Name:   C:/Users/Naoaki/Desktop/adderSubtractor/adderSubtractor/fullAdder16_tb.v
// Project Name:  adderSubtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fullAdder16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fullAdder16_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg Ci;

	// Outputs
	wire [15:0] S;
	wire Co;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	fullAdder16 uut (
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
		
		for(i=0;i<32;i=i+1)
          #20 {A,B,Ci} = {i[15:0],i[15:0],i[0]};
	end
      
endmodule

