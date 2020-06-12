`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2020 15:05:15
// Design Name: 
// Module Name: addersubtractor
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


module addersubtractor(A,B,Cin,S,carryout);
    input [7:0] A;
    input [7:0] B;
    input [1:0] Cin;
    output [7:0] S;
    output carryout;
    
    wire [7:0] Bnew;
    xor_gate2 B0(.A(B[0]),.B(Cin),.C(Bnew[0]));
    xor_gate2 B1(.A(B[1]),.B(Cin),.C(Bnew[1]));
    xor_gate2 B2(.A(B[2]),.B(Cin),.C(Bnew[2]));
    xor_gate2 B3(.A(B[3]),.B(Cin),.C(Bnew[3]));
    xor_gate2 B4(.A(B[4]),.B(Cin),.C(Bnew[4]));
    xor_gate2 B5(.A(B[5]),.B(Cin),.C(Bnew[5]));
    xor_gate2 B6(.A(B[6]),.B(Cin),.C(Bnew[6]));
    xor_gate2 B7(.A(B[7]),.B(Cin),.C(Bnew[7]));
    
   eight_bitfull_adder fonk(.A(A),.B(Bnew),.Cin(Cin),.S(S),.carryout(carryout));
endmodule
