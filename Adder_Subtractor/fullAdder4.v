`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:52:20 10/10/2016 
// Design Name: 
// Module Name:    fullAdder4 
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
module fullAdder4(
    input [3:0] A,
    input [3:0] B,
    input Ci,
    output [3:0] S,
    output Co
    );
	
		Fulladder FA0 (
		.A(A[0]), 
		.B(B[0]), 
		.Ci(Ci), 
		.S(S[0]), 
		.Co(Co0)
		);
	
		Fulladder FA1 (
		.A(A[1]), 
		.B(B[1]), 
		.Ci(Co0), 
		.S(S[1]), 
		.Co(Co1)
	   );
	
		Fulladder FA2 (
		.A(A[2]), 
		.B(B[2]), 
		.Ci(Co1), 
		.S(S[2]), 
		.Co(Co2)
	   );
	
		Fulladder FA3 (
		.A(A[3]), 
		.B(B[3]), 
		.Ci(Co2), 
		.S(S[3]), 
		.Co(Co)
	   );

endmodule
