`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2020 19:16:13
// Design Name: 
// Module Name: part3
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
module Zero_flag(
    input D,
    output Q
    );
    assign Q=D;
endmodule

module part3(
    input [7:0] src1,
    input [7:0] src2,
    input en,
    input [2:0]Op,
    output reg zero,
    output reg [7:0] dst  );
    wire z;
     always@(*) 
     begin 
     if(en) begin
     case(Op)
        3'b000:
           dst = src1 + src2 ; 
        3'b001: 
           dst = src1 - src2 ;
        3'b010: 
           dst = src1 << 1; 
        3'b011: 
           dst = src1;
        3'b100: 
           dst = src1 & src2;
        3'b101: 
           dst = src1 | src2;
        3'b110: 
           dst = src1^src2;
        3'b111: 
           dst = ~src1;
         default: dst =8'b0;
        endcase
    if(dst==8'b0)  zero=1;
    else zero=0;
    end
    end
    Zero_flag ze(zero,z);
endmodule
