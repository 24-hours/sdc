`timescale 1ns / 1ps

module conv_l1(
    	input clk,
    	input reset,
    	input [7:0] pxl_in,
		
		// 3*3 kernel values
		input [7:0] kernel_00, input [7:0] kernel_01, input [7:0] kernel_02,
		input [7:0] kernel_10, input [7:0] kernel_11, input [7:0] kernel_12,
		input [7:0] kernel_20, input [7:0] kernel_21, input [7:0] kernel_22,
		
		// Outputs against each MAC register and a shift register after each row
		output [15:0] rline00, output [15:0] rline01, output [15:0] rline02, output [15:0] rlines1,
		output [15:0] rline10, output [15:0] rline11, output [15:0] rline12, output [15:0] rlines2,
		output [15:0] rline20, output [15:0] rline21, output [15:0] rline22,
    	output [15:0] pxl_out,
		
		output valid
    );
 
	wire [15:0] wire00; wire [15:0] wire01; wire [15:0] wire02;
	wire [15:0] wire10; wire [15:0] wire11; wire [15:0] wire12;
	wire [15:0] wire20; wire [15:0] wire21; wire [15:0] wire22;

	// Row : 1
	
	mac mac00(pxl_in, kernel_00, 0, wire00); 
	shift_mac_l1 sm00(clk, wire00, rline00);
	
	mac mac01(pxl_in, kernel_01, rline00, wire01); 
	shift_mac_l1 sm01(clk, wire01, rline01);

	mac mac02(pxl_in, kernel_02, rline01, wire02); 
	shift_mac_l1 sm02(clk, wire02, rline02);

	shift_row_l1 sr1(clk, rline02, rlines1);

	// Row : 2
	
	mac mac10(pxl_in, kernel_10, rlines1, wire10); 
	shift_mac_l1 sm10(clk, wire10, rline10);

	mac mac11(pxl_in, kernel_11, rline10, wire11); 
	shift_mac_l1 sm11(clk, wire11, rline11);

	mac mac12(pxl_in, kernel_12, rline11, wire12); 
	shift_mac_l1 sm12(clk, wire12, rline12);

	shift_row_l1 sr2(clk, rline12, rlines2);

	// Row : 3
	
	mac mac20(pxl_in, kernel_20, rlines2, wire20); 
	shift_mac_l1 sm20(clk, wire20, rline20);

	mac mac21(pxl_in, kernel_21, rline20, wire21); 
	shift_mac_l1 sm21(clk, wire21, rline21);

	mac mac22(pxl_in, kernel_22, rline21, wire22); 
	//shift_mac_l1 sm22(clk, wire22, rline22);

	assign pxl_out = wire22;//rline22;
	
	reg [8:0] counter1;
	reg [4:0] counter2;
	reg temp;

	always @(posedge clk) begin
		if (counter2 < 2) begin
			counter2<=0;
			temp<=0;
			counter1<=65; end
		else if (counter1 < 65) begin
			counter1 <= counter1 + 1;
			temp <= 0; end
		else if (counter1 < 77) begin
			counter1 <= counter1 + 1;
			temp <= 1; end
		else if (counter1 < 90) begin
			counter1 <= counter1 + 1;
			temp <= 0; end
		else if (counter1 > 89) begin
			temp<=0;
			counter1<=65;
			counter2<=counter2+1; end
		else begin
			temp <= 1;
			counter1 <= counter1 + 1;
			counter2 <= counter2 + 1;
			counter1 <= 0;
			counter2 <= 0; 
			end
	end


	assign valid = temp;


endmodule

