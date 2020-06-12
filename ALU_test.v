`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2020 14:21:48
// Design Name: 
// Module Name: part3test
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


module part3test();
    reg [7:0] src1, src2;
    reg en;
    reg [2:0]Op;
    wire zero;
    wire  [7:0] dst; 
    part3 uut(src1, src2,en,Op,zero,dst);
    
    initial begin
    en=0; src1=8'd4;src2=8'd5; Op=3'd0;#50;
    en=1;src1=8'd4;src2=8'd5; Op=3'd0;#50; //add
    
    en=1;src1=8'd10;src2=8'd10; Op=3'd1;#50; 
    
    en=1;src1=8'd46; Op=3'd2;#50; 
     
    en=1;src1=8'd10; Op=3'd3;#50; 
      
    en=1;src1=8'b01010101;src2=8'b11110000; Op=3'd4;#50; 
       
    en=1;src1=8'b01010101;src2=8'b11110000; Op=3'd5;#50; 
        
    en=1;src1=8'b01010101;src2=8'b11110000; Op=3'd6;#50; 
         
    en=1;src1=8'b11111111;Op=3'd7;#50; 
    end

endmodule
