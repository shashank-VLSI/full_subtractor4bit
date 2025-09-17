`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2025 20:10:24
// Design Name: 
// Module Name: top_module
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


module top_module(a,b,c,cout,pos,neg);
input [63:0] a,b;
output [63:0]c;
output cout,pos,neg;
wire [63:0]c1;
wire cout1;
full_adder_4bit A(a,~b,1,c1,cout1);
assign pos=cout1;
assign neg=~cout1;
wire not_cout;
assign not_cout=~cout1;
wire [63:0]c2;
mux2to1 B(c1,~c1,not_cout,c2);
full_adder_4bit C(c2,64'h0,not_cout,c,cout);
endmodule