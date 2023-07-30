`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/24 15:30:53
// Design Name: 
// Module Name: FourAdder
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


module FourAdder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] so,
    output cout
);
    wire n1,n2,n3;
    
    FullAdder
    u1_FullAdder(.a(a[0]), .b(b[0]), .cin(cin), .so(so[0]), .cout(n1));
     FullAdder
    u2_FullAdder(.a(a[1]), .b(b[1]), .cin(n1), .so(so[1]), .cout(n2));
     FullAdder
    u3_FullAdder(.a(a[2]), .b(b[2]), .cin(n2), .so(so[2]), .cout(n3));
     FullAdder
    u4_FullAdder(.a(a[3]), .b(b[4]), .cin(n3), .so(so[3]), .cout(cout));
     
endmodule
