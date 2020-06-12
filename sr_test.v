`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2020 20:07:08
// Design Name: 
// Module Name: sr_test
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


module sr_test();
    reg S;
    reg R;
    wire Q;
    wire Qn;
    
    sr_latch uut(S, R,Q,Qn);
    initial begin
        S =1;   R=0;    #200;
        S =0;   R=0;    #200;
        S =0;   R=1;    #200;
        S =0;   R=0;    #200;
        S =1;   R=1;    #200; //forbidden
     end
endmodule
