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

def conv_multiple(images, kernel_sets):
	result = []
	for kernel_set in kernel_sets:
		temp_result = []
		for index, kernel in enumerate(kernel_set):
			temp_result.append(conv(images[index], kernel))
		res = np.zeros(np.shape(temp_result[0]))
		for temp in temp_result:
			res = np.add(res, temp)
		
		result.append(res)

	return result

def gen_script(images, kernel_sets):
	results_list = conv_multiple(images, kernel_sets)
	f_image = []

	for image in images:
		f_image.append(image.flatten())

	f = open('../sdc-xilinx/source/tests/cnn_l1_test.v', 'w+')

	f.write("// Python generated script \n\n")
	f.write("""
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:57:58 01/15/2017
// Design Name:   cnn_l1
// Module Name:   C:/Dev/Projects/sdc/sdc-xilinx/source/tests/cnn_l1_test.v
// Project Name:  sdc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cnn_l1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cnn_l1_test;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] pxl_0;
	reg [7:0] pxl_1;
	reg [7:0] pxl_2;
	reg [7:0] kernel_0_00;
	reg [7:0] kernel_0_01;
	reg [7:0] kernel_0_02;
	reg [7:0] kernel_0_10;
	reg [7:0] kernel_0_11;
	reg [7:0] kernel_0_12;
	reg [7:0] kernel_0_20;
	reg [7:0] kernel_0_21;
	reg [7:0] kernel_0_22;
	reg [7:0] kernel_1_00;
	reg [7:0] kernel_1_01;
	reg [7:0] kernel_1_02;
	reg [7:0] kernel_1_10;
	reg [7:0] kernel_1_11;
	reg [7:0] kernel_1_12;
	reg [7:0] kernel_1_20;
	reg [7:0] kernel_1_21;
	reg [7:0] kernel_1_22;
	reg [7:0] kernel_2_00;
	reg [7:0] kernel_2_01;
	reg [7:0] kernel_2_02;
	reg [7:0] kernel_2_10;
	reg [7:0] kernel_2_11;
	reg [7:0] kernel_2_12;
	reg [7:0] kernel_2_20;
	reg [7:0] kernel_2_21;
	reg [7:0] kernel_2_22;

	// Outputs
	wire [15:0] pxl_out_0;
	wire [15:0] pxl_out_1;
	wire [15:0] pxl_out_2;
	wire [15:0] pxl_out; wire valid;

	// Instantiate the Unit Under Test (UUT)
	cnn_l1 uut (
		.clk(clk), 
		.reset(reset), 
		.pxl_0(pxl_0), 
		.pxl_1(pxl_1), 
		.pxl_2(pxl_2), 
		.kernel_0_00(kernel_0_00), 
		.kernel_0_01(kernel_0_01), 
		.kernel_0_02(kernel_0_02), 
		.kernel_0_10(kernel_0_10), 
		.kernel_0_11(kernel_0_11), 
		.kernel_0_12(kernel_0_12), 
		.kernel_0_20(kernel_0_20), 
		.kernel_0_21(kernel_0_21), 
		.kernel_0_22(kernel_0_22), 
		.kernel_1_00(kernel_1_00), 
		.kernel_1_01(kernel_1_01), 
		.kernel_1_02(kernel_1_02), 
		.kernel_1_10(kernel_1_10), 
		.kernel_1_11(kernel_1_11), 
		.kernel_1_12(kernel_1_12), 
		.kernel_1_20(kernel_1_20), 
		.kernel_1_21(kernel_1_21), 
		.kernel_1_22(kernel_1_22), 
		.kernel_2_00(kernel_2_00), 
		.kernel_2_01(kernel_2_01), 
		.kernel_2_02(kernel_2_02), 
		.kernel_2_10(kernel_2_10), 
		.kernel_2_11(kernel_2_11), 
		.kernel_2_12(kernel_2_12), 
		.kernel_2_20(kernel_2_20), 
		.kernel_2_21(kernel_2_21), 
		.kernel_2_22(kernel_2_22), 
		.pxl_out_0(pxl_out_0), 
		.pxl_out_1(pxl_out_1), 
		.pxl_out_2(pxl_out_2), 
		.pxl_out(pxl_out), 
		.valid(valid)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		
		// Wait 100 ns for global reset to finish
		#110;
      reset = 0; 				\n\n""")

	f.write("/*\n\n")
	f.write("Image: " + "\n")
	f.write('\n'.join('\t'.join('%d' %x for x in y) for y in image) + "\n\n")

	f.write("Kernels: " + "\n")
	for kernel_set in kernel_sets:
		for kernel in kernel_set:
			f.write('\n'.join('\t'.join('%d' %x for x in y) for y in kernel) + "\n\n")

	f.write("Results: " + "\n")
	for index, results in enumerate(results_list):
		f.write("Set number:" + str(index) + "\n")
		f.write('\n'.join('\t'.join('%d' %x for x in y) for y in results) + "\n\n")
	f.write("*/\n\n")

	for i in range(0, len(f_image[0])):
		f.write("// Pixel no. : " + str(i) + "\n")

		for index, kernel_set in enumerate(kernel_sets):
			f.write("#20 pxl_0 = " + str(f_image[0][i]) + "; pxl_1 = "  + str(f_image[1][i]) + "; pxl_2 = "  + str(f_image[2][i]) + "; \n")

			for index1, kernel in enumerate(kernel_set):	
				for k in range(0, len(kernel)):
					for l in range(0, len(kernel[0])):
						f.write("kernel_"+str(index1)+"_"+str(k)+str(l)+" = "+str(kernel[k, l]) + "; ")		
					f.write("\n")
			f.write("\n")
		f.write("\n")

	f.write("// End of Script \n")
	f.write("""	
	end 
	always #10 clk = ~ clk;
      
endmodule""")

	f.close()

	set_row_shift(len(images[0][0]) - len(kernel_sets[0][0][0]))

def set_row_shift(num):
	with open('../sdc-xilinx/source/modules/shift_row_l1.v', 'r+') as myfile:
	    data=myfile.read()
	    first_half = data.split("DEPTH = ")[0]
	    second_half = data.split("DEPTH = ")[1]
	    to_replace = second_half.split("// ENDMARK")[0]
	    #print(second_half)
	    second_half = '\n// ENDMARK'.join([str(num * 4) + ";", second_half.split("// ENDMARK")[1]])
	    #print(second_half)
	    file_data = 'DEPTH = '.join([first_half, second_half])
	    myfile.close()

	with open('../sdc-xilinx/source/modules/shift_row_l1.v', 'w') as myfile:
		myfile.write(file_data)
		myfile.close()

#image = Image.open('driving_dataset/0.jpg')
#image_resized = np.asarray(image.resize((200, 66), Image.ANTIALIAS))

#input_matrix = image_resized[:,:,0]

input_image = np.asarray(np.matrix("1 2 3 4;\
									 1 2 3 4;\
									 1 2 3 4;\
									 1 2 3 4"))
"""

input_image = np.asarray(np.matrix("1 2 3 4;\
									1 2 3 4;\
									1 2 3 4"))
"""
input_matrix = [input_image, input_image, input_image]

kernel_0_0 =  np.asarray(np.matrix("1 0 1; 1 0 0; 0 1 0"))
kernel_0_1 =  np.asarray(np.matrix("1 0 1; 1 0 0; 0 1 0"))
kernel_0_2 =  np.asarray(np.matrix("1 0 1; 1 0 0; 0 1 0")) 

kernel_1_0 =  np.asarray(np.matrix("0 0 1; 1 1 0; 0 1 1"))
kernel_1_1 =  np.asarray(np.matrix("0 0 1; 1 1 0; 0 1 1"))
kernel_1_2 =  np.asarray(np.matrix("0 0 1; 1 1 0; 0 1 1")) 

kernel_2_0 =  np.asarray(np.matrix("0 0 1; 1 1 0; 0 1 0")) 
kernel_2_1 =  np.asarray(np.matrix("0 0 1; 1 1 0; 0 1 0"))
kernel_2_2 =  np.asarray(np.matrix("0 0 1; 1 1 0; 0 1 0"))

kernel_3_0 =  np.asarray(np.matrix("0 0 1; 1 1 0; 0 1 0"))
kernel_3_1 =  np.asarray(np.matrix("0 0 1; 1 1 0; 0 1 0"))
kernel_3_2 =  np.asarray(np.matrix("0 0 1; 1 1 0; 0 1 0")) 


kernel_set_0 = [kernel_0_0, kernel_0_1, kernel_0_2]
kernel_set_1 = [kernel_1_0, kernel_1_1, kernel_1_2]
kernel_set_2 = [kernel_2_0, kernel_2_1, kernel_2_2]
kernel_set_3 = [kernel_3_0, kernel_3_1, kernel_3_2]

kernel_sets = [kernel_set_0, kernel_set_1, kernel_set_2, kernel_set_3]

gen_script(input_matrix, kernel_sets)

#print(conv(input_matrix[0], kernel_0_0))
