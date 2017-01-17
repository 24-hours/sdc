`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:06:04 01/17/2017
// Design Name:   floating_test
// Module Name:   C:/Dev/Projects/sdc/sdc-xilinx/source/tests/floating_test_test.v
// Project Name:  sdc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: floating_test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module floating_test_test;

	// Inputs
	reg [31:0] data_in_1;
	reg [31:0] data_in_2;
	reg [31:0] data_in_3;

	// Outputs
	wire [31:0] data_out_1;
	wire [31:0] data_out_2;

	// Instantiate the Unit Under Test (UUT)
	floating_test uut (
		.data_in_1(data_in_1), 
		.data_in_2(data_in_2), 
		.data_in_3(data_in_3), 
		.data_out_1(data_out_1), 
		.data_out_2(data_out_2)
	);

	initial begin
		// Initialize Inputs
		data_in_1 = 0;
		data_in_2 = 0;
		data_in_3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

