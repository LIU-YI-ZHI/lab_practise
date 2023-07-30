`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/28 17:24:53
// Design Name: 
// Module Name: TB_Drive_any
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


module TB_Drive_any();
    reg clk,rst;
	wire clkout;
	
	Drive_any u_Drive_any(
	   .clkin(clk),
	   .rst(rst),
	   .clkout(clkout)	
	);
	
	////action
	initial begin
			clk = 1'b1;
			rst = 1'b1;
 	end
 	
 	///clk
	always #10 clk = ~clk;	
endmodule
