`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2020 10:22:15
// Design Name: 
// Module Name: part_3_test
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


module updowncounter_testbench();
reg clk, reset,up_down,load;
reg[15:0] begpoint;
wire [15:0] counter;

up_down_counter dut(begpoint,clk, load,reset,up_down, counter);
initial begin 
clk=0;
forever #5 clk=~clk;
end
initial begin
begpoint =16'h0; reset=0;up_down=0;load=1;
#20;
reset=1; load=0;
#200;
up_down=1;
end
endmodule 