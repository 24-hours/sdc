// Testbench
module shift_testbench;

  //Inputs
  reg clk;
  reg [15:0] data_in;
  wire [15:0] data_out;
  
  shift_mac_l1 uut(
	.clk(clk),
	.data_in(data_in),
	.data_out(data_out)
	);
	
  
  initial begin
    	clk = 0;
    	data_in = 100;
    
    	#50;
		
    	data_in = 10;
	#50;

	
    	data_in = 30;
	#50;
	
    	data_in = 21;
	#80;

	data_in = 110;
	#70;
	
    end
	
    always #10 clk = ~ clk;
      
endmodule