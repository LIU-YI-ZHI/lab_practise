`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/22 17:27:46
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
 input a,b,c,
 output cout,so
    );
    
    wire n1,n2,n3;
    
    xor u0(so,a,b,c);
    //so
    
    and u1(n1,a,b);
    and u2(n2,b,c);
    and u3(n3,a,c);
    
    or u4(cout,n1,n2,n3);
    
    
endmodule
