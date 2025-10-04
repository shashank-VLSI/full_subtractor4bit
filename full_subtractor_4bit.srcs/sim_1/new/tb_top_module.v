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

reg  [3:0] a, b;
wire [3:0] c;
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
    a = 4'd12; b = 4'd12; #10;
    a = 4'd7; b = 4'd1; #10;
    a = 4'd1; b = 4'd8; #10;
    a = 4'd9; b = 4'd3; #10;
    a = 4'd10; b = 4'd9; #10;
    a = 4'd3; b = 64'd2; #10;
    
    $finish;
end

endmodule

