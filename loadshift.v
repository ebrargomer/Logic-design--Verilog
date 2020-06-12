`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2020 20:55:51
// Design Name: 
// Module Name: loadshift
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


module loadshift (Inp,C,L, SO); 
input [7:0] Inp;
input C,L; 
output SO; 
reg [7:0] tmp; 
reg hold;
  always @(posedge C) 
    if (L) begin
         tmp=Inp;
      //   hold=tmp[0];
    end
    else begin 
       hold=tmp[7];
       tmp = tmp << 1; 
       tmp[0]=hold;
    end 
    assign SO=hold; 
endmodule
