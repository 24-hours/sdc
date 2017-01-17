`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:05 01/16/2017
// Design Name:   ram
// Module Name:   C:/Dev/Projects/sdc/sdc-xilinx/source/tests/ram_test.v
// Project Name:  sdc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram_test;

	// Inputs
	reg clk;
	reg we;
	reg [5:0] addr;
	reg [7:0] din;

	// Outputs
	wire [7:0] dout;

	// Instantiate the Unit Under Test (UUT)
	rammod uut (
		.clk(clk), 
		.we(we), 
		.addr(addr), 
		.din(din), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		we = 0;
		addr = 0;
		din = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		we=1'b1;
		
		#10 addr=5'b00001;din=4'b0001;
		#10 addr=5'b00010;din=4'b0010;
		#10 addr=5'b00011;din=4'b0011;
		#10 addr=5'b00100;din=4'b0100;
		#10 addr=5'b00101;din=4'b0101;
		#10 addr=5'bxxxxx;din=4'bxxxx;

		#10 we=1'b0;

		#10 addr=5'b00001;
		#10 addr=5'b00010;
		#10 addr=5'b00011;
		#10 addr=5'b00100;
		#10 addr=5'b00101;
	
	end always #10 clk = ~clk;
      
endmodule

