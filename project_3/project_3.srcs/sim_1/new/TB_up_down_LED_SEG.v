`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/26 14:52:26
// Design Name: 
// Module Name: TB_up_down_LED_SEG
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


module TB_up_down_LED_SEG();

     // 定義模擬時鐘和重置信號
 reg clk;
 reg rst;

 // 定義測試信號
 wire led;

 // 建立被測試的模組實例
 up_down_LED_SEG u_up_down_LED_SEG(
     .led(led),
     .clk(clk),
     .rst(rst)
 );

 // 模擬時鐘
 always #5 clk = ~clk; // 5 ns 的週期

 // 模擬重置信號，將其保持 0.1 us，然後釋放
 initial begin
     rst = 1;
     #100; // 100 ns
     rst = 0;
 end

 // 模擬持續 2 秒的測試
 initial begin
     // 建立一個 2 秒的時間軸
     #2000000; // 2,000,000 ns = 2 秒

     // 結束模擬
     $finish;
 end

endmodule
