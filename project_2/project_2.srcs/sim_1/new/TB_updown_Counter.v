`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/26 02:07:46
// Design Name: 
// Module Name: TB_updown_Counter
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


module TB_updown_Counter(); 

    reg clk,rst,up_down_0,up_down_1;
    wire [3:0] counter_0;
    wire [3:0] counter_1;
    
    updown_2_Counter u_updown_2_Counter(
        .clk(clk),
        .rst(rst),
        .up_down_0(up_down_0),
        .up_down_1(up_down_1),
        .counter_0(counter_0),
        .counter_1(counter_1)
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
       up_down_0 = 1;
       up_down_1 = 1;
       #400;
       //up
       rst = 0; #50;
       //zero
       rst = 1;//start
       up_down_0 = 0;
       up_down_1 = 0;#400;
       //down
    end
endmodule
