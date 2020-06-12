`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITU 
// Engineer: Ebrar Omer
// 
// Create Date: 19.05.2020 17:26:04
// Design Name: 
// Module Name: and_gate_test
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


module and_gate_test();
    reg [31:0] A;
    reg [31:0] B;
    
    wire[31:0] C;
    
    and_gate uut(A,B,C);
    
    initial begin
        A = 32'd1234;   B = 32'd0;     #250;
        A = 32'd1234;   B = 32'd1234;  #250;
        A = 32'd0;      B = 32'd9999;  #250;
        A = 32'd99999;   B = 32'd9999; #250;
     end
endmodule
