`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2020 13:18:57
// Design Name: 
// Module Name: jk_flip_flop
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


module jk_flip_flop(input j,input k,input clk,output q,output qn);
    wire jnew,knew;
    and_gate andj(j,qn,jnew);
    and_gate andk(k,q,knew);
    
    sr_latch_enabled sr(jnew,knew,clk,q,qn);
endmodule
