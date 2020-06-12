`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2020 23:00:22
// Design Name: 
// Module Name: half_adder
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


module half_adder(A,B,C,S);

    input wire A;
    input wire B;
    output wire C;
    output wire S;
    
    
    and_gate AND1(.A(A),.B(B),.C(C));
    xor_gate2 XOR1(.A(A),.B(B),.C(S));
 
endmodule
