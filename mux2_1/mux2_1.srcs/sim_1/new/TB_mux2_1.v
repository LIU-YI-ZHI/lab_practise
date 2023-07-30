`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/26 11:19:40
// Design Name: 
// Module Name: TB_mux2_1
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


module TB_mux2_1();

    reg a,b;
    reg sel;
    wire y;
    
   mux2_1 u_mix2_1(
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
   );
    initial begin
    $display("Testbench for mux2_1");
    
    // Testcase 1: sel = 0, a = 1, b = 0
    a = 1;
    b = 0;
    sel = 0;
    #5; // Wait for some time
    $display("Testcase 1: y = %b", y);
    
    // Testcase 2: sel = 1, a = 1, b = 0
    a = 1;
    b = 0;
    sel = 1;
    #5; // Wait for some time
    $display("Testcase 2: y = %b", y);
    
    // Testcase 3: sel = 0, a = 0, b = 1
    a = 0;
    b = 1;
    sel = 0;
    #5; // Wait for some time
    $display("Testcase 3: y = %b", y);
    
    // Testcase 4: sel = 1, a = 0, b = 1
    a = 0;
    b = 1;
    sel = 1;
    #5; // Wait for some time
    $display("Testcase 4: y = %b", y);
    
    $finish;
  end
   
endmodule
