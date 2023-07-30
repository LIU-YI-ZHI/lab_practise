`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/25 15:37:58
// Design Name: 
// Module Name: ALU
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


module ALU(

    input [3:0] a,
    input [3:0] b,
    input [2:0] sel,
    output [7:0] ans

    );
    
    reg [7:0] result = 8'b000_0000;
    
    always@(a or b or sel)begin
        case(sel)
            3'b000:
                result = a+b;
            3'b001:
                result = a-b;
            3'b010:
                result = a&b;
            3'b011:
                result = a|b;
            3'b100:
                result = a*b;
             default:
                result = 8'b0000_0000;
         endcase
    end
    
    assign ans = result;
   
endmodule
