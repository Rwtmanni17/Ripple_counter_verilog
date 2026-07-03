`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 00:12:23
// Design Name: 
// Module Name: T_ff
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


module T_ff(
input clk,rst, output reg q
    );
    
    always@(posedge clk or posedge rst)
    begin
    if(rst)
    q <= 1'b0;
    else
    q <= ~q;
    end
    
endmodule
