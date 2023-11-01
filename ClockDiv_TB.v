`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 03:17:48 PM
// Design Name: 
// Module Name: ClockDiv_TB
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


module ClockDiv_TB;
 reg clock_in;
 wire clock_out;
 
 Clock_Divider uut (.clock_in(clock_in), .clock_out(clock_out));
 initial begin
  
 clock_in = 0;
  
        forever #10 clock_in = ~clock_in;
 end
      
endmodule


