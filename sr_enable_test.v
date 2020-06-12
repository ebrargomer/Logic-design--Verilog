`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2020 20:12:34
// Design Name: 
// Module Name: sr_enable_test
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


module sr_enable_test();
    reg S;
    reg R;
    reg C;
    wire Q;
    wire Qn;
    
    sr_latch_enabled uut(S, R,C,Q,Qn);
    initial begin
        S =0;   R=0;  C=0;   #150; //memory
        S =1;   R=0;  C=1;   #150;
        S =0;   R=1;  C=1;   #150;
        S =0;   R=0;  C=1;   #150;
        S =0;   R=0;  C=0;   #150; //memory
        S =1;   R=1;  C=1;   #150; //forbidden
     end
endmodule
