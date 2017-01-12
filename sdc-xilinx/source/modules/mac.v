`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:39:43 01/07/2017 
// Design Name: 
// Module Name:    MAC 
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
module mac(
    input [7:0] in,
    input [7:0] w,
    input [7:0] b,
    output [15:0] out
    );

wire [15:0] d;

assign d = w * in;

assign out = d + b;
 

endmodule
