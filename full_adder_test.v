`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2020 18:16:40
// Design Name: 
// Module Name: full_adder_test
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


module full_adder_test();
    reg  Input1;
    reg  Input2; 
    reg  Cin; 
    wire  Sum;
    wire  Cout;
    
    full_adder uut(.A(Input1),.B(Input2), .Cin(Cin),.S(Sum),.Cout(Cout));
    initial begin
        Input1=0;    Input2=0; Cin=0; #125;
        Input1=0;    Input2=0; Cin=1; #125;
        Input1=0;    Input2=1; Cin=0; #125;
        Input1=0;    Input2=1; Cin=1; #125;
        Input1=1;    Input2=0; Cin=0; #125;
        Input1=1;    Input2=0; Cin=1; #125;
        Input1=1;    Input2=1; Cin=0; #125;
        Input1=1;    Input2=1; Cin=1; #125;
     end
endmodule