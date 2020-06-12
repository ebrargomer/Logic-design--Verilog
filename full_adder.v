`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2020 23:07:10
// Design Name: 
// Module Name: full_adder
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


module full_adder(A,B,Cin,S,Cout);
    input wire A;
    input wire B;
    input wire Cin;
    output wire S;
    output wire Cout;
    wire D;
    wire F;
    wire G;
    xor_gate2 xor1(.A(A),.B(B),.C(D));
    xor_gate2 xor2(.A(D),.B(Cin),.C(S));
    
    and_gate and1(.A(A),.B(B),.C(F));
   
    and_gate and2(.A(D),.B(Cin),.C(G));
    or_gate or1(.A(F),.B(G),.C(Cout));
endmodule
