`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 00:19:57
// Design Name: 
// Module Name: ripple_tb
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


module ripple_tb(
); // here in o/p we get a down counter for up counter use (~q) in the ripple counter

reg clk,rst;
wire [3:0] q;

ripple_counter dut(clk,rst,q);

initial
begin
clk = 0;
end

always #5 clk = ~clk;

initial
begin
$monitor("clk is %b,rst is %b,q is %b",clk,rst,q);

rst = 1;
#10;
rst = 0;

#200;
$finish;

end
endmodule
