`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/26 14:48:11
// Design Name: 
// Module Name: up_down_LED_SEG
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


module up_down_LED_SEG(    
output reg led,
input clk,
input rst
);

reg [29:0] count;
reg [29:0] threshold = 30'd500_000_000; // 將閾值設置為 0.5 秒

always @(posedge clk or posedge rst) begin
    if (rst) begin
        count <= 30'd0;
        led <= 1'b1;
    end else begin
        if (count == threshold) begin
            count <= 30'd0;
            led <= ~led; // 切換 LED 的輸出信號
        end else begin
            count <= count + 1;
        end
    end
end

endmodule