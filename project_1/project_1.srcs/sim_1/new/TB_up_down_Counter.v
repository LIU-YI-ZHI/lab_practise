`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/26 01:02:44
// Design Name: 
// Module Name: TB_up_down_Counter
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


module TB_up_down_Counter();

    reg clk,rst,up_down;
    wire [3:0] count;
    
    up_down_Counter u_up_down_Counter(
    
        .clk(clk),
        .rst(rst),
        .up_down(up_down),
        .count(count)
    );
    
    initial begin 
    clk = 0;
    forever #5 clk = ~clk;
    end
    ///clk
    
    initial begin
       rst = 0; 
       #50; 
       //reset
       rst = 1;
       up_down = 1;
       #400;
       //up
       rst = 0; #50;
       //zero
       rst = 1;
       up_down = 0;#400;
       //down
    end
endmodule
