`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2020 00:15:35
// Design Name: 
// Module Name: part2_test
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


module part2_test();
    reg x,clk,reset;
    wire q0,q1;
   counter_2bit uut(x,clk,reset,q0,q1);
    initial begin
     clk=0;   x=1;  reset=0; #50;
     clk=1;   x=1;  reset=0; #50;
     clk=0;   x=1;  reset=1; #50;
     clk=1; #50;
     clk=0; #50;
     clk=1; #50;
     clk=0; #50;
     clk=1; #50;
     clk=0; #50;
     clk=1; #50;
     clk=0; #50;
     clk=1; x=0; #50;
     clk=0; #50;
     clk=1; #50;
     clk=0; #50;
     clk=1; #50;
     clk=0; #50;
     clk=1; #50;
     clk=0; #50;
     clk=1; #50;
     clk=0; #50;
   
     end
endmodule
