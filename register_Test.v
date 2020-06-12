`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2020 12:52:29
// Design Name: 
// Module Name: register_Test
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


module register_Test();
    reg clk;
    reg en,reset;
    reg [7:0] Rin;
    wire [7:0] Rout;   
    register uut(en,reset,clk,Rin,Rout);
    initial begin
    reset=1; clk=0; #50;
    reset=0; clk=1; #50;
    clk=0;#50;
    clk=1; en=1; reset =1;Rin=8'd0; #50;
    clk=0; #50;
    clk=1;  Rin=8'd1; #50;
    clk=0; #50;
    clk=1;  Rin=8'd2; #50;
    clk=0; #50;
    clk=1; Rin=8'd3; #50;
    clk=0; #50;
    reset=0; clk=1; #50;
    clk=0; #50;
    clk=1; reset=1; Rin=8'd4; #50;
    clk=0; #50;
    clk=1; Rin=8'd5; #50;
    clk=0; #50;
    end
endmodule
