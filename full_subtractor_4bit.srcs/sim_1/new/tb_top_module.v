`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2025 20:41:31
// Design Name: 
// Module Name: tb_top_module
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


`timescale 1ns/1ps
module tb_top_module;

reg  [63:0] a, b;
wire [63:0] c;
wire cout,pos,neg;

// Instantiate DUT
top_module DUT(
    .a(a),
    .b(b),
    .c(c),
    .cout(cout),
    .pos(pos),
    .neg(neg)
);

initial begin
    // Monitor changes
    $monitor("Time=%0t | a=%b b=%b | c=%b cout=%b", 
              $time, a, b, c, cout);

    // Test cases
    a = 64'd1068; b = 64'd1200; #10;
    a = 64'd1800; b = 64'd1780; #10;
    a = 64'd1902; b = 64'd1; #10;
    a = 64'd8291; b = 64'd2378; #10;
    a = 64'd1028; b = 64'd1292; #10;
    a = 64'd9930; b = 64'd45; #10;
    
    $finish;
end

endmodule

