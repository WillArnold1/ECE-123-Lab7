`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 01:38:24 PM
// Design Name: 
// Module Name: SR_Latch
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


module SR_Latch( input S, R, output Q, Qbar);
nor  N1(Q, R, Qbar);
nor  N2(Qbar, S, Q);
endmodule
