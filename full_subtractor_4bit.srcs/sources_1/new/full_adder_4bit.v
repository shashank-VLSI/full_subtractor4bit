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
input  [63:0] a, b;
input cin;              // carry in
output [63:0] s;        // 64-bit sum
output cout;
wire [62:0] carry;      // internal carries

full_adder FA0  (a[0],  b[0],  cin,      s[0],  carry[0]);
full_adder FA1  (a[1],  b[1],  carry[0], s[1],  carry[1]);
full_adder FA2  (a[2],  b[2],  carry[1], s[2],  carry[2]);
full_adder FA3  (a[3],  b[3],  carry[2], s[3],  carry[3]);
full_adder FA4  (a[4],  b[4],  carry[3], s[4],  carry[4]);
full_adder FA5  (a[5],  b[5],  carry[4], s[5],  carry[5]);
full_adder FA6  (a[6],  b[6],  carry[5], s[6],  carry[6]);
full_adder FA7  (a[7],  b[7],  carry[6], s[7],  carry[7]);

full_adder FA8  (a[8],  b[8],  carry[7],  s[8],  carry[8]);
full_adder FA9  (a[9],  b[9],  carry[8],  s[9],  carry[9]);
full_adder FA10 (a[10], b[10], carry[9],  s[10], carry[10]);
full_adder FA11 (a[11], b[11], carry[10], s[11], carry[11]);
full_adder FA12 (a[12], b[12], carry[11], s[12], carry[12]);
full_adder FA13 (a[13], b[13], carry[12], s[13], carry[13]);
full_adder FA14 (a[14], b[14], carry[13], s[14], carry[14]);
full_adder FA15 (a[15], b[15], carry[14], s[15], carry[15]);

full_adder FA16 (a[16], b[16], carry[15], s[16], carry[16]);
full_adder FA17 (a[17], b[17], carry[16], s[17], carry[17]);
full_adder FA18 (a[18], b[18], carry[17], s[18], carry[18]);
full_adder FA19 (a[19], b[19], carry[18], s[19], carry[19]);
full_adder FA20 (a[20], b[20], carry[19], s[20], carry[20]);
full_adder FA21 (a[21], b[21], carry[20], s[21], carry[21]);
full_adder FA22 (a[22], b[22], carry[21], s[22], carry[22]);
full_adder FA23 (a[23], b[23], carry[22], s[23], carry[23]);

full_adder FA24 (a[24], b[24], carry[23], s[24], carry[24]);
full_adder FA25 (a[25], b[25], carry[24], s[25], carry[25]);
full_adder FA26 (a[26], b[26], carry[25], s[26], carry[26]);
full_adder FA27 (a[27], b[27], carry[26], s[27], carry[27]);
full_adder FA28 (a[28], b[28], carry[27], s[28], carry[28]);
full_adder FA29 (a[29], b[29], carry[28], s[29], carry[29]);
full_adder FA30 (a[30], b[30], carry[29], s[30], carry[30]);
full_adder FA31 (a[31], b[31], carry[30], s[31], carry[31]);

full_adder FA32 (a[32], b[32], carry[31], s[32], carry[32]);
full_adder FA33 (a[33], b[33], carry[32], s[33], carry[33]);
full_adder FA34 (a[34], b[34], carry[33], s[34], carry[34]);
full_adder FA35 (a[35], b[35], carry[34], s[35], carry[35]);
full_adder FA36 (a[36], b[36], carry[35], s[36], carry[36]);
full_adder FA37 (a[37], b[37], carry[36], s[37], carry[37]);
full_adder FA38 (a[38], b[38], carry[37], s[38], carry[38]);
full_adder FA39 (a[39], b[39], carry[38], s[39], carry[39]);

full_adder FA40 (a[40], b[40], carry[39], s[40], carry[40]);
full_adder FA41 (a[41], b[41], carry[40], s[41], carry[41]);
full_adder FA42 (a[42], b[42], carry[41], s[42], carry[42]);
full_adder FA43 (a[43], b[43], carry[42], s[43], carry[43]);
full_adder FA44 (a[44], b[44], carry[43], s[44], carry[44]);
full_adder FA45 (a[45], b[45], carry[44], s[45], carry[45]);
full_adder FA46 (a[46], b[46], carry[45], s[46], carry[46]);
full_adder FA47 (a[47], b[47], carry[46], s[47], carry[47]);

full_adder FA48 (a[48], b[48], carry[47], s[48], carry[48]);
full_adder FA49 (a[49], b[49], carry[48], s[49], carry[49]);
full_adder FA50 (a[50], b[50], carry[49], s[50], carry[50]);
full_adder FA51 (a[51], b[51], carry[50], s[51], carry[51]);
full_adder FA52 (a[52], b[52], carry[51], s[52], carry[52]);
full_adder FA53 (a[53], b[53], carry[52], s[53], carry[53]);
full_adder FA54 (a[54], b[54], carry[53], s[54], carry[54]);
full_adder FA55 (a[55], b[55], carry[54], s[55], carry[55]);

full_adder FA56 (a[56], b[56], carry[55], s[56], carry[56]);
full_adder FA57 (a[57], b[57], carry[56], s[57], carry[57]);
full_adder FA58 (a[58], b[58], carry[57], s[58], carry[58]);
full_adder FA59 (a[59], b[59], carry[58], s[59], carry[59]);
full_adder FA60 (a[60], b[60], carry[59], s[60], carry[60]);
full_adder FA61 (a[61], b[61], carry[60], s[61], carry[61]);
full_adder FA62 (a[62], b[62], carry[61], s[62], carry[62]);
full_adder FA63 (a[63], b[63], carry[62], s[63], cout);

endmodule


