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
	wire [15:0] pxl_out;

	// Instantiate the Unit Under Test (UUT)
	conv_l1 uut (
		.clk(clk), 
		.reset(reset), 
		.pxl_in(pxl_in), 
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
		.pxl_out(pxl_out)
	);

initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		pxl_in = 0;
		kernel_00 = 1;
		kernel_01 = 2;
		kernel_02 = 3;
		kernel_10 = 1;
		kernel_11 = 2;
		kernel_12 = 3;
		kernel_20 = 1;
		kernel_21 = 2;
		kernel_22 = 3;

		// Wait 100 ns for global reset to finish
		#100;
      reset = 0; 

		#120 pxl_in = 66; #120 pxl_in = 70; #120 pxl_in = 75; #120 pxl_in = 73; #120 pxl_in = 72; #120 pxl_in = 70; #120 pxl_in = 75; #120 pxl_in = 78; #120 pxl_in = 72; #120 pxl_in = 73; #120 pxl_in = 69; #120 pxl_in = 64; #120 pxl_in = 65; #120 pxl_in = 69; #120 pxl_in = 71; #120 pxl_in = 70; #120 pxl_in = 71; #120 pxl_in = 72; #120 pxl_in = 71; #120 pxl_in = 70; #120 pxl_in = 69; #120 pxl_in = 68; #120 pxl_in = 68; #120 pxl_in = 69; #120 pxl_in = 68; #120 pxl_in = 73; #120 pxl_in = 75; #120 pxl_in = 76; #120 pxl_in = 75; #120 pxl_in = 76; #120 pxl_in = 82; #120 pxl_in = 76; #120 pxl_in = 83; #120 pxl_in = 78; #120 pxl_in = 77; #120 pxl_in = 80; #120 pxl_in = 81; #120 pxl_in = 79; #120 pxl_in = 77; #120 pxl_in = 76; #120 pxl_in = 76; #120 pxl_in = 77; #120 pxl_in = 76; #120 pxl_in = 73; #120 pxl_in = 72; #120 pxl_in = 73; #120 pxl_in = 74; #120 pxl_in = 73; #120 pxl_in = 75; #120 pxl_in = 72; #120 pxl_in = 70; #120 pxl_in = 71; #120 pxl_in = 72; #120 pxl_in = 72; #120 pxl_in = 72; #120 pxl_in = 73; #120 pxl_in = 76; #120 pxl_in = 70; #120 pxl_in = 72; #120 pxl_in = 76; #120 pxl_in = 73; #120 pxl_in = 71; #120 pxl_in = 72; #120 pxl_in = 69; #120 pxl_in = 79; #120 pxl_in = 75; #120 pxl_in = 73; #120 pxl_in = 73; #120 pxl_in = 72; #120 pxl_in = 73; #120 pxl_in = 71; #120 pxl_in = 69; #120 pxl_in = 68; #120 pxl_in = 72; #120 pxl_in = 74; #120 pxl_in = 73; #120 pxl_in = 73; #120 pxl_in = 73; #120 pxl_in = 73; #120 pxl_in = 76; #120 pxl_in = 74; #120 pxl_in = 72; #120 pxl_in = 71; #120 pxl_in = 74; #120 pxl_in = 75; #120 pxl_in = 73; #120 pxl_in = 73; #120 pxl_in = 75; #120 pxl_in = 77; #120 pxl_in = 75; #120 pxl_in = 73; #120 pxl_in = 77; #120 pxl_in = 83; #120 pxl_in = 82; #120 pxl_in = 83; #120 pxl_in = 88; #120 pxl_in = 82; #120 pxl_in = 80; #120 pxl_in = 80; #120 pxl_in = 82; #120 pxl_in = 82; #120 pxl_in = 81; #120 pxl_in = 84; #120 pxl_in = 88; #120 pxl_in = 87; #120 pxl_in = 84; #120 pxl_in = 82; #120 pxl_in = 83; #120 pxl_in = 84; #120 pxl_in = 84; #120 pxl_in = 85; #120 pxl_in = 86; #120 pxl_in = 90; #120 pxl_in = 89; #120 pxl_in = 88; #120 pxl_in = 88; #120 pxl_in = 90; #120 pxl_in = 91; #120 pxl_in = 90; #120 pxl_in = 88; #120 pxl_in = 88; #120 pxl_in = 90; #120 pxl_in = 92; #120 pxl_in = 93; #120 pxl_in = 91; #120 pxl_in = 91; #120 pxl_in = 92; #120 pxl_in = 93; #120 pxl_in = 97; #120 pxl_in = 95; #120 pxl_in = 94; #120 pxl_in = 95; #120 pxl_in = 95; #120 pxl_in = 94; #120 pxl_in = 94; #120 pxl_in = 96; #120 pxl_in = 96; #120 pxl_in = 100; #120 pxl_in = 103; #120 pxl_in = 103; #120 pxl_in = 103; #120 pxl_in = 103; #120 pxl_in = 104; #120 pxl_in = 104; #120 pxl_in = 108; #120 pxl_in = 107; #120 pxl_in = 107; #120 pxl_in = 106; #120 pxl_in = 107; #120 pxl_in = 108; #120 pxl_in = 111; #120 pxl_in = 115; #120 pxl_in = 115; #120 pxl_in = 112; #120 pxl_in = 110; #120 pxl_in = 115; #120 pxl_in = 118; #120 pxl_in = 117; #120 pxl_in = 114; #120 pxl_in = 111; #120 pxl_in = 113; #120 pxl_in = 121; #120 pxl_in = 126; #120 pxl_in = 123; #120 pxl_in = 117; #120 pxl_in = 118; #120 pxl_in = 122; #120 pxl_in = 122; #120 pxl_in = 119; #120 pxl_in = 121; #120 pxl_in = 122; #120 pxl_in = 123; #120 pxl_in = 125; #120 pxl_in = 123; #120 pxl_in = 121; #120 pxl_in = 119; #120 pxl_in = 127; #120 pxl_in = 129; #120 pxl_in = 131; #120 pxl_in = 129; #120 pxl_in = 127; #120 pxl_in = 126; #120 pxl_in = 128; #120 pxl_in = 128; #120 pxl_in = 133; #120 pxl_in = 130; #120 pxl_in = 128; #120 pxl_in = 126; #120 pxl_in = 124; #120 pxl_in = 129; #120 pxl_in = 135; #120 pxl_in = 136; #120 pxl_in = 135; #120 pxl_in = 137; #120 pxl_in = 135; #120 pxl_in = 131; #120 pxl_in = 129; #120 pxl_in = 129; #120 pxl_in = 127; #120 pxl_in = 123; 
		#120 pxl_in = 69; #120 pxl_in = 73; #120 pxl_in = 76; #120 pxl_in = 73; #120 pxl_in = 75; #120 pxl_in = 75; #120 pxl_in = 80; #120 pxl_in = 81; #120 pxl_in = 73; #120 pxl_in = 73; #120 pxl_in = 68; #120 pxl_in = 65; #120 pxl_in = 68; #120 pxl_in = 71; #120 pxl_in = 76; #120 pxl_in = 77; #120 pxl_in = 78; #120 pxl_in = 78; #120 pxl_in = 75; #120 pxl_in = 72; #120 pxl_in = 73; #120 pxl_in = 70; #120 pxl_in = 69; #120 pxl_in = 70; #120 pxl_in = 67; #120 pxl_in = 72; #120 pxl_in = 74; #120 pxl_in = 77; #120 pxl_in = 75; #120 pxl_in = 77; #120 pxl_in = 81; #120 pxl_in = 76; #120 pxl_in = 78; #120 pxl_in = 81; #120 pxl_in = 85; #120 pxl_in = 85; #120 pxl_in = 80; #120 pxl_in = 80; #120 pxl_in = 79; #120 pxl_in = 76; #120 pxl_in = 76; #120 pxl_in = 78; #120 pxl_in = 78; #120 pxl_in = 77; #120 pxl_in = 75; #120 pxl_in = 76; #120 pxl_in = 76; #120 pxl_in = 77; #120 pxl_in = 78; #120 pxl_in = 76; #120 pxl_in = 74; #120 pxl_in = 74; #120 pxl_in = 75; #120 pxl_in = 73; #120 pxl_in = 73; #120 pxl_in = 74; #120 pxl_in = 72; #120 pxl_in = 73; #120 pxl_in = 78; #120 pxl_in = 77; #120 pxl_in = 72; #120 pxl_in = 73; #120 pxl_in = 75; #120 pxl_in = 70; #120 pxl_in = 81; #120 pxl_in = 81; #120 pxl_in = 79; #120 pxl_in = 77; #120 pxl_in = 75; #120 pxl_in = 76; #120 pxl_in = 75; #120 pxl_in = 71; #120 pxl_in = 73; #120 pxl_in = 75; #120 pxl_in = 77; #120 pxl_in = 77; #120 pxl_in = 76; #120 pxl_in = 75; #120 pxl_in = 75; #120 pxl_in = 75; #120 pxl_in = 75; #120 pxl_in = 77; #120 pxl_in = 78; #120 pxl_in = 78; #120 pxl_in = 79; #120 pxl_in = 80; #120 pxl_in = 79; #120 pxl_in = 76; #120 pxl_in = 78; #120 pxl_in = 78; #120 pxl_in = 77; #120 pxl_in = 81; #120 pxl_in = 85; #120 pxl_in = 84; #120 pxl_in = 84; #120 pxl_in = 87; #120 pxl_in = 86; #120 pxl_in = 85; #120 pxl_in = 86; #120 pxl_in = 87; #120 pxl_in = 87; #120 pxl_in = 85; #120 pxl_in = 86; #120 pxl_in = 88; #120 pxl_in = 86; #120 pxl_in = 86; #120 pxl_in = 87; #120 pxl_in = 88; #120 pxl_in = 86; #120 pxl_in = 87; #120 pxl_in = 89; #120 pxl_in = 91; #120 pxl_in = 94; #120 pxl_in = 94; #120 pxl_in = 94; #120 pxl_in = 96; #120 pxl_in = 97; #120 pxl_in = 98; #120 pxl_in = 97; #120 pxl_in = 97; #120 pxl_in = 100; #120 pxl_in = 99; #120 pxl_in = 96; #120 pxl_in = 94; #120 pxl_in = 94; #120 pxl_in = 94; #120 pxl_in = 96; #120 pxl_in = 97; #120 pxl_in = 104; #120 pxl_in = 103; #120 pxl_in = 102; #120 pxl_in = 102; #120 pxl_in = 102; #120 pxl_in = 101; #120 pxl_in = 103; #120 pxl_in = 105; #120 pxl_in = 106; #120 pxl_in = 106; #120 pxl_in = 108; #120 pxl_in = 110; #120 pxl_in = 112; #120 pxl_in = 113; #120 pxl_in = 113; #120 pxl_in = 111; #120 pxl_in = 113; #120 pxl_in = 113; #120 pxl_in = 114; #120 pxl_in = 115; #120 pxl_in = 115; #120 pxl_in = 116; #120 pxl_in = 119; #120 pxl_in = 122; #120 pxl_in = 118; #120 pxl_in = 119; #120 pxl_in = 121; #120 pxl_in = 121; #120 pxl_in = 123; #120 pxl_in = 123; #120 pxl_in = 123; #120 pxl_in = 122; #120 pxl_in = 123; #120 pxl_in = 125; #120 pxl_in = 128; #120 pxl_in = 126; #120 pxl_in = 126; #120 pxl_in = 127; #120 pxl_in = 127; #120 pxl_in = 126; #120 pxl_in = 128; #120 pxl_in = 130; #120 pxl_in = 132; #120 pxl_in = 131; #120 pxl_in = 131; #120 pxl_in = 130; #120 pxl_in = 128; #120 pxl_in = 126; #120 pxl_in = 132; #120 pxl_in = 135; #120 pxl_in = 135; #120 pxl_in = 134; #120 pxl_in = 131; #120 pxl_in = 131; #120 pxl_in = 131; #120 pxl_in = 131; #120 pxl_in = 129; #120 pxl_in = 130; #120 pxl_in = 134; #120 pxl_in = 135; #120 pxl_in = 133; #120 pxl_in = 134; #120 pxl_in = 135; #120 pxl_in = 133; #120 pxl_in = 140; #120 pxl_in = 141; #120 pxl_in = 138; #120 pxl_in = 134; #120 pxl_in = 131; #120 pxl_in = 132; #120 pxl_in = 131; #120 pxl_in = 126; 
		#120 pxl_in = 74; #120 pxl_in = 76; #120 pxl_in = 78; #120 pxl_in = 75; #120 pxl_in = 78; #120 pxl_in = 81; #120 pxl_in = 84; #120 pxl_in = 82; #120 pxl_in = 80; #120 pxl_in = 78; #120 pxl_in = 73; #120 pxl_in = 71; #120 pxl_in = 75; #120 pxl_in = 78; #120 pxl_in = 81; #120 pxl_in = 83; #120 pxl_in = 84; #120 pxl_in = 82; #120 pxl_in = 77; #120 pxl_in = 76; #120 pxl_in = 78; #120 pxl_in = 77; #120 pxl_in = 75; #120 pxl_in = 75; #120 pxl_in = 76; #120 pxl_in = 80; #120 pxl_in = 81; #120 pxl_in = 82; #120 pxl_in = 79; #120 pxl_in = 80; #120 pxl_in = 84; #120 pxl_in = 81; #120 pxl_in = 82; #120 pxl_in = 84; #120 pxl_in = 87; #120 pxl_in = 85; #120 pxl_in = 81; #120 pxl_in = 81; #120 pxl_in = 82; #120 pxl_in = 79; #120 pxl_in = 81; #120 pxl_in = 82; #120 pxl_in = 83; #120 pxl_in = 83; #120 pxl_in = 81; #120 pxl_in = 80; #120 pxl_in = 80; #120 pxl_in = 81; #120 pxl_in = 80; #120 pxl_in = 78; #120 pxl_in = 77; #120 pxl_in = 77; #120 pxl_in = 77; #120 pxl_in = 77; #120 pxl_in = 77; #120 pxl_in = 78; #120 pxl_in = 76; #120 pxl_in = 75; #120 pxl_in = 80; #120 pxl_in = 82; #120 pxl_in = 79; #120 pxl_in = 78; #120 pxl_in = 80; #120 pxl_in = 79; #120 pxl_in = 79; #120 pxl_in = 81; #120 pxl_in = 81; #120 pxl_in = 77; #120 pxl_in = 76; #120 pxl_in = 77; #120 pxl_in = 76; #120 pxl_in = 75; #120 pxl_in = 78; #120 pxl_in = 79; #120 pxl_in = 80; #120 pxl_in = 80; #120 pxl_in = 81; #120 pxl_in = 80; #120 pxl_in = 80; #120 pxl_in = 80; #120 pxl_in = 85; #120 pxl_in = 82; #120 pxl_in = 80; #120 pxl_in = 79; #120 pxl_in = 80; #120 pxl_in = 83; #120 pxl_in = 83; #120 pxl_in = 81; #120 pxl_in = 83; #120 pxl_in = 86; #120 pxl_in = 86; #120 pxl_in = 89; #120 pxl_in = 92; #120 pxl_in = 91; #120 pxl_in = 92; #120 pxl_in = 93; #120 pxl_in = 92; #120 pxl_in = 92; #120 pxl_in = 93; #120 pxl_in = 93; #120 pxl_in = 94; #120 pxl_in = 94; #120 pxl_in = 95; #120 pxl_in = 96; #120 pxl_in = 92; #120 pxl_in = 92; #120 pxl_in = 94; #120 pxl_in = 95; #120 pxl_in = 95; #120 pxl_in = 94; #120 pxl_in = 96; #120 pxl_in = 97; #120 pxl_in = 98; #120 pxl_in = 99; #120 pxl_in = 101; #120 pxl_in = 103; #120 pxl_in = 102; #120 pxl_in = 101; #120 pxl_in = 100; #120 pxl_in = 101; #120 pxl_in = 104; #120 pxl_in = 104; #120 pxl_in = 103; #120 pxl_in = 104; #120 pxl_in = 105; #120 pxl_in = 105; #120 pxl_in = 106; #120 pxl_in = 106; #120 pxl_in = 111; #120 pxl_in = 111; #120 pxl_in = 110; #120 pxl_in = 108; #120 pxl_in = 107; #120 pxl_in = 108; #120 pxl_in = 110; #120 pxl_in = 111; #120 pxl_in = 110; #120 pxl_in = 114; #120 pxl_in = 116; #120 pxl_in = 117; #120 pxl_in = 118; #120 pxl_in = 119; #120 pxl_in = 120; #120 pxl_in = 119; #120 pxl_in = 118; #120 pxl_in = 119; #120 pxl_in = 120; #120 pxl_in = 121; #120 pxl_in = 122; #120 pxl_in = 122; #120 pxl_in = 124; #120 pxl_in = 126; #120 pxl_in = 123; #120 pxl_in = 127; #120 pxl_in = 130; #120 pxl_in = 128; #120 pxl_in = 127; #120 pxl_in = 126; #120 pxl_in = 127; #120 pxl_in = 126; #120 pxl_in = 130; #120 pxl_in = 131; #120 pxl_in = 132; #120 pxl_in = 133; #120 pxl_in = 134; #120 pxl_in = 134; #120 pxl_in = 134; #120 pxl_in = 133; #120 pxl_in = 133; #120 pxl_in = 135; #120 pxl_in = 136; #120 pxl_in = 136; #120 pxl_in = 135; #120 pxl_in = 134; #120 pxl_in = 134; #120 pxl_in = 134; #120 pxl_in = 133; #120 pxl_in = 133; #120 pxl_in = 134; #120 pxl_in = 135; #120 pxl_in = 134; #120 pxl_in = 134; #120 pxl_in = 132; #120 pxl_in = 131; #120 pxl_in = 131; #120 pxl_in = 132; #120 pxl_in = 136; #120 pxl_in = 136; #120 pxl_in = 134; #120 pxl_in = 134; #120 pxl_in = 135; #120 pxl_in = 134; #120 pxl_in = 134; #120 pxl_in = 136; #120 pxl_in = 135; #120 pxl_in = 131; #120 pxl_in = 130; #120 pxl_in = 132; #120 pxl_in = 129; #120 pxl_in = 125; 
		#120 pxl_in = 78; #120 pxl_in = 79; #120 pxl_in = 78; #120 pxl_in = 74; #120 pxl_in = 79; #120 pxl_in = 82; #120 pxl_in = 86; #120 pxl_in = 81; #120 pxl_in = 86; #120 pxl_in = 81; #120 pxl_in = 78; #120 pxl_in = 78; #120 pxl_in = 84; #120 pxl_in = 87; #120 pxl_in = 86; #120 pxl_in = 87; #120 pxl_in = 84; #120 pxl_in = 84; #120 pxl_in = 82; #120 pxl_in = 83; #120 pxl_in = 85; #120 pxl_in = 85; #120 pxl_in = 83; #120 pxl_in = 83; #120 pxl_in = 82; #120 pxl_in = 84; #120 pxl_in = 84; #120 pxl_in = 83; #120 pxl_in = 82; #120 pxl_in = 83; #120 pxl_in = 85; #120 pxl_in = 84; #120 pxl_in = 89; #120 pxl_in = 85; #120 pxl_in = 84; #120 pxl_in = 85; #120 pxl_in = 84; #120 pxl_in = 84; #120 pxl_in = 84; #120 pxl_in = 84; #120 pxl_in = 83; #120 pxl_in = 83; #120 pxl_in = 84; #120 pxl_in = 86; #120 pxl_in = 87; #120 pxl_in = 86; #120 pxl_in = 87; #120 pxl_in = 88; #120 pxl_in = 84; #120 pxl_in = 82; #120 pxl_in = 80; #120 pxl_in = 80; #120 pxl_in = 80; #120 pxl_in = 80; #120 pxl_in = 81; #120 pxl_in = 82; #120 pxl_in = 81; #120 pxl_in = 77; #120 pxl_in = 80; #120 pxl_in = 85; #120 pxl_in = 85; #120 pxl_in = 84; #120 pxl_in = 84; #120 pxl_in = 85; #120 pxl_in = 82; #120 pxl_in = 83; #120 pxl_in = 84; #120 pxl_in = 83; #120 pxl_in = 83; #120 pxl_in = 82; #120 pxl_in = 82; #120 pxl_in = 82; #120 pxl_in = 84; #120 pxl_in = 84; #120 pxl_in = 84; #120 pxl_in = 85; #120 pxl_in = 86; #120 pxl_in = 86; #120 pxl_in = 87; #120 pxl_in = 87; #120 pxl_in = 94; #120 pxl_in = 89; #120 pxl_in = 84; #120 pxl_in = 86; #120 pxl_in = 88; #120 pxl_in = 87; #120 pxl_in = 88; #120 pxl_in = 90; #120 pxl_in = 87; #120 pxl_in = 91; #120 pxl_in = 92; #120 pxl_in = 94; #120 pxl_in = 94; #120 pxl_in = 96; #120 pxl_in = 95; #120 pxl_in = 97; #120 pxl_in = 98; #120 pxl_in = 98; #120 pxl_in = 97; #120 pxl_in = 96; #120 pxl_in = 96; #120 pxl_in = 98; #120 pxl_in = 101; #120 pxl_in = 102; #120 pxl_in = 100; #120 pxl_in = 99; #120 pxl_in = 100; #120 pxl_in = 100; #120 pxl_in = 101; #120 pxl_in = 102; #120 pxl_in = 101; #120 pxl_in = 100; #120 pxl_in = 104; #120 pxl_in = 107; #120 pxl_in = 110; #120 pxl_in = 110; #120 pxl_in = 111; #120 pxl_in = 110; #120 pxl_in = 109; #120 pxl_in = 108; #120 pxl_in = 108; #120 pxl_in = 108; #120 pxl_in = 109; #120 pxl_in = 110; #120 pxl_in = 110; #120 pxl_in = 111; #120 pxl_in = 111; #120 pxl_in = 108; #120 pxl_in = 112; #120 pxl_in = 113; #120 pxl_in = 112; #120 pxl_in = 110; #120 pxl_in = 110; #120 pxl_in = 113; #120 pxl_in = 114; #120 pxl_in = 114; #120 pxl_in = 114; #120 pxl_in = 117; #120 pxl_in = 119; #120 pxl_in = 120; #120 pxl_in = 120; #120 pxl_in = 121; #120 pxl_in = 122; #120 pxl_in = 124; #120 pxl_in = 121; #120 pxl_in = 122; #120 pxl_in = 123; #120 pxl_in = 125; #120 pxl_in = 125; #120 pxl_in = 126; #120 pxl_in = 129; #120 pxl_in = 131; #120 pxl_in = 130; #120 pxl_in = 132; #120 pxl_in = 135; #120 pxl_in = 136; #120 pxl_in = 133; #120 pxl_in = 133; #120 pxl_in = 133; #120 pxl_in = 131; #120 pxl_in = 139; #120 pxl_in = 140; #120 pxl_in = 143; #120 pxl_in = 142; #120 pxl_in = 141; #120 pxl_in = 141; #120 pxl_in = 142; #120 pxl_in = 145; #120 pxl_in = 142; #120 pxl_in = 143; #120 pxl_in = 143; #120 pxl_in = 141; #120 pxl_in = 138; #120 pxl_in = 139; #120 pxl_in = 141; #120 pxl_in = 143; #120 pxl_in = 148; #120 pxl_in = 149; #120 pxl_in = 150; #120 pxl_in = 150; #120 pxl_in = 151; #120 pxl_in = 151; #120 pxl_in = 150; #120 pxl_in = 148; #120 pxl_in = 150; #120 pxl_in = 150; #120 pxl_in = 152; #120 pxl_in = 151; #120 pxl_in = 149; #120 pxl_in = 148; #120 pxl_in = 150; #120 pxl_in = 152; #120 pxl_in = 149; #120 pxl_in = 150; #120 pxl_in = 150; #120 pxl_in = 149; #120 pxl_in = 149; #120 pxl_in = 147; #120 pxl_in = 144; #120 pxl_in = 141; 
		
		#100;
	
	end 
	always #10 clk = ~ clk;
      
endmodule