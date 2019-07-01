`timescale 1ns / 1ps

// test bench for AddSub

module AddSub_tb;

reg [15:0] A, B;
reg Add0_Sub1;
wire [15:0] S;
wire Co;

integer i;

// instantiate the DUT

AddSub as(.A(A), .B(B),
.S(S), .Co(Co),
.Add0_Sub1(Add0_Sub1)
);

initial begin
A = 0; B = 0; Add0_Sub1 = 0;

// verify the addition

#250 A = 16'HFFFF; B=16'h0001;

// verify the subtraction

#500 Add0_Sub1 = 1;
#50 for (i=0; i<25; i = i + 1)
begin
#250 A=i*20;B=i*17;
end

#500 Add0_Sub1 = 0;
#50 for (i=0; i<25; i = i + 1)
begin
#250 A=i*20;B=i*17;
end
end

endmodule