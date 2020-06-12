`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2020 18:26:10
// Design Name: 
// Module Name: addsub_test
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
module addsub_test();
    reg [7:0] A;
    reg [7:0] B;
    reg [1:0] Cin;
    wire [7:0] O;
    wire  carryout;
    
    addersubtractor uut(.A(A),.B(B),.Cin(Cin),.S(O),.carryout(carryout));
    initial begin
        A =8'd27;   B=8'd5;   Cin=1'd0; #125;
        A =8'd19;   B=8'd92;  Cin=1'd0; #125;
        A =8'd16;   B=8'd34;  Cin=1'd1; #125;
        A =8'd196;  B=8'd2;   Cin=1'd1; #125;
        A =8'd200;  B=8'd95;  Cin=1'd0; #125;
        A =8'd48;   B=8'd165; Cin=1'd0; #125;
        A =8'd78;   B=8'd255; Cin=1'd0; #125;
        A =8'd14;   B=8'd53;  Cin=1'd1; #125;
     end
endmodule