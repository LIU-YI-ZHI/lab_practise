`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/24 16:50:25
// Design Name: 
// Module Name: Comparator_tb
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


module Comparator_tb();

    reg [3:0] a,b;
    wire [1:0] ans;
    
    initial begin
        a = 4'h0;
        b = 4'h5;
        #50 //2
        a = 4'ha;
        b = 4'h8;
        #50 //1
        a = 4'hf;
        b = 4'hf;
        #50 //3
        a = 4'h6;
        b = 4'hc; //2
        #50 $finish;
    end 
    Comparator u_Comparator(.a(a), .b(b), .ans(ans));
endmodule
