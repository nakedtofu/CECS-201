`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:14:10 10/10/2016 
// Design Name: 
// Module Name:    fullAdder16 
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
module fullAdder16(
    input [15:0] A,
    input [15:0] B,
    input Ci,
    output [15:0] S,
    output Co
    );

	fullAdder4 FA4_0 (
		.A(A[3:0]), 
		.B(B[3:0]), 
		.Ci(Ci), 
		.S(S[3:0]), 
		.Co(Co0)
	);
	
	fullAdder4 FA4_1 (
		.A(A[7:4]), 
		.B(B[7:4]), 
		.Ci(Co0), 
		.S(S[7:4]), 
		.Co(Co1)
	);
	
	fullAdder4 FA4_2 (
		.A(A[11:8]), 
		.B(B[11:8]), 
		.Ci(Co1), 
		.S(S[11:8]), 
		.Co(Co2)
	);
	
	fullAdder4 FA4_3 (
		.A(A[15:12]), 
		.B(B[15:12]), 
		.Ci(Co2), 
		.S(S[15:12]), 
		.Co(Co)
	);

endmodule
