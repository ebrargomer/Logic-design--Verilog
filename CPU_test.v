`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2020 14:39:02
// Design Name: 
// Module Name: part4test
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


module part4test();
    reg clk,rst,ld;
    reg [20:0] instruction  ;
    wire [7:0] outAlu;
    part4 uut(clk,rst,ld,instruction,outAlu);
    
    initial begin
    clk=1; rst=1; #20;clk=1; rst=0; #20;clk=1; rst=1; #20;
    clk=0; ld=0; #20;
    clk=1; ld=1; instruction=21'b010100000000010101000; #50;
    clk=0; ld=0; #20;
    clk=1; ld=1; instruction=21'b001100101011111xxx110; #50;
    clk=0; ld=0; #20;
    clk=1; ld=1; instruction=21'b010010000000111010000; #50;
    clk=0; ld=0; #20;
    clk=1; ld=1; instruction=21'b101100000000111xxx010; #50;
    clk=0; ld=0; #20;
    clk=1; ld=1; instruction=21'b0011xxxxxxxx010xxx011; #50;
    clk=0; ld=0; #20;
    clk=1; ld=1; instruction=21'b000010000000111010000; #50;
    clk=0; ld=0; #20;
    clk=1; ld=1; instruction=21'b101100000000111xxx010; #50;
    clk=0; ld=0; #20;
    clk=1; ld=1; instruction=21'b0011xxxxxxxx010xxx011; #50;
    end
    
endmodule
