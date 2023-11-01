`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 02:57:38 PM
// Design Name: 
// Module Name: D_FF_TB
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


module D_FF_TB();
reg clk;
reg d;
reg rstn;
reg [2:0] delay;

D_FF_Sync DFF0 (.d(d), .rstn(rstn), .clk(clk), .q(q));

always #10 clk = ~clk;

initial begin
    clk<=0;
    d<=0;
    rstn<=0;
    
    #15 d<= 1;
    #10 rstn <=1;
    
   end
   
   end
endmodule
