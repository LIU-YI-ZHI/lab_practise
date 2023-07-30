`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/25 16:51:58
// Design Name: 
// Module Name: Counter
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


module Counter(

    input clk,rst,up_down,
    output [3:0] count
    
    );
    
    reg [3:0] count_reg = 0 ;
    
    always@(posedge clk or posedge rst )begin
        if(rst)
            count_reg <= 0;
        else if(~up_down)
                 count_reg <= count_reg + 1;
            else       
                 count_reg <= count_reg - 1;                   
    end
        assign count =  count_reg ;
endmodule
