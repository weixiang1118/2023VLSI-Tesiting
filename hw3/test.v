`timescale 1ns/1ps

module test ;

reg clk,cs,we,rst;
reg [1:0] datain;
reg [3:0] addr;
wire [1:0] dataout;

parameter cycle = 10;

SYNSRAM #(.ADDR_WIDTH(4),
		.DATA_WIDTH(2),
		.DATA_DEPTH(16))
		sram(.clk(clk),.cs(cs),.we(we),.DataIn(datain),.Address(addr),.DataOut(dataout));
//cs=0 we=0 write
//cs=0 we=1 read
always #(cycle/2) clk = ~clk;
initial begin
	$fsdbDumpfile("sram_rtl.fsdb");
	$fsdbDumpvars;
	clk=0;
	cs=0;
	//case1 data=0 addr=0
	addr=4'b0;
	datain=2'd0;
	we=0;
	#20
	addr=4'd0;
	we=1;
	#20
	
	//case2  data=3 addr=3
	addr=4'd3;
	datain=2'd3;
	we=0;
	#20
	addr=4'd3;
	we=1;
	#20
	
	//case2  data=2 addr=2
	addr=4'd2;
	datain=2'd2;
	we=0;
	#20
	addr=4'd2;
	we=1;
	#20
	
	//case3  data=1 addr=15
	addr=4'd15;
	datain=2'd1;
	we=0;
	#20
	addr=4'd15;
	we=1;
	#20
	//rst=1;
	//#(cycle *1) rst=0;
	$finish ;
end


/*always@(negedge clk) 
begin
	if(out_valid) 
		if(Q==ansq && R==ansr)
		begin
			$display ();
			$display ("///////////////////////////////////////////");
			$display ("////////////// Successful !! //////////////");
			$display ("///////////////////////////////////////////");	
			$display ();
			//ansc=ansc+1;
		end
		else
		begin
			$display ("\n Correct_Answer: ", ansq, ansr,  ",  YOUR_DATA: ", Q,R  );
			$display ();
			$display ("////////////// Error !!!! //////////////");
			$display ();
			//ansc=ansc+1;
		end
end*/

endmodule