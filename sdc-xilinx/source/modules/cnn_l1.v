`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:19 01/15/2017 
// Design Name: 
// Module Name:    cnn_l1 
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
module cnn_l1(
	input clk,
	input reset,

    input [7:0] pxl_0,
    input [7:0] pxl_1,
    input [7:0] pxl_2,
	 
	 // 3*3 kernel values
	input [7:0] kernel_0_00, input [7:0] kernel_0_01, input [7:0] kernel_0_02,
	input [7:0] kernel_0_10, input [7:0] kernel_0_11, input [7:0] kernel_0_12,
	input [7:0] kernel_0_20, input [7:0] kernel_0_21, input [7:0] kernel_0_22,
	// 3*3 kernel values
	input [7:0] kernel_1_00, input [7:0] kernel_1_01, input [7:0] kernel_1_02,
	input [7:0] kernel_1_10, input [7:0] kernel_1_11, input [7:0] kernel_1_12,
	input [7:0] kernel_1_20, input [7:0] kernel_1_21, input [7:0] kernel_1_22,
	// 3*3 kernel values
	input [7:0] kernel_2_00, input [7:0] kernel_2_01, input [7:0] kernel_2_02,
	input [7:0] kernel_2_10, input [7:0] kernel_2_11, input [7:0] kernel_2_12,
	input [7:0] kernel_2_20, input [7:0] kernel_2_21, input [7:0] kernel_2_22,
	
	output [15:0] pxl_out_0, output [15:0] pxl_out_1, output [15:0] pxl_out_2,
	 
   output [15:0] pxl_out,
   output valid
    );

	//wire [15:0] pxl_out_0; wire [15:0] pxl_out_1; wire [15:0] pxl_out_2;
	wire valid_0; wire valid_1; wire valid_2;

	conv_l1 conv_0(clk, 
					reset, 
					pxl_0, 
					
					// 3*3 kernel values
					kernel_0_00,  kernel_0_01, kernel_0_02,
					kernel_0_10,  kernel_0_11, kernel_0_12,
					kernel_0_20,  kernel_0_21, kernel_0_22,

					pxl_out_0,
					valid_0
					);

	conv_l1 conv_1(clk, 
					reset, 
					pxl_1, 
					
					// 3*3 kernel values
					kernel_1_00,  kernel_1_01, kernel_1_02,
					kernel_1_10,  kernel_1_11, kernel_1_12,
					kernel_1_20,  kernel_1_21, kernel_1_22,

					pxl_out_1,
					valid_1
					);
	conv_l1 conv_2(clk, 
					reset, 
					pxl_2, 
					
					// 3*3 kernel values
					kernel_2_00,  kernel_2_01, kernel_2_02,
					kernel_2_10,  kernel_2_11, kernel_2_12,
					kernel_2_20,  kernel_2_21, kernel_2_22,

					pxl_out_2,
					valid_2
					);

	assign pxl_out = pxl_out_0 + pxl_out_1 + pxl_out_2;
	assign valid = valid_0 & valid_1 & valid_2;

endmodule
