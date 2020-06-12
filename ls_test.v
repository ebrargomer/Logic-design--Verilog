`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2020 10:34:08
// Design Name: 
// Module Name: ls_test
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


module ls_test();
    reg [7:0] signal;
    reg clock;
    reg load;
    wire outp;
    loadshift deneme(signal,clock,load,outp);
    initial begin
        signal=8'b10101010 ;
        clock=1; load=1; #50;
        clock =0;#50;
        clock=1; load=0;#50; 
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #150;
    end 
     initial begin
        signal=8'b11001100 ;
        clock=1; load=1; #50;
        clock =0;#50;
        clock=1; load=0;#50; 
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #150;
    end 
     initial begin
        signal=8'b11110000 ;
        clock=1; load=1; #50;
        clock =0;#50;
        clock=1; load=0;#50; 
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #150;
    end 
   
     initial begin
        signal=8'b10001000 ;
        clock=1; load=1; #50;
        clock =0;#50;
        clock=1; load=0;#50; 
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #150;
    end 
     
     initial begin
        signal=8'b10000000 ;
        clock=1; load=1; #50;
        clock =0;#50;
        clock=1; load=0;#50; 
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #50; clock=1; #50;
        clock=0; #150;
    end 
    
endmodule
