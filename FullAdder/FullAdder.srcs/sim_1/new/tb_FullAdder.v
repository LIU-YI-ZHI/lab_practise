`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/22 17:35:41
// Design Name: 
// Module Name: tb_FullAdder
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


module tb_FullAdder();

    reg a,b,c;
    wire so,cout;
    
    initial begin
        a = 0;b = 0;c = 0; #50
        a = 0;b = 0;c = 1; #50
        a = 0;b = 1;c = 0; #50
        a = 0;b = 1;c = 1; #50
        a = 1;b = 0;c = 0; #50
        a = 1;b = 0;c = 1; #50
        a = 1;b = 1;c = 0; #50
        a = 1;b = 1;c = 1; #50
        $finish;
    end
    FullAdder u_FullAdder(.a(a), .b(b), .c(c), .so(so), .cout(cout));
endmodule
