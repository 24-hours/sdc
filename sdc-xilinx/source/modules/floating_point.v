`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:19:31 01/15/2017 
// Design Name: 
// Module Name:    floating_point 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module floating_point(
    input [15:0] a,
    input [15:0] b,
    input [15:0] c,
    output [31:0] out
    );

assign out = a * b;

endmodule
