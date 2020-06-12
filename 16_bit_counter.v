`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2020 10:15:44
// Design Name: 
// Module Name: 16_bit_counter
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

module up_down_counter(input [15:0] begpoint,input clk,load, reset,up_down, output[15:0]counter );
reg [15:0] counter_up_down;
always @(posedge clk or posedge reset)
begin
if(~reset)
 counter_up_down<=begpoint;
else if(~load) begin
    if(up_down)
        counter_up_down <= counter_up_down + 16'd1;
    else
        counter_up_down <= counter_up_down - 16'd1;
    end 
end
assign counter = counter_up_down;
endmodule
