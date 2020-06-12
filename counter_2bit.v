`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2020 15:41:36
// Design Name: 
// Module Name: counter_2bit
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

module counter_2bit( input x, input Clk,input reset,output Q0, output Q1); 
   
   wire q0; wire q1;
   wire xnot;
   wire or11,or22;
   wire q0not, q1not;
   wire new;
   wire or12, or21;
   wire D0,D1;
 
   not_gate xn(x,xnot);
   and_gate first(Q1,xnot,or11);
   and_gate second(x,Q0,or22); 
   
   and_gate third(q0not,q1not,new);
    
    and_gate four(x,new,or12);
    and_gate fifth(xnot,new,or21);
    
   or_gate or1(or11,or12,D0);
   or_gate or2(or21,or22,D1);
  
   D_latch fd(D0,Clk,reset,Q0,q0not);
   D_latch sd(D1,Clk,reset,Q1,q1not);

    
endmodule
