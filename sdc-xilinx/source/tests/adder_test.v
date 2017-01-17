`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:49:20 01/17/2017
// Design Name:   adder
// Module Name:   C:/Dev/Projects/sdc/sdc-xilinx/source/tests/adder_test.v
// Project Name:  sdc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_test;

	// Inputs
	reg [31:0] input_a;
	reg [31:0] input_b;
	reg input_a_stb;
	reg input_b_stb;
	reg output_z_ack;
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] output_z;
	wire output_z_stb;
	wire input_a_ack;
	wire input_b_ack;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.input_a(input_a), 
		.input_b(input_b), 
		.input_a_stb(input_a_stb), 
		.input_b_stb(input_b_stb), 
		.output_z_ack(output_z_ack), 
		.clk(clk), 
		.rst(rst), 
		.output_z(output_z), 
		.output_z_stb(output_z_stb), 
		.input_a_ack(input_a_ack), 
		.input_b_ack(input_b_ack)
	);

	initial begin
		// Initialize Inputs
		input_a = 0;
		input_b = 0;
		input_a_stb = 0;
		input_b_stb = 0;
		output_z_ack = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 0;
		
		input_a = 32'b00101101011101100100101001100101;
		input_b = 32'b00101100011011000011001111011010;
		input_a_stb = 1;
		input_b_stb = 1;
		#20;
		
	end
	
	always 
	begin
		#5 clk = ~ clk;
		input_a_stb = ~ input_a_stb;
		input_b_stb = ~ input_b_stb;
		if(output_z_stb == 1)
			output_z_ack = 1;
		else 
			output_z_ack = 0;
   end
		
endmodule

