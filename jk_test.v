`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2020 16:11:07
// Design Name: 
// Module Name: jk_test
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


module jk_test();
    reg j,k,clk;
    wire q,qn;
    
    jk_flip_flop uut(j,k,clk,q,qn);
    

   initial begin
    clk=1;
    j=0; k=1; #125;
    j=0; k=0; #125;
    j=1; k=0; #125;
    j=1; k=1; #125;
    end
endmodule
