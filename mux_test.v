`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2020 12:39:12
// Design Name: 
// Module Name: mux_test
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


module mux8to1_tb;
 reg [2:0] Sel;
 reg [7:0] In1;
 reg [7:0] In2;
 reg [7:0] In3;
 reg [7:0] In4;
 reg [7:0] In5;
 reg [7:0] In6;
 reg [7:0] In7;
 reg [7:0] In8;
 wire [7:0] Out;
 reg [2:0] count = 3'd0;


 mux uut(In1,In2,In3,In4,In5, In6,In7,In8,Sel,Out);

 initial begin
  Sel = 0;
  In1 = 0;
  In2 = 0;
  In3 = 0;
  In4 = 0;
  In5 = 0;
  In6 = 0;
  In7 = 0;
  In8 = 0;
  #100;
  Sel = 3'd0;
  In1 = 8'd0;
  In2 = 8'd1;
  In3 = 8'd2;
  In4 = 8'd3;
  In5 = 8'd4;
  In6 = 8'd5;
  In7 = 8'd6;
  In8 = 8'd7;
  for (count = 0; count < 8; count = count + 1'b1)
  begin
   Sel = count;
   #20;
  end
 end      
endmodule
