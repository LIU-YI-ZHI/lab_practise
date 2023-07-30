`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/25 17:02:31
// Design Name: 
// Module Name: TB_Counter
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


module TB_Counter();

    reg clk,rst,up_down;
    wire [3:0] count;
    
      
    Counter u_Counter(
        .clk(clk),
        .rst(rst),
        .up_down(up_down),
        .count(count)  
         
    );
     initial begin 
        clk = 0;
        forever #10 clk= ~clk;
     end
     
    initial begin 
        rst = 1; 
        #20;//reset 
        
       rst = 0;
       up_down = 0;
       #500;//up
        up_down = 1;
        #500;//down
    end
 
endmodule
