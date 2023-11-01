`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 03:29:13 PM
// Design Name: 
// Module Name: T_FF
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


module T_FlipFlop  ( input clk,input t, output reg q);

  
  initial begin
  q = 0;
  end
      always @ (posedge clk) begin
        
        if (t)  
            q <= ~q;  
        else  
            q <= q;  
  end  
endmodule  


module Counters( sysclk,Q1,Q2,Q3);
   input sysclk;
   output Q1;
   output Q2;
   output Q3;

  wire tt2;
  wire tt3;

   

    T_FlipFlop       num_1(.clk(sysclk),.T(1'b1),.Q(Q1));
    
    assign tt2 = ~Q1;
    
    T_FlipFlop       num_2(.clk(Q1),.T(tt2),.Q(Q2));
    
    assign tt3 = Q2& (~Q2);
    
    T_FlipFlop       num_3(.clk(Q2),.T(1'b1),.Q(Q3)); 
    
 endmodule


