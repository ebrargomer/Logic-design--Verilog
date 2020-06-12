`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2020 15:32:08
// Design Name: 
// Module Name: eight_bitfull_adder
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


module eight_bitfull_adder(A,B,Cin,S,carryout);
    input [7:0] A;
    input [7:0] B;
    input Cin;
    output [7:0] S;
    output carryout;
    wire [6:0]Cout;
    full_adder f1(.A(A[0]),.B(B[0]),.Cin(Cin),.S(S[0]),.Cout(Cout[0]));
    full_adder f2(.A(A[1]),.B(B[1]),.Cin(Cout[0]),.S(S[1]),.Cout(Cout[1]));
    full_adder f3(.A(A[2]),.B(B[2]),.Cin(Cout[1]),.S(S[2]),.Cout(Cout[2]));
    full_adder f4(.A(A[3]),.B(B[3]),.Cin(Cout[2]),.S(S[3]),.Cout(Cout[3]));
    full_adder f5(.A(A[4]),.B(B[4]),.Cin(Cout[3]),.S(S[4]),.Cout(Cout[4]));
    full_adder f6(.A(A[5]),.B(B[5]),.Cin(Cout[4]),.S(S[5]),.Cout(Cout[5]));
    full_adder f7(.A(A[6]),.B(B[6]),.Cin(Cout[5]),.S(S[6]),.Cout(Cout[6]));
    full_adder f8(.A(A[7]),.B(B[7]),.Cin(Cout[6]),.S(S[7]),.Cout(carryout));
  
endmodule
