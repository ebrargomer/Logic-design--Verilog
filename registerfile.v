`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2020 18:42:57
// Design Name: 
// Module Name: part2
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


module part2(
    input [2:0] dst,
    input ld,
    input clk,
    input rst,
    input [7:0] dataIn,
    output  [7:0] regOut_0,
    output  [7:0] regOut_1,
    output  [7:0] regOut_2,
    output  [7:0] regOut_3,
    output  [7:0] regOut_4,
    output  [7:0] regOut_5,
    output  [7:0] regOut_6      
    );
    wire [7:0] doutput;
    decoder dec(dst,ld,doutput);
    
    register r0(doutput[0],rst,clk,dataIn,regOut_0);
    register r1(doutput[1],rst,clk,dataIn,regOut_1);
    register r2(doutput[2],rst,clk,dataIn,regOut_2);
    register r3(doutput[3],rst,clk,dataIn,regOut_3);
    register r4(doutput[4],rst,clk,dataIn,regOut_4);
    register r5(doutput[5],rst,clk,dataIn,regOut_5);
    register r6(doutput[6],rst,clk,dataIn,regOut_6);
endmodule
