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

     // �w�q���������M���m�H��
 reg clk;
 reg rst;

 // �w�q���իH��
 wire led;

 // �إ߳Q���ժ��Ҳչ��
 up_down_LED_SEG u_up_down_LED_SEG(
     .led(led),
     .clk(clk),
     .rst(rst)
 );

 // ��������
 always #5 clk = ~clk; // 5 ns ���g��

 // �������m�H���A�N��O�� 0.1 us�A�M������
 initial begin
     rst = 1;
     #100; // 100 ns
     rst = 0;
 end

 // �������� 2 ������
 initial begin
     // �إߤ@�� 2 ���ɶ��b
     #2000000; // 2,000,000 ns = 2 ��

     // ��������
     $finish;
 end

endmodule
