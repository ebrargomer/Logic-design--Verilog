`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2020 11:40:22
// Design Name: 
// Module Name: sr_latch_enabled
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


module sr_latch_enabled(
    input A,
    input B,
    input C,
    output Q,
    output Qn
    );
    
    wire S, R;
    wire s,r,q,qn;
    
    and_gate s1(A,C,s); not_gate s2(s,S);
    and_gate r1(B,C,r); not_gate r2(r,R);
    and_gate out1(S,Qn,q); not_gate out2(q,Q);
    and_gate comp1(R,Q,qn); not_gate comp2(qn,Qn);
    
endmodule
