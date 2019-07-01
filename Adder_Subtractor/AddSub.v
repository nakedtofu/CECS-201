`timescale 1ns / 1ps

// AddSub.v

module AddSub(A, B, S, Co, Add0_Sub1);

input [15:0] A, B;
input Add0_Sub1;
output [15:0] S;
output Co;

wire [15:0] Bin;

// generate the multiplexer

assign Bin = (Add0_Sub1) ? ~B : B;

// instantiating the Full Adder 16

fullAdder16 FA16 (.A(A),
.B(Bin),
.Ci(Add0_Sub1),
.S(S),
.Co(Co)
);

endmodule