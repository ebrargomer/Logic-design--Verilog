`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2020 19:55:52
// Design Name: 
// Module Name: part4
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

module part4(
    input clk,
    input rst,
    input ld,
    input [20:0] instruction  ,
    output [7:0] out
    );

wire [7:0]dst;
wire [7:0] immediate; wire [7:0]src1; wire [7:0]src2; wire [2:0] op; wire z;
wire [7:0] regOut_0,regOut_1, regOut_2, regOut_3, regOut_4, regOut_5, regOut_6;

assign dst[0]=instruction[0];
assign dst[1]=instruction[1];
assign dst[2]=instruction[2];

assign src2[0]=instruction[3];
assign src2[1]=instruction[4];
assign src2[2]=instruction[5];

assign src1[0]=instruction[6];
assign src1[1]=instruction[7];
assign src1[2]=instruction[8];

assign immediate[0]=instruction[9];
assign immediate[1]=instruction[10];
assign immediate[2]=instruction[11];
assign immediate[3]=instruction[12];
assign immediate[4]=instruction[13];
assign immediate[5]=instruction[14];
assign immediate[6]=instruction[15];
assign immediate[7]=instruction[16];

assign op[0]=instruction[17];
assign op[1]=instruction[18];
assign op[2]=instruction[19];

assign z=instruction[20];
wire en,zero;
assign en=~(z&zero);

part2 regfile(dst,ld,clk,rst,out,regOut_0, regOut_1, regOut_2, regOut_3, regOut_4, regOut_5, regOut_6);

wire [7:0] mux1out;
mux m1(regOut_6,regOut_5,regOut_4,regOut_3,regOut_2,regOut_1,regOut_0,immediate,src1,mux1out);
wire [7:0] mux2out;
mux m2(regOut_6,regOut_5,regOut_4,regOut_3,regOut_2,regOut_1,regOut_0,immediate,src2,mux2out);

part3 alu(mux1out,mux2out,en,op,zero,out);
endmodule
