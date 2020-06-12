`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2020 15:48:24
// Design Name: 
// Module Name: counter_test
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


module counter_test();
    reg Ud, clk, L;
    wire q;
    
    counter_2bit uut(Ud,clk,L,q);
     initial clk=0;  
    initial
    forever #20 clk=~clk;
    always @(posedge clk)
    begin
        Ud=1;
        L=1;
    end
endmodule
