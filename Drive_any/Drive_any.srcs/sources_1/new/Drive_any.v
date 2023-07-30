`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/28 17:24:07
// Design Name: 
// Module Name: Drive_any
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


module Drive_any(
    input clkin,
    input rst,
    output reg clkout
    
    );

    parameter Divider_Counter = 50;
    reg [5:0] Counter = 0;
    
    always@(posedge clkin or negedge rst)begin
        if(!rst)
            Counter <= 0;
        else begin
            if(Counter == (Divider_Counter))
                Counter <= 0;
            else
                Counter <= Counter + 1;
         end
    end
/////////////////////////////////////////////////////////////////////////////////////////////////
    always@(posedge clkin or negedge rst)begin
        if(!rst)
            clkout <= 1'b0;
        else begin
            if(Counter < Divider_Counter/2)
                clkout <= 1'b0;
            else
                clkout <= 1'b1;
         end
    end
    
endmodule
