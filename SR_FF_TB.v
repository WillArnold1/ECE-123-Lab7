`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 01:59:53 PM
// Design Name: 
// Module Name: SR_FF_TB
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


module SR_FF_TB;
reg S,R, CLK;
wire Q, QBAR;



SR_FF SR2(.Q(Q), .Qbar(QBAR), .S(S), .R(R), .CLK(CLK)); // instantiation by port name.

// apply test vectors
initial begin
  CLK=0;
     forever #10 CLK = ~CLK;  
end 
initial begin 
 S= 1; R= 0;
 #100; S= 0; R= 1; 
 #100; S= 0; R= 0; 
 #100;  S= 1; R=1; 
end 
endmodule
