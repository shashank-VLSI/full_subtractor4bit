`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2025 19:46:12
// Design Name: 
// Module Name: full_adder_4bit
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


module full_adder_4bit(a, b, cin, s, cout);
input  [3:0] a, b;
input cin;              
output [3:0] s;        
output cout;
wire [2:0] carry;      

full_adder FA0  (a[0],  b[0],  cin,      s[0],  carry[0]);
full_adder FA1  (a[1],  b[1],  carry[0], s[1],  carry[1]);
full_adder FA2  (a[2],  b[2],  carry[1], s[2],  carry[2]);
full_adder FA3  (a[3],  b[3],  carry[2], s[3],  cout);

endmodule


