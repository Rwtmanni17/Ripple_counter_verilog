`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 00:11:59
// Design Name: 
// Module Name: ripple_counter
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


module ripple_counter(
input clk,rst, output [3:0] q
    );
    
    T_ff ff0(clk,rst,q[0]);
    T_ff ff1(q[0],rst,q[1]);
    T_ff ff2(q[1],rst,q[2]);
    T_ff ff3(q[2],rst,q[3]);
    
endmodule
