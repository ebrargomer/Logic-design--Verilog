`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2020 11:16:09
// Design Name: 
// Module Name: part4_test
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


module part4_test();
    reg clk, reset,up_down,load;
    reg[15:0] begpoint;
    wire [15:0] counter;
    reg [5:0] clocktime;
    up_down_counter dut(begpoint,clk, load,reset,up_down, counter);
    /*initial begin 
    clk=1;
    clocktime=0;
    begpoint =16'd0; reset=0;up_down=1;load=1;
    forever begin #5 clk=~clk; clocktime=clocktime+6'd1;
    if(clocktime<6'd40)begin reset=1; load=0; end
    else begin reset=0;load=1; clocktime=5'd0; end
    end
    end*/
   /* initial begin 
    clk=1;
    clocktime=0;
    begpoint =16'd432; reset=0;up_down=1;load=1;
    forever begin #5 clk=~clk; clocktime=clocktime+6'd1;
    if(clocktime<6'd44)begin reset=1; load=0; end
    else begin reset=0;load=1; clocktime=5'd0; end
    end
    end*/
initial begin 
    clk=1;
    clocktime=0;
    begpoint =16'd65525; reset=0;up_down=1;load=1;
    forever begin #5 clk=~clk; clocktime=clocktime+6'd1;
    if(clocktime<6'd20)begin reset=1; load=0; end
    else begin reset=0;load=1; clocktime=5'd0; end
    end
    end

endmodule
