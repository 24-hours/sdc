from PIL import Image
import numpy as np

def conv(image, kernel):
	result = []
	k = len(kernel)
	ker_rep = 6

	for j in range(0, len(image) - k + 1):
		temp = []
		for i in range(0, len(image[0]) - k + 1):
			multiplier = image[j:k + j,i:k + i]
			temp.append(np.sum(multiplier * kernel))

		result.append(temp)

	return result

def conv_multiple(image, kernel_set):
	result = []
	for kernel in kernel_set:
		result.append(conv(image, kernel))

	return result

def gen_script(image, kernel_set):
	results = conv_multiple(image, kernel_set)
	f_image = image.flatten()

	f = open('../sdc-xilinx/source/tests/conv_l1_test.v', 'w+')

	f.write("// Python generated script \n\n")
	f.write("""
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
      reset = 0; 		\n\n""")

	f.write("/*\n\n")
	f.write("Image: " + "\n")
	f.write('\n'.join('\t'.join('%d' %x for x in y) for y in image) + "\n\n")

	f.write("Kernels: " + "\n")
	for kernel in kernel_set:
		f.write('\n'.join('\t'.join('%d' %x for x in y) for y in kernel) + "\n\n")

	f.write("Results: " + "\n")
	for result in results:
		f.write('\n'.join('\t'.join('%d' %x for x in y) for y in result) + "\n\n")
	f.write("*/\n\n")

	for i in range(0, len(f_image)):
		f.write("// Pixel no. : " + str(i) + "\n")

		for kernel in kernel_set:
			f.write("#20 pxl_in = " + str(f_image[i]) + ";\n")
			
			for k in range(0, len(kernel)):
				for l in range(0, len(kernel[0])):
					f.write("kernel_"+str(k)+str(l)+" = "+str(kernel[k, l]) + "; ")		
				f.write("\n")
		f.write("\n\n")

	f.write("// End of Script \n")
	f.write("""	
	end 
	always #10 clk = ~ clk;
      
endmodule""")

	f.close()


image = Image.open('driving_dataset/0.jpg')
image_resized = np.asarray(image.resize((200, 66), Image.ANTIALIAS))
image_resized = image_resized[:,:,0]

kernel_0 =  np.asarray(np.matrix("1 0 1; 1 0 0; 0 1 0")) 
kernel_1 =  np.asarray(np.matrix("0 0 1; 1 1 0; 0 1 1")) 
kernel_2 =  np.asarray(np.matrix("0 0 1; 1 1 0; 0 1 0")) 
kernel_3 =  np.asarray(np.matrix("0 0 1; 1 1 0; 0 1 0")) 
kernel_4 =  np.asarray(np.matrix("0 0 1; 1 0 1; 0 1 0")) 
kernel_5 =  np.asarray(np.matrix("0 0 1; 1 0 0; 1 1 0")) 

kernel_set = [kernel_0, kernel_1, kernel_2, kernel_3, kernel_4, kernel_5]
gen_script(image_resized, kernel_set)
