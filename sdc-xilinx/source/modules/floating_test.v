`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:20:30 01/15/2017
// Design Name:   floating_point
// Module Name:   C:/Dev/Projects/sdc/sdc-xilinx/source/modules/floating_test.v
// Project Name:  sdc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: floating_point
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module floating_test;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg [15:0] c;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	floating_point uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 2_87;
		b = 2_57;
		c = 0_23;
        
		// Add stimulus here

	end
      
endmodule

