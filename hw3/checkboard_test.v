`timescale 1ns/1ps

module checkboard_test;

	// Testbench inputs
	reg clk;
	reg reset;
	reg [1:0] normal;
	reg mode;
	  
	// Testbench outputs
	wire pass_or_fail;
	wire test_done;

	parameter cycle = 10;
	//parameter addr_width = 4;
	//parameter data_width = 4;
	//parameter data_depth = 16;

	checkboard checkboard  (
		.clk(clk),
		.reset(reset),
		.normal(normal),
		.mode(mode),
		.pass_or_fail(pass_or_fail),
		.test_done(test_done)
	  );
	  
	always #(cycle/2) clk = ~clk;
	
	initial begin
		$fsdbDumpfile("checkboard_rtl.fsdb");
		$fsdbDumpvars;
		clk = 0;
		reset = 1;
		normal = 2'b00;
		mode = 1;
		#15
		
		//test
		reset = 0;
		//mode = 1;
		#(5000)
		
		$finish;
	
	end
	
	always@(*)begin
		if(test_done==1)
			$finish;
	end
endmodule
	
	
	