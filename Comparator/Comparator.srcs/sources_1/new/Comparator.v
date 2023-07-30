`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/24 16:42:37
// Design Name: 
// Module Name: Comparator
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


module Comparator(

    input [val-1 : 0] a,
    input [val-1 : 0] b,
    output [1:0] ans

    );
    
    parameter val = 4;
    reg [1:0] result;
    
    always@(a,b) begin
        if(a>b)
            result = 2'b01;
        else if(a<b)
            result = 2'b10;
        else
            result = 2'b11;
     end
     
     assign ans = result;
    
endmodule
