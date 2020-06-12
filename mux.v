`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2020 18:21:12
// Design Name: 
// Module Name: mux
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


module mux(
    input [7:0] In1,
    input [7:0] In2,
    input [7:0] In3,
    input [7:0] In4,
    input [7:0] In5,
    input [7:0] In6,
    input [7:0] In7,
    input [7:0] In8,
    input [2:0] sel,
    output reg [7:0] Out
    );
always @ (In1 or In2 or In3 or In4 or In5 or In6 or In7 or In8 or sel) 
begin 
 case (sel) 
  3'b000 : Out = In1; 
  3'b001 : Out = In2; 
  3'b010 : Out = In3; 
  3'b011 : Out = In4; 
  3'b100 : Out = In5; 
  3'b101 : Out = In6; 
  3'b110 : Out = In7; 
  3'b111 : Out = In8; 
  default : Out = 8'bx; 
 endcase 

end  

endmodule
