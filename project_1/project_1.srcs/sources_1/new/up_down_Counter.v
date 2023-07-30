`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/26 00:49:34
// Design Name: 
// Module Name: up_down_Counter
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


module up_down_Counter(
       input clk,rst,up_down,
       output [3:0] count
    );
    
    reg [3:0] count_reg;
    
    always@(posedge clk or negedge rst)begin
        if(!rst)
            count_reg <= 4'b000;
        else
        //reset
            if(up_down == 1)
                if(count_reg == 9)
                    count_reg <= 0;
                 else
                    count_reg <= count_reg + 1;
         //up      
             else if (up_down == 0)
                if(count_reg == 0)
                    count_reg <= 9;
                else
                    count_reg <= count_reg - 1;
         //down
    end
    
    assign count = count_reg ;//outupt
    
endmodule

