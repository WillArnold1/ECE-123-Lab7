`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 01:46:58 PM
// Design Name: 
// Module Name: SR_Latch_TB
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


module SR_Latch_TB();
reg R,S;
wire Q, Qbar;

SR_Latch SR1(.S(S), .R(R), .Q(Q), .Qbar(Qbar));

initial
    begin
    R=0; S=0;
    #5 S=1;
    #5 S=0;
    #5 R=1;
    #5 R=0; S=1;
    #5 S=0; R=1;
    #5 R=0;
    #5 R=1; S=1;
    end
    
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    end
    
endmodule
