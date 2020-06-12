`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2020 18:16:40
// Design Name: 
// Module Name: half_adder_test
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


module half_adder_test();
    reg  Input1;
    reg  Input2; 
    wire  Output;
    wire  Carry;
    
    half_adder uut(.A(Input1),.B(Input2), .C(Carry),.S(Output));
    initial begin
        Input1=0;    Input2=0; #250;
        Input1=0;    Input2=1; #250;
        Input1 =1;   Input2=0; #250;
        Input1 =1;   Input2=1; #250;
     end
endmodule
