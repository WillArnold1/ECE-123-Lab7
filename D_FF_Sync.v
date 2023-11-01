`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 02:45:34 PM
// Design Name: 
// Module Name: D_FF_Async
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


module D_FF_Sync(input d,
input rstn,
input clk,
output reg q);

always @ (posedge clk)
    if(!rstn)
        q<=0;
    else
        q<=d;

endmodule
