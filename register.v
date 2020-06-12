`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2020 18:29:42
// Design Name: 
// Module Name: register
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


module register(
    input En,
    input Reset,
    input CLK,
    input [7:0] Rin,
    output reg [7:0] Rout
    );

always @(posedge CLK or negedge Reset )
if (En & Reset)
Rout = Rin;
else if(~Reset)
Rout = 8'd0;
endmodule
