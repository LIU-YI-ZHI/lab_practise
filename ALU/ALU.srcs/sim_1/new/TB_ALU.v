`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/25 15:46:03
// Design Name: 
// Module Name: TB_ALU
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


module TB_ALU();
    reg [3:0] a,b;
    reg [2:0] sel;
    wire [7:0] ans;
    
    initial begin
        a = 4'h7;
        b = 4'h3;
        sel = 3'b000;
    end
    always #50 begin
        sel = sel+1;
    end
    
    ALU u_ALU(
        .a(a),
        .b(b),
        .sel(sel),
        .ans(ans)
    );
    initial #400 $finish;
endmodule
