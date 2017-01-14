// Python generated script 


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:21:36 01/12/2017
// Design Name:   conv1
// Module Name:   C:/Dev/Projects/XilinxProject/sdc/conv1_test.v
// Project Name:  sdc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: conv1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module conv_l1_test;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] pxl_in;
	reg [7:0] kernel_00;
	reg [7:0] kernel_01;
	reg [7:0] kernel_02;
	reg [7:0] kernel_10;
	reg [7:0] kernel_11;
	reg [7:0] kernel_12;
	reg [7:0] kernel_20;
	reg [7:0] kernel_21;
	reg [7:0] kernel_22;

	// Outputs
	wire [15:0] reg00; wire [15:0] reg01; wire [15:0] reg02; wire [15:0] outs1;
	wire [15:0] reg10; wire [15:0] reg11; wire [15:0] reg12; wire [15:0] outs2;
	wire [15:0] reg20; wire [15:0] reg21; wire [15:0] reg22;
	wire [15:0] pxl_out; wire valid;

	// Instantiate the Unit Under Test (UUT)
	conv_l1 uut (
		.clk(clk), 
		.reset(reset), 
		.pxl_in(pxl_in),
		.pxl_out(pxl_out),		
		.kernel_00(kernel_00), 
		.kernel_01(kernel_01), 
		.kernel_02(kernel_02), 
		.kernel_10(kernel_10), 
		.kernel_11(kernel_11), 
		.kernel_12(kernel_12), 
		.kernel_20(kernel_20), 
		.kernel_21(kernel_21), 
		.kernel_22(kernel_22),
		.rline00(reg00),
		.rline01(reg01),
		.rline02(reg02),
		.rlines1(outs1),
		.rline10(reg10),
		.rline11(reg11),
		.rline12(reg12),
		.rlines2(outs2),
		.rline20(reg20),
		.rline21(reg21),
		.rline22(reg22),
		.valid(valid)
	);


initial begin
		// Initialize Inputs
		clk = 0;
		
		// Wait 100 ns for global reset to finish
		#110;
      reset = 0; 		

/*

Image: 
1	2	3	4
1	2	3	4
1	2	3	4
1	2	3	4

Kernels: 
1	0	1
1	0	0
0	1	0

0	0	1
1	1	0
0	1	1

0	0	1
1	1	0
0	1	0

0	0	1
1	1	0
0	1	0

0	0	1
1	0	1
0	1	0

0	0	1
1	0	0
1	1	0

Results: 
7	11
7	11

11	16
11	16

8	12
8	12

8	12
8	12

9	13
9	13

7	11
7	11

*/

// Pixel no. : 0
#20 pxl_in = 1;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 1
#20 pxl_in = 2;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 2
#20 pxl_in = 3;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 3
#20 pxl_in = 4;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 4
#20 pxl_in = 1;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 5
#20 pxl_in = 2;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 6
#20 pxl_in = 3;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 7
#20 pxl_in = 4;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 8
#20 pxl_in = 1;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 9
#20 pxl_in = 2;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 10
#20 pxl_in = 3;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 11
#20 pxl_in = 4;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 12
#20 pxl_in = 1;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 1;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 13
#20 pxl_in = 2;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 2;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 14
#20 pxl_in = 3;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 3;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// Pixel no. : 15
#20 pxl_in = 4;
kernel_00 = 1; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 1; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 1; kernel_12 = 0; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 1; 
kernel_20 = 0; kernel_21 = 1; kernel_22 = 0; 
#20 pxl_in = 4;
kernel_00 = 0; kernel_01 = 0; kernel_02 = 1; 
kernel_10 = 1; kernel_11 = 0; kernel_12 = 0; 
kernel_20 = 1; kernel_21 = 1; kernel_22 = 0; 


// End of Script 
	
	end 
	always #10 clk = ~ clk;
      
endmodule