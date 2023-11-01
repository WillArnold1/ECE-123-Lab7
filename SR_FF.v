`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 02:04:25 PM
// Design Name: 
// Module Name: SR_FF
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SR_FF(input S, R, CLK, output Q, Qbar);
wire A, B;

always @ (CLK);

nand NA1(A, CLK, R);
nand NA2(B, CLK, S);
nand NA3(Q, Qbar, B);
nand NA4(Qbar, Q, A);
endmodule
