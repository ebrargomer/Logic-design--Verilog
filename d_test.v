`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2020 13:43:48
// Design Name: 
// Module Name: d_test
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


module d_test();
    reg clk;
    reg x,reset;
    wire y;   
    Seq_D uut(clk,reset,x,y);
    initial begin
    reset=0; clk=0; x=0; #50;
    reset=0; clk=1; x=0; #50;
    reset=1; clk=0; x=0; #50;
    clk=1; x=0; #50;
    clk=0; #50;
    clk=1; x=1; #50;
    clk=0; #50;
    clk=1; x=1; #50;
    clk=0; #50;
    clk=1; x=0; #50;
    clk=0; #50;
    clk=1; x=1; #50;
    clk=0; #50;
    clk=1; x=0; #50;
    clk=0; #50;
    clk=1; x=1; #50;
    clk=0; #50;
    clk=1; x=0; #50;
    clk=0; #50;
    end
endmodule
