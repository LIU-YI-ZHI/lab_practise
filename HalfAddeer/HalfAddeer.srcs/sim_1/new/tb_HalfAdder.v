`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/22 17:14:37
// Design Name: 
// Module Name: tb_HalfAdder
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


module tb_HalfAdder();

    reg a,b;
    wire so,cout;
    
    initial begin
        a = 1'b0;
        b = 1'b0;
        #50;
        a = 1'b0;
        b = 1'b1;
        #50;
        a = 1'b1;
        b = 1'b0;
        #50;
        a = 1'b1;
        b = 1'b1;
        #50 $finish;
     end
     HalfAdder u_HalfAdder(.a(a), .b(b), .so(so), .cout(cout));
endmodule
