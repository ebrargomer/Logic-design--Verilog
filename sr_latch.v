`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2020 11:26:40
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(
    input S,
    input R,
   output Q,
    output Qn
    );
    wire q1,qn1;
    or_gate or1(S,Q,qn1);
    not_gate not1(qn1,Qn);
    or_gate or2(R, Qn, q1);
    not_gate not2(q1,Q);
endmodule

