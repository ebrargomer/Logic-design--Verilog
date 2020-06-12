`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2020 13:14:44
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
    reg [2:0] dst; 
    reg ld, clk, rst;
    reg [7:0] dataIn;
    wire [7:0] regOut_0,regOut_1,regOut_2,regOut_3, regOut_4, regOut_5, regOut_6;
    
    part2 uut(dst,ld,clk,rst,dataIn,regOut_0,regOut_1,regOut_2,regOut_3, regOut_4, regOut_5, regOut_6);
    initial begin
    rst=1; clk=0; #50;
    rst=0; clk=1; #50;
    clk=0; ld=1; #50; clk=1; #50;clk=0; #50;
    clk=1; rst =1;dataIn=8'b00000000; dst=3'b000; #50;
    clk=0; #50;
    clk=1; dataIn=8'b00000001;dst=3'b001; #50;
    clk=0; #50;
    clk=1; dataIn=8'b00000010;dst=3'b010; #50;
    clk=0; #50;
    rst=0; clk=1; #50;
    clk=0; #50;
    clk=1; rst=1; dataIn=8'b00000011;dst=3'b011; #50;
    clk=0; #50;
    clk=1; dataIn=8'b00000100;dst=3'b100; #50;
    clk=0; #50;
    clk=1; dataIn=8'b00000101;dst=3'b101; #50;
    clk=0; #50;
    clk=1; dataIn=8'b000000110;dst=3'b110; #50;
    clk=0; #50;
    end


endmodule
