`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2020 11:49:36
// Design Name: 
// Module Name: D_latch
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
    output Q,
    output Qn
    );
    wire R;
    not_gate n1(D,R);
    sr_latch_enabled s(D,R,En,Q,Qn);

endmodule

module Triggered_D(input D,input CLK, output Q, output Qn);
    wire Clk_new, Qm, Qmn;
    not_gate clkn(CLK,Clk_new);
    D_latch d1(D,CLK,Qm, QMn);
    D_latch d2(Qm,Clk_new,Q,Qn);
endmodule