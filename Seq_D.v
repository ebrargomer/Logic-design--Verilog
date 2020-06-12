`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:    Ebrar Ömer- Melis Günþeber
// 
// Create Date: 01.06.2020 12:46:25
// Design Name: 
// Module Name: Seq_D
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

module D_latch(
    input D,
    input En,
    input reset,
    output reg Q,
    output reg Qn
    );
    always @(posedge En)
    if(~reset) begin
    Q <= 1'b0;
    Qn<= 1'b1;
    end else begin
    Q<=D;
    Qn<=~D;
    end
endmodule

module Seq_D(input Clk,input reset,input X,output Y);
    wire x1,x2; 
    wire q1;wire q2;
    wire qn1,qn2;
    
    and_gate xand(X,qn1,x1);
    D_latch first_d(x1,Clk,reset,q1,qn1);
    
    or_gate f_or(qn2,q1,x2);
    D_latch second_d(x2,Clk,reset,q2,qn2);
    
    or_gate final(q2,qn1,Y);
    
endmodule
